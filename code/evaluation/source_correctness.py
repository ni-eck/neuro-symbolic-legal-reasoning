import argparse
import json
import math
import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import List, Tuple

from code.evaluation.predicate_correctness import Predicate, predicates_match, render_ascii_table
from code.parser.prolog_validation import parse_predicate_text

SRC_TOKEN_RE = re.compile(r"\s*(\(|\)|,|;|\[[^\[\]]*\]|None)\s*", re.IGNORECASE)
CIT_RE = re.compile(r"\[([-A-Za-z0-9_]+)\]")


# Parsing helpers -------------------------------------------------------------
# 
def parse_source_rule(source_expression: str) -> List[set]:
    """
    Parse a gold source citation rule into a list of acceptable citation sets.

    Example:
        "[1],[2],([3];[4])"
    becomes:
        [{"1","2","3"}, {"1","2","4"}]

    Semantics:
        ',' = AND
        ';' = OR
        parentheses group expressions
    """

    # --- trivial cases ------------------------------------------------------
    if not source_expression or source_expression.strip().lower() == "none":
        # No citation requirement → empty citation set is acceptable
        return [set()]

    # Clean trailing separators
    cleaned_expression = source_expression.strip().rstrip(";,")
    
    # Tokenize the expression into meaningful symbols
    # Example: "[1],[2];([3],[4])"
    # → ['[1]', ',', '[2]', ';', '(', '[3]', ',', '[4]', ')']
    tokens = SRC_TOKEN_RE.findall(cleaned_expression)
    tokens.append("END")  # sentinel to detect end of input

    token_index = 0

    # --- token helpers ------------------------------------------------------
    def current_token():
        return tokens[token_index]

    def consume_token():
        nonlocal token_index
        token = tokens[token_index]
        token_index += 1
        return token

    # --- grammar rules ------------------------------------------------------

    def parse_primary():
        """
        Parse the smallest unit:
          - a citation like [1]
          - the keyword None
          - a parenthesized expression ( ... )
        Returns a list of citation sets.
        """
        token = consume_token()

        if token == "(":
            # Parenthesized expression
            clauses_inside = parse_disjunction()
            if consume_token() != ")":
                raise ValueError("Unbalanced parentheses in source rule")
            return clauses_inside

        if token.lower() == "none":
            # Explicitly no citation required
            return [set()]

        if token.startswith("["):
            # Citation like [1] ([-] means internal knowledge → no external source required)
            citation_id = token.strip("[]")
            if citation_id == "-":
                return [set()]
            return [{citation_id}] if citation_id else [set()]

        raise ValueError(f"Unexpected token in source rule: {token!r}")

    def parse_conjunction():
        """
        Parse AND-combinations separated by commas.
        Example:
            [1],[2]
        becomes:
            [{"1","2"}]
        """
        citation_sets = parse_primary()

        while current_token() == ",":
            consume_token()  # skip comma
            right_sets = parse_primary()

            # AND = Cartesian product + set union
            citation_sets = [
                left | right
                for left in citation_sets
                for right in right_sets
            ]

        return citation_sets

    def parse_disjunction():
        """
        Parse OR-combinations separated by semicolons.
        Example:
            [1,2];[3]
        becomes:
            [{"1","2"}, {"3"}]
        """
        all_clauses = parse_conjunction()

        while current_token() == ";":
            consume_token()  # skip semicolon
            all_clauses += parse_conjunction()

        return all_clauses

    # --- parse the full expression -----------------------------------------
    parsed_clauses = parse_disjunction()

    if consume_token() != "END":
        raise ValueError("Trailing junk in source rule")

    # Remove duplicate clauses while preserving order
    unique_clauses: List[set] = []
    for clause in parsed_clauses:
        if clause not in unique_clauses:
            unique_clauses.append(clause)

    return unique_clauses


def parse_predicate_line(line: str):
    body, _, src = line.partition("%")
    body = body.strip()
    if not body:
        return None
    try:
        functor, args = parse_predicate_text(body.rstrip("."))
    except Exception:
        return None
    return Predicate(functor=functor, args=args), src.strip()


def load_lists(gold: Path, parsed: Path):
    gold_rel = []

    data = json.loads(gold.read_text(encoding="utf-8"))
    for ln in data.get("gold_parsing", []):
        out = parse_predicate_line(ln)
        if not out:
            continue
        pred, src_str = out
        try:
            parsed_src = parse_source_rule(src_str)
        except Exception as exc:
            raise ValueError(f"{gold}: {exc} in line: {str(ln).strip()}")
        gold_rel.append((pred, parsed_src))

    parsed_rel = []
    if parsed.exists():
        with parsed.open(encoding="utf-8", errors="ignore") as fh:
            for ln in fh:
                out = parse_predicate_line(ln)
                if not out:
                    continue
                pred, src_str = out
                pset = {c for c in CIT_RE.findall(src_str) if c != "-"}
                parsed_rel.append((pred, pset))
    return gold_rel, parsed_rel


def _signature(pred: Predicate) -> Tuple[str, int, Tuple[Tuple[int, float], ...]]:
    """
    Build a matching signature: functor, arity, and positional numeric args.
    Non-numeric args are ignored (predicates_match treats them as wildcards).
    """
    numeric_positions = []
    for idx, arg in enumerate(pred.args):
        if isinstance(arg, (int, float)):
            numeric_positions.append((idx, float(arg)))
    return (pred.functor, len(pred.args), tuple(numeric_positions))


# Scoring ---------------------------------------------------------------------

def _score_sources(dnf_clauses, predicted_set, ratio: float, min_req: int, free_irrelevant: int, decay_alpha: float) -> float:
    """
    Score citations for a single predicate match.
    Returns a value in [0,1].
    """
    flat_gold = set().union(*dnf_clauses) if dnf_clauses else set()
    clause_score = 0.0
    for clause in dnf_clauses:
        # Empty clause (e.g., [-] or None) is satisfied only if the model also provides no citations
        if len(clause) == 0:
            if len(predicted_set) == 0:
                clause_score = 1.0
                break
            continue
        needed = max(min_req, int(-(-ratio * len(clause) // 1)))
        if len(clause & predicted_set) >= needed:
            clause_score = 1.0
            break
    if clause_score == 0.0:
        return 0.0

    irrelevant = predicted_set - flat_gold
    over = max(0, len(irrelevant) - free_irrelevant)
    penalty = math.exp(-decay_alpha * over)
    return clause_score * penalty


def render_ascii_table(headers, rows, align_right=None):
    if align_right is None:
        align_right = set()
    str_rows = [[str(row[h]) for h in headers] for row in rows]
    cols = list(zip(headers, *str_rows))
    widths = [max(len(cell) for cell in col) for col in cols]

    def fmt_row(row):
        out = []
        for i, (cell, w) in enumerate(zip(row, widths)):
            out.append(str(cell).rjust(w) if i in align_right else str(cell).ljust(w))
        return "  ".join(out)

    lines = [fmt_row(headers), "-" * len(fmt_row(headers))]
    lines += [fmt_row(r) for r in str_rows]
    return "\n".join(lines)


# Per-case evaluation ---------------------------------------------------------

def evaluate_single_case(gpath: Path, ppath: Path, args):
    gold_rel, parsed_rel = load_lists(gpath, ppath)

    parsed_buckets = defaultdict(list)
    for parsed_pred, parsed_srcs in parsed_rel:
        parsed_buckets[_signature(parsed_pred)].append(
            {"pred": parsed_pred, "srcs": parsed_srcs, "used": False}
        )

    src_ok = 0.0
    src_wrong = 0.0
    matched = 0
    predicate_stats = defaultdict(lambda: {"matched": 0, "src_ok": 0.0, "src_wrong": 0.0})

    # Match gold predicates to parsed ones (one parsed can satisfy only one gold).
    for gold_key, gold_dnf in gold_rel:
        sig = _signature(gold_key)
        candidates = parsed_buckets.get(sig, [])
        best_idx = None
        best_score = -1.0  # sentinel

        for idx, entry in enumerate(candidates):
            if entry["used"]:
                continue
            parsed_pred = entry["pred"]
            parsed_srcs = entry["srcs"]
            score = _score_sources(
                gold_dnf,
                parsed_srcs,
                args.src_ratio,
                args.src_min,
                args.free_irrelevant,
                args.decay_alpha,
            )
            if score > best_score:
                best_score = score
                best_idx = idx

        if best_idx is not None:
            matched += 1
            candidates[best_idx]["used"] = True
            if best_score > 0.0:
                src_ok += best_score
                predicate_stats[gold_key.functor]["src_ok"] += best_score
            else:
                src_wrong += 1
                predicate_stats[gold_key.functor]["src_wrong"] += 1
            predicate_stats[gold_key.functor]["matched"] += 1

    src_acc = src_ok / matched if matched else 0.0
    return {
        "Gold": len(gold_rel),
        "Parsed": len(parsed_rel),
        "Matched": matched,
        "Src_OK": src_ok,
        "Src_WRONG": src_wrong,
        "Src_acc": src_acc,
    }, predicate_stats


# Markdown writers ------------------------------------------------------------

def write_model_sources_markdown(model_dir: Path, model_name: str, per_case_rows, summary, predicate_stats):
    md_path = model_dir / f"{model_name}-evaluation.md"
    if md_path.exists():
        existing = md_path.read_text(encoding="utf-8").rstrip()
        md_lines = [existing, ""]
    else:
        md_lines = [f"# Evaluation for model `{model_name}`\n"]

    md_lines.append("## Source citation evaluation\n")
    headers = ["Case", "Matched", "Src_OK", "Src_WRONG", "Src_acc"]
    table_rows = []
    for row in per_case_rows:
        table_rows.append({
            h: (f"{row[h]*100:.1f}%" if h in {"Src_acc"} else row[h])
            for h in headers
        })
    md_lines.append("```text")
    md_lines.append(render_ascii_table(headers, table_rows, align_right={1, 2, 3, 4}))
    md_lines.append("```")

    # Per-predicate summary (all cases for this model)
    md_lines.append("\n### Per-predicate source summary\n")
    pred_headers = ["Predicate", "Matched", "Src_OK", "Src_WRONG", "Src_acc"]
    pred_rows = []
    for functor, stats in sorted(predicate_stats.items()):
        matched = stats["matched"]
        acc = (stats["src_ok"] / matched) if matched else 0.0
        pred_rows.append({
            "Predicate": functor,
            "Matched": matched,
            "Src_OK": f"{stats['src_ok']:.2f}",
            "Src_WRONG": f"{stats['src_wrong']:.2f}",
            "Src_acc": f"{acc*100:.1f}%",
        })
    md_lines.append("```text")
    md_lines.append(render_ascii_table(pred_headers, pred_rows, align_right={1, 2, 3, 4}))
    md_lines.append("```")

    md_lines.append("\n### Source summary\n")
    over_headers = ["Matched", "Src_OK", "Src_WRONG", "Src_acc"]
    over_rows = [{
        "Matched": summary["matched"],
        "Src_OK": f"{summary['Src_OK']:.2f}",
        "Src_WRONG": f"{summary['Src_WRONG']:.2f}",
        "Src_acc": f"{summary['Src_acc']*100:.1f}%",
    }]
    md_lines.append("```text")
    md_lines.append(render_ascii_table(over_headers, over_rows, align_right={0, 1, 2, 3}))
    md_lines.append("```")

    md_path.write_text("\n".join(md_lines) + "\n", encoding="utf-8")


def write_global_sources_comparison(results_dir: Path, summaries):
    headers = ["Model", "Matched", "Src_OK", "Src_WRONG", "Src_acc"]
    rows = []
    for s in summaries:
        rows.append({
            "Model": s["model"],
            "Matched": s["matched"],
            "Src_OK": f"{s['Src_OK']:.2f}",
            "Src_WRONG": f"{s['Src_WRONG']:.2f}",
            "Src_acc": f"{s['Src_acc']*100:.1f}%",
        })

    md_path = results_dir / "models_comparison.md"
    if md_path.exists():
        existing = md_path.read_text(encoding="utf-8").rstrip()
        md = [existing, ""]
    else:
        md = []

    md += ["## Source citation comparison", "```text", render_ascii_table(headers, rows, align_right={1, 2, 3, 4}), "```"]
    md_path.write_text("\n".join(md) + "\n", encoding="utf-8")


# Main -----------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(description="Evaluate facts + citation overlap across models.")
    ap.add_argument("--gold_dir", type=Path, default=Path("data/cases"))
    ap.add_argument("--results_dir", type=Path, required=True)
    ap.add_argument("--src_ratio", type=float, default=0.6)
    ap.add_argument("--src_min", type=int, default=1)
    ap.add_argument("--decay_alpha", type=float, default=0.25)
    ap.add_argument("--free_irrelevant", type=int, default=2)

    args = ap.parse_args()

    gold_files = [p for p in args.gold_dir.glob("case_*.json") if re.match(r"case_\d{2}\.json$", p.name)]
    if not gold_files:
        sys.exit("No gold files found.")

    def get_id(path: Path):
        m = re.search(r"(\d+)", path.stem)
        return m.group(1) if m else None

    gold_map = {get_id(p): p for p in gold_files if get_id(p)}

    summaries = []

    for model_dir in sorted(args.results_dir.iterdir()):
        if not model_dir.is_dir():
            continue
        model_name = model_dir.name
        parsed_map = {get_id(p): p for p in model_dir.glob("case*_parsed.pl") if get_id(p)}

        per_case_rows = []
        total_matched = 0
        src_ok = src_wrong = 0.0
        model_predicate_stats = defaultdict(lambda: {"matched": 0, "src_ok": 0.0, "src_wrong": 0.0})

        for cid, gpath in sorted(gold_map.items(), key=lambda kv: int(kv[0])):
            ppath = parsed_map.get(cid, Path("/dev/null"))
            case_res, case_pred_stats = evaluate_single_case(gpath, ppath, args)
            total_matched += case_res["Matched"]
            src_ok += case_res["Src_OK"]
            src_wrong += case_res["Src_WRONG"]
            for functor, stats in case_pred_stats.items():
                model_predicate_stats[functor]["matched"] += stats["matched"]
                model_predicate_stats[functor]["src_ok"] += stats["src_ok"]
                model_predicate_stats[functor]["src_wrong"] += stats["src_wrong"]
            per_case_rows.append({"Case": cid, **case_res})

        src_acc = src_ok / total_matched if total_matched else 0.0
        summary = {
            "model": model_name,
            "matched": total_matched,
            "Src_OK": src_ok,
            "Src_WRONG": src_wrong,
            "Src_acc": src_acc,
        }
        summaries.append(summary)

        write_model_sources_markdown(model_dir, model_name, per_case_rows, summary, model_predicate_stats)

    if summaries:
        write_global_sources_comparison(args.results_dir, summaries)


if __name__ == "__main__":
    main()
