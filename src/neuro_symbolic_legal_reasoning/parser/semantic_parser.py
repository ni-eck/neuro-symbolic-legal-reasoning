# semantic_parser.py
import argparse
import json
import time
from pathlib import Path

from dotenv import load_dotenv
from openai import APITimeoutError, OpenAI, RateLimitError

from neuro_symbolic_legal_reasoning.parser.memory import (
    build_memory_block,
    init_memory,
    update_memory_from_reply,
    write_memory_log_txt,
)
from neuro_symbolic_legal_reasoning.parser.prompts import (
    build_prompt,
    build_retry_prompt,
    load_prompts,
)
from neuro_symbolic_legal_reasoning.parser.prolog_validation import (
    build_role_map,
    validate_reply,
)

load_dotenv()
client = OpenAI()  

# CASE LOADING
def load_cases(path: Path) -> list[dict]:
    """
    Load cases from a JSON file or a directory of `case_XX.json` files.
    Each case must have: 'id', 'case_description'.
    """
    cases: list[dict] = []
    if path.is_file():
        data = json.loads(path.read_text(encoding="utf-8"))
        cases.extend(data if isinstance(data, list) else [data])
        return cases
    for file in sorted(path.glob("case_[0-9][0-9].json")):
        data = json.loads(file.read_text(encoding="utf-8"))
        cases.extend(data if isinstance(data, list) else [data])
    return cases


# OPENAI CALL (Responses API)
def call_model(system_prompt: str, user_prompt: str, model: str, max_attempts: int = 5) -> str:
    """
    Call OpenAI Responses API and return plain text output.
    Handle Ratelimit Errors with exponential backoff
    """
    delay = 2  # initial wait in seconds

    for attempt in range(1, max_attempts + 1):
        try:
            resp = client.responses.create(
                model=model,
                instructions=system_prompt,
                input=user_prompt
            )
            return resp.output_text or ""

        except RateLimitError:
            print(f"[RateLimitError] attempt {attempt}/{max_attempts}: waiting {delay}s")
            time.sleep(delay)
            delay = min(delay * 2, 60)  # cap at 60 seconds
            continue

        except APITimeoutError:
            # transient server errors
            print(f"[APITimeoutError] attempt {attempt}/{max_attempts}: waiting {delay}s")
            time.sleep(delay)
            delay = min(delay * 2, 60)
            continue

        except Exception as e:
            # unexpected errors → fail fast
            print(f"Unexpected OpenAI error: {e}")
            raise

    raise RuntimeError("Model call failed after maximum retry attempts")


# RETRY LOGGING
def append_retry_log_lines(
    buffer: list[str],
    template_name: str,
    attempt: int,
    invalid_info: list[tuple[str, str]],
) -> None:
    buffer.append(f"Template: {template_name}, attempt: {attempt}")
    for line, err in invalid_info:
        buffer.append(f"  {line}")
        buffer.append(f"    Error: {err}")
    buffer.append("")


def write_retry_log_txt(case_id: str, retry_log_lines: list[str], logs_dir: Path) -> None:
    if not retry_log_lines:
        return
    logs_dir.mkdir(parents=True, exist_ok=True)
    out_path = logs_dir / f"{case_id}_retries.txt"
    content = "Case: " + case_id + "\n\n" + "\n".join(retry_log_lines) + "\n"
    out_path.write_text(content, encoding="utf-8")

# PROCESS SINGLE CASE
def process_case(
    case: dict,
    system_prompt: str,
    templates: list[tuple[str, str]],
    final_instruction: str,
    role_map: dict[str, dict[int, str]],
    model: str,
    output_dir: Path,
    logs_dir: Path,
) -> None:
    """
    Process a single case through all templates with partial retries (max 3),
    memory tracking, and Prolog validation.
    """

    # Case metadata checks
    case_id = str(case.get("id", "")).strip()
    if not case_id:
        raise ValueError("Case missing 'id' field")

    case_desc = str(case.get("case_description", "")).strip()
    if not case_desc:
        raise ValueError(f"Case {case_id!r} missing 'case_description'")

    # State initialization
    memory_state = init_memory()
    retry_log_lines: list[str] = []
    output_lines: list[str] = []


    # Template loop
    for template_name, template_prompt in templates:

        # Memory block only if memory exists and it's not the first template
        memory_block = "" if not memory_state else build_memory_block(memory_state)

        # Build first user prompt for this template
        user_prompt = build_prompt(
            case_description=case_desc,
            template_prompt=template_prompt,
            final_instruction=final_instruction,
            memory_block=memory_block,
        )
        original_user_prompt = user_prompt  

        # FIRST model call
        reply = call_model(system_prompt, user_prompt, model)
        valid_lines, invalid_info, is_nothing = validate_reply(reply, role_map)
        valid_final = list(valid_lines)   

        # RETRY loop (max 3 attempts)
        attempt = 1
        while invalid_info and attempt <= 3:

            # log errors
            append_retry_log_lines(
                retry_log_lines,
                template_name=template_name,
                attempt=attempt,
                invalid_info=invalid_info,
            )

            retry_memory_block = build_memory_block(memory_state) if memory_state else ""

            retry_prompt = build_retry_prompt(
                original_user_prompt=original_user_prompt,
                last_assistant_reply=reply,
                invalid_info=invalid_info,
                memory_block=retry_memory_block,
            )

            # Call model with retry prompt
            retry_reply = call_model(system_prompt, retry_prompt, model)
            retry_valid, retry_invalid, _ = validate_reply(retry_reply, role_map)

            reply = retry_reply

            invalid_pred_strings = {ln for ln, _ in invalid_info}
            valid_final = [ln for ln in valid_final if ln not in invalid_pred_strings]

            valid_final.extend(retry_valid)

            invalid_info = retry_invalid
            attempt += 1


        # Write template output
        output_lines.append(f"% {template_name}")

        if is_nothing and not valid_final:
            output_lines.append("% nothing")
        else:
            seen = set()
            for ln in valid_final:
                if ln not in seen:
                    output_lines.append(ln)
                    seen.add(ln)

        output_lines.append("") 

        # Update memory (role → literals)
        if valid_final:
            update_memory_from_reply(
                memory_state,
                "\n".join(valid_final),
                role_map,
            )

    # Write final Prolog file
    output_dir.mkdir(parents=True, exist_ok=True)
    out_path = output_dir / f"{case_id}_parsed.pl"
    out_path.write_text("\n".join(output_lines).rstrip() + "\n", encoding="utf-8")

    # Write logs
    write_memory_log_txt(case_id, memory_state, logs_dir)
    write_retry_log_txt(case_id, retry_log_lines, logs_dir)

    print(f"Processed case {case_id}")

# MAIN / CLI
def main():
    parser = argparse.ArgumentParser(
        description="Semantic parser: generate Prolog predicates via OpenAI Responses API",
    )

    parser.add_argument(
        "--results_dir",
        type=Path,
        required=True,
        help="Root output folder. The script will create <path>/<model>/ and logs inside it.",
    )

    parser.add_argument(
        "--cases_dir",
        type=Path,
        required=True,
        help="Directory or file containing JSON cases.",
    )

    parser.add_argument(
        "--templates_dir",
        type=Path,
        required=True,
        help=(
            "Directory containing YAML templates "
            "(system_prompt.yml, final_instruction.yml, numeric templates)."
        ),
    )

    parser.add_argument(
        "--model",
        type=str,
        default="gpt-4.1", 
        help="Model name (default: gpt-4.1)",
    )

    cfg = parser.parse_args()

    system_prompt, templates, final_instruction = load_prompts(cfg.templates_dir)
    role_map = build_role_map(cfg.templates_dir)

    cases = load_cases(cfg.cases_dir)
    if not cases:
        raise SystemExit("No cases found – check --cases_dir.")

    model_root = cfg.results_dir/ cfg.model
    logs_dir = model_root / "logs"

    model_root.mkdir(parents=True, exist_ok=True)
    logs_dir.mkdir(parents=True, exist_ok=True)

    for case in cases:
        process_case(
            case=case,
            system_prompt=system_prompt,
            templates=templates,
            final_instruction=final_instruction,
            role_map=role_map,
            model=cfg.model,
            output_dir=model_root,
            logs_dir=logs_dir,
        )


    print(f"Completed {len(cases)} case(s). Output in {model_root}, logs in {logs_dir}")


if __name__ == "__main__":
    main()
