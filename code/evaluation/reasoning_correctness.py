import argparse
import json
import re
import subprocess
import tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, List, Tuple, Set
from code.evaluation.predicate_correctness import render_ascii_table


# Data helpers

@dataclass
class TargetPredicate:
    functor: str
    arity: int

    @property
    def label(self) -> str:
        return f"{self.functor}/{self.arity}"

TARGETS = (TargetPredicate(functor="state_aid", arity=2),)

@dataclass
class Stats:
    tp: int = 0
    fp: int = 0
    fn: int = 0

    @property
    def precision(self) -> float:
        return self.tp / (self.tp + self.fp) if (self.tp + self.fp) else 0.0

    @property
    def recall(self) -> float:
        return self.tp / (self.tp + self.fn) if (self.tp + self.fn) else 0.0

    @property
    def f1(self) -> float:
        if (self.precision + self.recall) == 0:
            return 0.0
        return 2 * self.precision * self.recall / (self.precision + self.recall)

    def add(self, other: "Stats") -> None:
        self.tp += other.tp
        self.fp += other.fp
        self.fn += other.fn


# Prolog interaction

def _write_temp_facts(lines: Iterable[str]) -> Path:
    """
    Write facts to a temporary .pl file and return its path.
    """
    tmp = tempfile.NamedTemporaryFile("w", delete=False, suffix=".pl", encoding="utf-8")
    try:
        for ln in lines:
            tmp.write(ln.rstrip() + "\n")
    finally:
        tmp.close()
    return Path(tmp.name)


def _extract_gold_facts(json_path: Path) -> List[str]:
    data = json.loads(json_path.read_text(encoding="utf-8"))
    return [str(raw).strip() for raw in data.get("gold_parsing", []) if str(raw).strip()]


def _run_prolog_query(rule_base: Path, facts_path: Path, target: TargetPredicate, timeout: int = 10) -> Set[Tuple]:
    """
    Run SWI-Prolog and return the set of derived tuples for the target predicate.
    """
    vars_ = [f"V{i}" for i in range(target.arity)]
    list_term = f"[{', '.join(vars_)}]"
    goal_pred = f"{target.functor}({', '.join(vars_)})"
    goal = (
        "use_module(library(http/json)), "
        f"findall({list_term}, {goal_pred}, Raw), "
        "sort(Raw, Sorted), "
        "json_write(current_output, Sorted)"
    )

    cmd = [
        "swipl",
        "-q",
        "-s",
        str(rule_base),
        "-s",
        str(facts_path),
        "-g",
        goal,
        "-t",
        "halt",
    ]

    try:
        proc = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=timeout,
            check=True,
        )
    except subprocess.CalledProcessError as exc:
        raise RuntimeError(
            f"Prolog query failed for {facts_path.name} on {target.label}: {exc.stderr}"
        ) from exc
    except subprocess.TimeoutExpired as exc:
        raise RuntimeError(
            f"Prolog query timed out for {facts_path.name} on {target.label}"
        ) from exc

    output = proc.stdout.strip()
    if not output:
        return set()

    try:
        parsed = json.loads(output)
    except json.JSONDecodeError as exc:
        raise RuntimeError(
            f"Could not parse Prolog output for {facts_path.name}: {output!r}"
        ) from exc

    as_tuples = set()
    for item in parsed:
        if isinstance(item, list):
            as_tuples.add(tuple(item))
        else:
            as_tuples.add((item,))
    return as_tuples


def _case_id_from_json(path: Path) -> str:
    m = re.search(r"case_(\d+)", path.stem)
    return f"case{m.group(1)}" if m else path.stem


# Evaluation core

def evaluate_case(
    json_path: Path,
    parsed_path: Path,
    rule_base: Path,
    timeout: int,
) -> Stats:
    """
    Evaluate a single case for the fixed target list (state_aid/2).
    """
    gold_facts = _extract_gold_facts(json_path)
    gold_tmp = _write_temp_facts(gold_facts)
    # If parsed facts are missing, fall back to an empty temp file so Prolog runs cleanly.
    if parsed_path.exists():
        parsed_tmp = parsed_path
    else:
        parsed_tmp = _write_temp_facts([])

    aggregate = Stats()
    target = TARGETS[0]
    try:
        gold_set = _run_prolog_query(rule_base, gold_tmp, target, timeout)
        parsed_set = _run_prolog_query(rule_base, parsed_tmp, target, timeout)

        # Single mode: count-based overlap (order/identity irrelevant)
        g_n = len(gold_set)
        p_n = len(parsed_set)
        tp = min(g_n, p_n)
        fn = max(g_n - p_n, 0)
        fp = max(p_n - g_n, 0)
        aggregate = Stats(tp=tp, fp=fp, fn=fn)
    finally:
        if gold_tmp.exists():
            gold_tmp.unlink(missing_ok=True)
        if not parsed_path.exists() and parsed_tmp.exists():
            parsed_tmp.unlink(missing_ok=True)

    return aggregate


# Markdown writers

def _fmt_pct(value: float) -> str:
    return f"{value*100:.1f}%"


def write_model_markdown(
    model_dir: Path,
    model_name: str,
    per_case_rows: List[Tuple[str, Stats]],
    overall: Stats,
    rule_base: Path,
) -> None:
    md_path = model_dir / f"{model_name}-evaluation.md"
    if md_path.exists():
        existing = md_path.read_text(encoding="utf-8").rstrip()
        md_lines = [existing, ""]
    else:
        md_lines = [f"# Evaluation for model `{model_name}`\n"]

    md_lines.append("## Reasoning evaluation (Prolog)\n")
    md_lines.append(
        f"_Rule base: `{rule_base.as_posix()}`. "
        f"Target compared against gold reasoning: {TARGETS[0].label}._\n"
    )

    # Per-case table
    headers = ["Case", "TP", "FP", "FN", "Prec", "Rec", "F1"]
    rows = []
    for case_id, stats in per_case_rows:
        rows.append(
            [
                case_id,
                stats.tp,
                stats.fp,
                stats.fn,
                _fmt_pct(stats.precision),
                _fmt_pct(stats.recall),
                _fmt_pct(stats.f1),
            ]
        )
    md_lines.append("### Per-case reasoning summary\n")
    md_lines.append("```text")
    md_lines.append(render_ascii_table(headers, rows, align_right={1, 2, 3, 4, 5, 6}))
    md_lines.append("```")

    # Overall summary
    md_lines.append("\n### Overall reasoning performance\n")
    overall_headers = ["TP", "FP", "FN", "Prec", "Rec", "F1"]
    overall_rows = [
        [
            overall.tp,
            overall.fp,
            overall.fn,
            _fmt_pct(overall.precision),
            _fmt_pct(overall.recall),
            _fmt_pct(overall.f1),
        ]
    ]
    md_lines.append("```text")
    md_lines.append(
        render_ascii_table(
            overall_headers, overall_rows, align_right={0, 1, 2, 3, 4, 5}
        )
    )
    md_lines.append("```")

    md_path.write_text("\n".join(md_lines) + "\n", encoding="utf-8")


def write_global_comparison(
    results_dir: Path, model_summaries: List[Tuple[str, Stats]]
) -> None:
    md_path = results_dir / "models_comparison.md"
    if md_path.exists():
        existing = md_path.read_text(encoding="utf-8").rstrip()
        md_lines = [existing, ""]
    else:
        md_lines = []

    headers = ["Model", "TP", "FP", "FN", "Prec", "Rec", "F1"]
    rows = []
    for model_name, stats in model_summaries:
        rows.append(
            [
                model_name,
                stats.tp,
                stats.fp,
                stats.fn,
                _fmt_pct(stats.precision),
                _fmt_pct(stats.recall),
                _fmt_pct(stats.f1),
            ]
        )

    md_lines.append("## Reasoning comparison (Prolog)")
    md_lines.append(
        "_Reasoning outputs compared to gold reasoning (rule base + gold facts)._"
    )
    md_lines.append("```text")
    md_lines.append(render_ascii_table(headers, rows, align_right={1, 2, 3, 4, 5, 6}))
    md_lines.append("```")

    md_path.write_text("\n".join(md_lines) + "\n", encoding="utf-8")

# CLI

def main():
    ap = argparse.ArgumentParser(
        description="Evaluate Prolog reasoning outputs for parsed vs gold facts."
    )
    ap.add_argument("--gold_dir", type=Path, default=Path("data/cases"))
    ap.add_argument("--results_dir", type=Path, required=True)
    ap.add_argument("--rule_base", type=Path, default=Path("data/rule_base_art_107/state_aid_107.pl"), help="Path to the Prolog rule base file.")
    ap.add_argument("--timeout", type=int, default=10, help="Per-query timeout in seconds for SWI-Prolog.")

    args = ap.parse_args()

    gold_files = [
        p
        for p in args.gold_dir.glob("case_*.json")
        if re.match(r"case_\d{2}\.json$", p.name)
    ]
    if not gold_files:
        raise SystemExit("No gold files found.")

    case_map = {_case_id_from_json(p): p for p in gold_files}

    model_summaries: List[Tuple[str, Stats]] = []

    for model_dir in sorted(args.results_dir.iterdir()):
        if not model_dir.is_dir():
            continue
        model_name = model_dir.name

        per_case_rows: List[Tuple[str, Stats]] = []
        overall = Stats()

        for case_id, gold_json in sorted(case_map.items()):
            parsed_path = model_dir / f"{case_id}_parsed.pl"
            agg = evaluate_case(
                gold_json,
                parsed_path,
                args.rule_base,
                args.timeout,
            )

            overall.add(agg)
            per_case_rows.append((case_id, agg))

        write_model_markdown(
            model_dir,
            model_name,
            per_case_rows,
            overall,
            args.rule_base,
        )
        model_summaries.append((model_name, overall))

    if model_summaries:
        write_global_comparison(args.results_dir, model_summaries)


if __name__ == "__main__":
    main()
