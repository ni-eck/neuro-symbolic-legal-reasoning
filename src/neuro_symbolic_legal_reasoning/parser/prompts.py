# prompts.py
import re
from pathlib import Path

import yaml


def _load_yaml(path: Path) -> dict:
    with path.open("r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def load_prompts(templates_dir: Path) -> tuple[str, list[tuple[str, str]], str]:
    """
    Load system prompt, numeric templates, and final instruction from YAML files.

    Expected files in templates_dir:
      - system_prompt.yml
      - final_instruction.yml
      - N_*.yml  (e.g. 1_financial_activa.yml ... 10_...)
    """
    system_path = templates_dir / "system_prompt.yml"
    final_path = templates_dir / "final_instruction.yml"

    if not system_path.is_file():
        raise SystemExit(f"Missing system_prompt.yml in {templates_dir}")
    if not final_path.is_file():
        raise SystemExit(f"Missing final_instruction.yml in {templates_dir}")

    system_data = _load_yaml(system_path)
    final_data = _load_yaml(final_path)

    system_prompt = str(system_data.get("prompt", "")).strip()
    final_instruction = str(final_data.get("prompt", "")).strip()

    templates_raw: list[tuple[str, str, int]] = []

    for yml in templates_dir.glob("*.yml"):
        stem = yml.stem
        if stem in {"system_prompt", "final_instruction"}:
            continue

        m = re.match(r"^(\d+)_", yml.name)
        if not m:
            continue

        num = int(m.group(1))
        data = _load_yaml(yml)
        prompt_text = str(data.get("prompt", "")).strip()
        templates_raw.append((stem, prompt_text, num))

    if not templates_raw:
        raise SystemExit(f"No numeric templates (e.g. '1_*.yml') found in {templates_dir}")

    templates_raw.sort(key=lambda t: t[2])
    templates: list[tuple[str, str]] = [(name, prompt) for (name, prompt, _n) in templates_raw]

    return system_prompt, templates, final_instruction

def build_prompt(
    case_description: str,
    template_prompt: str,
    final_instruction: str,
    memory_block: str,
) -> str:
    parts = [f"Case description:\n{case_description.strip()}\n"]
    if memory_block:
        parts.append(memory_block.strip() + "\n")
    parts.append(template_prompt.strip())
    if final_instruction:
        parts.append(final_instruction.strip())
    return "\n\n".join(parts).strip() + "\n"

def build_retry_prompt(
    original_user_prompt: str,
    last_assistant_reply: str,
    invalid_info: list[tuple[str, str]],
    memory_block: str | None = None,
) -> str:
    """
    Construct a contextual retry prompt including:
      • system prompt
      • original user prompt for the template
      • previous assistant reply
      • invalid predicates + errors
      • corrective instructions
      • optional memory block
      
    Returns a single string to be passed as the new user prompt.
    """
    lines: list[str] = []

    # Original user prompt
    lines.append("\nOriginal user prompt:")
    lines.append(original_user_prompt.strip())

    # Optional memory
    if memory_block:
        lines.append(memory_block.strip())

    # Assistant's previous answer
    lines.append("\nAssistant answer:")
    lines.append(last_assistant_reply.strip())

    # Invalid predicates
    lines.append("\nThe following predicates in your answer were invalid:")
    for ln, err in invalid_info:
        lines.append(f"- {ln}")
        lines.append(f"  Error: {err}")

    # Instructions
    lines.append(
        "\nInstructions:\n"
        "- Correct ONLY the invalid predicates listed above.\n"
        "- Do NOT repeat or rewrite the valid predicates.\n"
        "- Preserve the intended meaning.\n"
        "- Use only predicates from the allowed predicate set.\n"
        "- Use the correct arity for each predicate.\n"
        "- Keep the original % [source] comment at the end of each line.\n"
        "- Output ONLY corrected predicates, one per line.\n"
        "- Output NOTHING else.\n"
    )

    return "\n".join(lines)
