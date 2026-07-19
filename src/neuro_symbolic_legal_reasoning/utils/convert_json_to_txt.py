import json
import re
import sys
from pathlib import Path

def normalize_fact(line: str) -> str:
    """
    Whitespace cleanup: normalize spaces after commas inside predicate args.
    Comments are preserved.
    """
    parts = line.split('%', 1)
    fact = parts[0].rstrip()
    comment = ('%' + parts[1]) if len(parts) > 1 else ''

    fact = re.sub(r",\s+", ", ", fact)
    return f"{fact} {comment}".rstrip()

def main():
    if len(sys.argv) < 2:
        print("Usage: python extract_prolog.py <input_dir>")
        sys.exit(1)

    input_dir = Path(sys.argv[1])
    if not input_dir.exists():
        print(f"Directory not found: {input_dir}")
        sys.exit(1)

    json_files = sorted(input_dir.glob("case_*.json"))

    if not json_files:
        print(f"No files matching case_*.json in {input_dir}")
        sys.exit(1)

    for json_file in json_files:
        with open(json_file, encoding="utf-8") as f:
            data = json.load(f)

        prolog_facts = data.get("gold_parsing", [])
        if not isinstance(prolog_facts, list):
            print(f"Skipping {json_file.name}: gold_parsing is not a list")
            continue

        normalized = [normalize_fact(line) for line in prolog_facts]

        # derive suffix and output file path
        suffix = json_file.stem.split("_")[1]
        out_path = input_dir / f"gold_case_{suffix}.txt"

        with open(out_path, "w", encoding="utf-8") as out:
            out.write("% Case facts\n")
            for line in normalized:
                out.write(line + "\n")

        print(f"Wrote {out_path.name}")

if __name__ == "__main__":
    main()
