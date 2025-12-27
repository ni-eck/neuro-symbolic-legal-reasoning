# predicate_correctness.py

import argparse
import json
from pathlib import Path
from typing import Dict, List, Tuple, Any
from dataclasses import dataclass
from collections import defaultdict
import re
from code.parser.prolog_validation import parse_predicate_text

# DATA STRUCTURES
@dataclass
class Predicate:
    functor: str
    args: List[Any]


@dataclass
class CaseEvaluation:
    TP: int
    FP: int
    FN: int
    precision: float
    recall: float
    f1: float


@dataclass
class ModelSummary:
    model_name: str
    TP: int
    FP: int
    FN: int
    precision: float
    recall: float
    f1: float


# GOLD CASE LOADING
def load_gold_case(json_path: Path) -> Tuple[str, List[Predicate]]:
    """
    Load the gold predicate list from a JSON file.
    Returns:
        case_id: str
        predicates: List[Predicate]
    """
    data = json.loads(json_path.read_text(encoding="utf-8"))
    case_id = data["id"]

    gold_predicates: List[Predicate] = []

    for raw_predicate in data.get("gold_parsing", []):
        predicate_part = raw_predicate.split("%")[0].strip()
        if not predicate_part:
            continue

        functor, args = parse_predicate_text(predicate_part)
        gold_predicates.append(Predicate(functor=functor, args=args))

    return case_id, gold_predicates


# PARSED CASE LOADING
def load_parsed_case(pl_path: Path) -> List[Predicate]:
    """
    Load the LLM-parsed predicates from the .pl file.
    """
    parsed_predicates: List[Predicate] = []

    for raw_line in pl_path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("%"):
            continue

        if "%" in line:
            line = line.split("%", 1)[0].strip()

        if not line:
            continue

        functor, args = parse_predicate_text(line)
        parsed_predicates.append(Predicate(functor=functor, args=args))

    return parsed_predicates


# PREDICATE MATCHING LOGIC
def predicates_match(gold: Predicate, parsed: Predicate) -> bool:
    """
    Match rule:
        - same functor
        - same arity
        - numeric arguments must be exactly equal
        - non-numeric arguments always count as matching
    """
    if gold.functor != parsed.functor:
        return False

    if len(gold.args) != len(parsed.args):
        return False

    for gold_arg, parsed_arg in zip(gold.args, parsed.args):
        gold_is_num = isinstance(gold_arg, (int, float))
        parsed_is_num = isinstance(parsed_arg, (int, float))

        if gold_is_num and parsed_is_num:
            if float(gold_arg) != float(parsed_arg):
                return False
        else:
            # non-numeric → always treat as matching
            pass

    return True


# CASE EVALUATION
def evaluate_single_case(
    gold_predicates: List[Predicate],
    parsed_predicates: List[Predicate],
    predicate_aggregate: Dict[str, Dict[str, int]],
) -> CaseEvaluation:
    """
    Evaluate predicate-level TP/FP/FN for ONE case.
    Updates predicate_aggregate (across all cases) in-place.
    Returns:
        CaseEvaluation
    """
    TP = 0
    FN = 0
    parsed_used = [False] * len(parsed_predicates)

    # 1. Gold → Parsed matching (avoids double matching)
    for gold_pred in gold_predicates:
        functor = gold_pred.functor
        match_index = None

        for i, parsed_pred in enumerate(parsed_predicates):
            if parsed_used[i]:
                continue
            if predicates_match(gold_pred, parsed_pred):
                match_index = i
                break

        if match_index is not None:
            TP += 1
            parsed_used[match_index] = True
            predicate_aggregate[functor]["TP"] += 1
        else:
            FN += 1
            predicate_aggregate[functor]["FN"] += 1

    # 2. All leftover parsed preds → FP
    FP = 0
    for used, parsed_pred in zip(parsed_used, parsed_predicates):
        if not used:
            FP += 1
            functor = parsed_pred.functor
            predicate_aggregate[functor]["FP"] += 1

    # 3. Derived metrics
    precision = TP / (TP + FP) if (TP + FP) else 0.0
    recall    = TP / (TP + FN) if (TP + FN) else 0.0
    f1        = 2 * precision * recall / (precision + recall) if (precision + recall) else 0.0

    return CaseEvaluation(TP=TP, FP=FP, FN=FN, precision=precision, recall=recall, f1=f1)

def render_ascii_table(headers, rows, align_right=None):
    """
    Render a monospace ASCII table.
    headers: List[str]
    rows: List[List[Any]]
    align_right: set of column indices to right-align (default: all numeric)
    """
    if align_right is None:
        align_right = set()

    str_rows = [[str(c) for c in row] for row in rows]

    cols = list(zip(headers, *str_rows))
    widths = [max(len(cell) for cell in col) for col in cols]

    def fmt_row(row):
        out = []
        for i, (cell, w) in enumerate(zip(row, widths)):
            if i in align_right:
                out.append(cell.rjust(w))
            else:
                out.append(cell.ljust(w))
        return "  ".join(out)

    lines = [
        fmt_row(headers),
        "-" * len(fmt_row(headers))
    ]
    lines += [fmt_row(r) for r in str_rows]
    return "\n".join(lines)


# MARKDOWN WRITERS
def write_model_markdown(
    model_name: str,
    model_dir: Path,
    per_case_results: Dict[str, CaseEvaluation],
    predicate_aggregate: Dict[str, Dict[str, int]],
) -> ModelSummary:
    """
    Writes results/<model>/evaluation.md and returns ModelSummary.
    """
    md_lines = []
    md_lines.append(f"# Evaluation for model `{model_name}`\n")
    md_lines.append("## Predicate evaluation\n")
    md_lines.append(
        "_Predicates are matched on functor, arity, and numeric arguments only; "
        "string arguments and source citations are not considered in this section._\n"
    )

    # Per-case summary
    md_lines.append("### Per-case summary\n")

    headers = ["Case", "TP", "FP", "FN", "Prec", "Rec", "F1"]
    rows = []

    for case_id, stats in per_case_results.items():
        rows.append([
            case_id,
            stats.TP,
            stats.FP,
            stats.FN,
            f"{stats.precision*100:.1f}%",
            f"{stats.recall*100:.1f}%",
            f"{stats.f1*100:.1f}%"
        ])

    table = render_ascii_table(
        headers,
        rows,
        align_right={1, 2, 3, 4, 5, 6}
    )

    md_lines.append("```text")
    md_lines.append(table)
    md_lines.append("```")

    # Per-predicate summary
    md_lines.append("\n### Per-predicate summary (all cases)\n")

    headers = ["Predicate", "TP", "FP", "FN", "Prec", "Rec"]
    rows = []

    for functor, counts in sorted(
        predicate_aggregate.items(),
        key=lambda x: x[1]["FP"],
        reverse=True
    ):
        TP = counts["TP"]
        FP = counts["FP"]
        FN = counts["FN"]

        precision = TP / (TP + FP) if (TP + FP) else 0.0
        recall    = TP / (TP + FN) if (TP + FN) else 0.0

        rows.append([
            functor,
            TP,
            FP,
            FN,
            f"{precision*100:.1f}%",
            f"{recall*100:.1f}%"
        ])

    table = render_ascii_table(
        headers,
        rows,
        align_right={1, 2, 3, 4, 5}
    )

    md_lines.append("```text")
    md_lines.append(table)
    md_lines.append("```")

    # Overall model performance
    total_TP = sum(s.TP for s in per_case_results.values())
    total_FP = sum(s.FP for s in per_case_results.values())
    total_FN = sum(s.FN for s in per_case_results.values())

    precision = total_TP / (total_TP + total_FP) if (total_TP + total_FP) else 0.0
    recall    = total_TP / (total_TP + total_FN) if (total_TP + total_FN) else 0.0
    f1        = 2 * precision * recall / (precision + recall) if (precision + recall) else 0.0

    md_lines.append("\n### Overall predicate performance\n")

    headers = ["TP", "FP", "FN", "Prec", "Rec", "F1"]
    rows = [[
        total_TP,
        total_FP,
        total_FN,
        f"{precision*100:.1f}%",
        f"{recall*100:.1f}%",
        f"{f1*100:.1f}%"
    ]]

    table = render_ascii_table(
        headers,
        rows,
        align_right={0, 1, 2, 3, 4, 5}
    )

    md_lines.append("```text")
    md_lines.append(table)
    md_lines.append("```")

    # Write file
    (model_dir / f"{model_name}-evaluation.md").write_text("\n".join(md_lines), encoding="utf-8")

    return ModelSummary(
        model_name=model_name,
        TP=total_TP,
        FP=total_FP,
        FN=total_FN,
        precision=precision,
        recall=recall,
        f1=f1,
    )


def write_global_comparison(results_dir: Path, summaries: List[ModelSummary]) -> None:
    md_lines = [
        "# Model Comparison\n",
        "## Predicate evaluation\n",
        "_Predicate-only metrics: functor + arity + numeric arguments. Source citations are evaluated separately._\n",
    ]

    headers = ["Model", "TP", "FP", "FN", "Prec", "Rec", "F1"]
    rows = []

    for s in summaries:
        rows.append([
            s.model_name,
            s.TP,
            s.FP,
            s.FN,
            f"{s.precision*100:.1f}%",
            f"{s.recall*100:.1f}%",
            f"{s.f1*100:.1f}%"
        ])

    table = render_ascii_table(
        headers,
        rows,
        align_right={1, 2, 3, 4, 5, 6}
    )

    md_lines.append("```text")
    md_lines.append(table)
    md_lines.append("```")

    (results_dir / "models_comparison.md").write_text(
        "\n".join(md_lines),
        encoding="utf-8"
    )



# MAIN SCRIPT
def main():
    parser = argparse.ArgumentParser(description="Evaluate predicate matching across models.")
    parser.add_argument("--gold_dir", type=Path, required=True)
    parser.add_argument("--results_dir", type=Path, required=True)

    cfg = parser.parse_args()

    # Load gold cases
    gold_cases: Dict[str, List[Predicate]] = {}

    for json_file in sorted(cfg.gold_dir.glob("case_*.json")):
        if not re.match(r"case_\d{2}\.json$", json_file.name):
            continue
        case_id, preds = load_gold_case(json_file)
        gold_cases[case_id] = preds

    model_summaries: List[ModelSummary] = []

    # Evaluate each model directory
    for model_dir in sorted(cfg.results_dir.iterdir()):
        if not model_dir.is_dir():
            continue

        model_name = model_dir.name
        per_case_results: Dict[str, CaseEvaluation] = {}
        predicate_aggregate = defaultdict(lambda: {"TP": 0, "FP": 0, "FN": 0})

        for case_id, gold_predicates in gold_cases.items():
            parsed_file = model_dir / f"{case_id}_parsed.pl"

            if not parsed_file.exists():
                print(f"[WARN] {model_name}: missing parsed output for case {case_id}")
                continue

            parsed_predicates = load_parsed_case(parsed_file)

            case_stats = evaluate_single_case(
                gold_predicates=gold_predicates,
                parsed_predicates=parsed_predicates,
                predicate_aggregate=predicate_aggregate
            )
            per_case_results[case_id] = case_stats

        summary = write_model_markdown(model_name, model_dir, per_case_results, predicate_aggregate)
        model_summaries.append(summary)

    write_global_comparison(cfg.results_dir, model_summaries)


if __name__ == "__main__":
    main()
