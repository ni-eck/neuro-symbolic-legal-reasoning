# prolog_validation.py

import re
from pathlib import Path
from typing import Dict, List, Tuple, Any
from lark import Lark, Transformer, exceptions as lark_exceptions
import yaml

# PROLOG TERM PARSER (via Lark)

_PROLOG_GRAMMAR = r"""
?start: predicate

predicate: FUNCTOR "(" [args] ")" "."?        -> predicate
args: term ("," term)*

?term: predicate
     | list
     | atom
     | number
     | VARIABLE            

list: "[" [term ("," term)*] "]"

atom: ATOM_STRING          -> quoted_atom
    | FUNCTOR              -> bare_atom

ATOM_STRING: /'(?:\\'|''|[^'])*'/
FUNCTOR: /[a-z][A-Za-z0-9_]*/
VARIABLE: /[A-Z][A-Za-z0-9_]*/  

number: SIGNED_NUMBER

%import common.SIGNED_NUMBER
%import common.WS_INLINE
%ignore WS_INLINE
"""


class _TermToPython(Transformer):
    def predicate(self, items):
        functor = str(items[0])
        if len(items) > 1 and not (hasattr(items[-1], "type") and str(items[-1]) == "."):
            args = items[1]
        else:
            args = []
        return functor, args

    def args(self, items):
        return items

    def quoted_atom(self, token):
        return str(token[0])

    def bare_atom(self, token):
        return str(token[0])

    def number(self, token):
        s = str(token[0])
        return int(s) if "." not in s else float(s)

    def list(self, items):
        return items


_PROLOG_PARSER = Lark(
    _PROLOG_GRAMMAR,
    start="predicate",
    parser="lalr",
    transformer=_TermToPython(),
)


def parse_predicate_text(text: str) -> Tuple[str, List[Any]]:
    """
    Parse 'pred(arg1, arg2, ...)' and return (functor, args).
    Raises ValueError on failure.
    """
    try:
        functor, args = _PROLOG_PARSER.parse(text)
        return functor, args
    except lark_exceptions.LarkError as exc:
        raise ValueError(str(exc))



# ROLE MAP


def _load_yaml(path: Path) -> Dict:
    with path.open("r", encoding="utf-8") as f:
        return yaml.safe_load(f)

MANUAL_ROLE_OVERRIDES: Dict[str, Dict[int, str]] = {}

# Normalization
_TYPED_ARG_RE = re.compile(r"->\s*number\s*:\s*([A-Za-z_][A-Za-z0-9_]*)")

def normalize_template_predicate_line(line: str) -> str:
    """
    Normalize a template line intended to declare a predicate.

    Assumptions (per project design):
    - Intended predicate lines are valid Prolog syntax
    - They end with '.'
    - Typed arguments appear only as '-> type: Var'
    """

    if "%" in line:
        line = line.split("%", 1)[0]

    s = line.strip()
    if not s or not s.endswith("."):
        return ""

    s = _TYPED_ARG_RE.sub(r"\1", s)

    return s

def build_role_map(templates_dir: Path) -> Dict[str, Dict[int, str]]:
    """
    Build a mapping: functor -> {arg_index: role_name}

    We scan all numeric template YAMLs and look at their 'prompt' fields.
    Any line that parses as a predicate is used to infer argument role names
    from the argument tokens (e.g. Beneficiary -> beneficiary).
    """
    role_map: Dict[str, Dict[int, Dict]] = {}

    for yml in templates_dir.glob("*.yml"):
        stem = yml.stem
        if stem in {"system_prompt", "final_instruction"}:
            continue

        # Numeric templates only
        m = re.match(r"^(\d+)_", yml.name)
        if not m:
            continue

        data = _load_yaml(yml)
        prompt_text = str(data.get("prompt", "")).strip()

        for raw_line in prompt_text.splitlines():
            line = raw_line.strip()

            if not re.match(r"^[a-z][A-Za-z0-9_]*\s*\(", line):
                continue
            if line.startswith("%"):
                continue

            # Detect numeric typed arguments BEFORE normalization
            typed_arg_matches = list(_TYPED_ARG_RE.finditer(line))
            numeric_arg_names = {m.group(1) for m in typed_arg_matches}

            # Remove type annotations from predicate text
            norm = _TYPED_ARG_RE.sub(r"\1", line)

            try:
                functor, args = parse_predicate_text(norm)
            except ValueError:
                continue

            for idx, raw_arg in enumerate(args):
                arg_str = str(raw_arg).strip("'\"")
                role = arg_str or f"arg{idx+1}"

                is_numeric = arg_str in numeric_arg_names

                role_map.setdefault(functor, {})[idx] = {
                    "role": role,
                    "is_numeric": is_numeric,
                }

    role_map.update(MANUAL_ROLE_OVERRIDES)
    return role_map

# VALIDATION

def _strip_code_fences(text: str) -> List[str]:
    return [
        ln.rstrip()
        for ln in text.splitlines()
        if not ln.strip().startswith("```")
    ]


def _is_nothing_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped.startswith("%"):
        return False
    content = stripped[1:].strip().lower()
    return content == "nothing"


def validate_reply(
    reply: str,
    role_map: Dict[str, Dict[int, str]],
) -> Tuple[List[str], List[Tuple[str, str]], bool]:
    """
    Validate a model reply.

    Returns:
        valid_lines: list of predicate lines (string, including '% [...]' comment)
        invalid_info: list of (line, error_message)
        is_nothing: True if the reply effectively says '% nothing'

    Rules:
      - ignore blank lines and pure comments (except a single '% nothing')
      - each predicate line must contain '%'
      - predicate before '%' must parse
      - functor must be known in role_map
      - arity must match role_map[functor]
    """
    lines = _strip_code_fences(reply)
    non_empty = [ln for ln in lines if ln.strip()]

    if len(non_empty) == 1 and _is_nothing_line(non_empty[0]):
        return [non_empty[0]], [], True

    valid_lines: List[str] = []
    invalid_info: List[Tuple[str, str]] = []

    allowed_preds = set(role_map.keys())

    for raw in lines:
        line = raw.strip()
        if not line:
            continue
        if line.startswith("%"):
            # regular comments are ignored (except single '% nothing' handled above)
            continue

        if "%" not in line:
            invalid_info.append((line, "missing source-chunk comment '%'"))
            continue

        predicate_part, _comment = line.rsplit("%", 1)
        predicate_part = predicate_part.strip()

        try:
            functor, args = parse_predicate_text(predicate_part)
        except ValueError as exc:
            invalid_info.append((line, f"invalid predicate syntax: {exc}"))
            continue

        if functor not in allowed_preds:
            invalid_info.append((line, f"unknown predicate '{functor}'"))
            continue

        expected_arity = max(role_map[functor].keys()) + 1
        if len(args) != expected_arity:
            invalid_info.append(
                (
                    line,
                    f"wrong arity for '{functor}': expected {expected_arity}, got {len(args)}",
                )
            )
            continue

        valid_lines.append(line)

    return valid_lines, invalid_info, False
