# Utilities

Small helper scripts for dataset preprocessing.

## Files

- `convert_json_to_txt.py` - converts `case_*.json` files into `gold_case_*.txt` Prolog fact files.

## When to use

- Generate `gold_case_*.txt` after editing `gold_parsing` in JSON cases.
- Create plain-text Prolog fact files for easier Prolog querying, especially useful for debugging during gold label production.

## Usage

```bash
python code\utils\convert_json_to_txt.py data\cases
```
