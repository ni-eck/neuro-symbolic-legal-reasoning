# memory.py
from pathlib import Path
from neuro_symbolic_legal_reasoning.parser.prolog_validation import parse_predicate_text


def init_memory() -> dict[str, set[str]]:
    """
    Memory is: role_name -> set of literals.
    Example:
        {
          "beneficiary": {"'CompanyA'", "'CompanyB'"},
          "measure": {"'Measure1'"}
        }
    """
    return {}


def update_memory_from_reply(
    memory: dict[str, set[str]],
    reply: str,
    role_map: dict[str, dict[int, str]],
) -> None:
    """
    Scan a reply text, parse each predicate line, and update memory
    with role_name -> set(literals) based on the role_map.

    role_map: functor -> {arg_index: role_name}
    """
    for raw_line in reply.splitlines():
        line = raw_line.strip()
        if not line or line.startswith("%"):
            continue
        if "%" not in line:
            continue

        predicate_part, _ = line.rsplit("%", 1)
        predicate_part = predicate_part.strip()
        if not predicate_part:
            continue

        try:
            functor, args = parse_predicate_text(predicate_part)
        except ValueError:
            continue  # ignore malformed lines

        roles_for_pred = role_map.get(functor, {})
        for idx, literal in enumerate(args):
            role_info = roles_for_pred.get(idx)
            if not role_info:
                continue

            if role_info.get("is_numeric"):
                continue  # never add numeric values to memory

            role = role_info["role"]
            memory.setdefault(role, set()).add(str(literal))


def build_memory_block(memory: dict[str, set[str]]) -> str:
    """
    Build the textual block to include in the prompt showing, for each role,
    which literals have been seen.

    Example block:

        Previously parsed arguments (grouped by role):
        beneficiary = 'CompanyA', 'CompanyB'
        measure = 'Measure1'

    Returns empty string if memory is empty.
    """
    if not memory:
        return ""

    lines: list[str] = []
    lines.append(
        "Memory: Previously parsed arguments (grouped by role). "
        "If you refer to the same entity, measure, action, etc., you MUST reuse the exact literal:"
    )

    for role in sorted(memory.keys()):
        lits = ", ".join(sorted(memory[role]))
        lines.append(f"{role} = {lits}")

    lines.append(
        "Repeat the exact literal for the same entity, measure, action, etc. "
        "— no paraphrasing or renaming.\n"
    )

    return "\n".join(lines) + "\n"


def write_memory_log_txt(case_id: str, memory: dict[str, set[str]], logs_dir: Path) -> None:
    """
    Write a plain-text memory log for this case:
        Case: C1
        Memory (role -> literals):
          beneficiary = 'CompanyA', 'CompanyB'
          measure = 'Measure1'
    """
    logs_dir.mkdir(parents=True, exist_ok=True)
    out_path = logs_dir / f"{case_id}_memory.txt"

    lines: list[str] = [f"Case: {case_id}", "Memory (role -> literals):"]

    if not memory:
        lines.append("  (empty)")
    else:
        for role in sorted(memory.keys()):
            lits = ", ".join(sorted(memory[role]))
            lines.append(f"  {role} = {lits}")

    out_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
