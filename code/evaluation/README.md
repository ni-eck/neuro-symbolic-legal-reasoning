# Evaluation

Scripts for evaluating parsed Prolog facts against gold data.

## Files

- `predicate_correctness.py` - predicate-level precision/recall/F1 (functor, arity, numeric args).
- `source_correctness.py` - citation accuracy based on `% [source]` annotations.
- `reasoning_correctness.py` - Prolog reasoning evaluation using the rule base.

## Usage

```bash
python code\evaluation\predicate_correctness.py --gold_dir data\cases --results_dir results
python code\evaluation\source_correctness.py --gold_dir data\cases --results_dir results
python code\evaluation\reasoning_correctness.py --results_dir results --rule_base data\rule_base_art_107\state_aid_107.pl
```

## CLI arguments

Predicate correctness:
- `--gold_dir` folder with gold cases.
- `--results_dir` folder containing model outputs.

Source correctness:
- `--src_ratio` minimum ratio of correctly cited sources to accept a clause (default `0.6`).
- `--src_min` minimum citations required (default `1`).
- `--free_irrelevant` allowed irrelevant citations before penalty (default `2`).
- `--decay_alpha` penalty strength for extra citations (default `0.25`).

Reasoning correctness:
- `--rule_base` path to the Prolog rule base.
- `--timeout` per-query timeout in seconds.

## Outputs

- `results/<model>/<model>-evaluation.md` (per-model report, appended per script).
- `results/models_comparison.md` (cross-model summary).


