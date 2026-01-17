# Results

This folder contains the experimental results and evaluation summaries for the models tested (`gpt-4.1`, `gpt-5`, and `gpt-5-mini`) in this project.
Each model has a dedicated subfolder with parsed outputs and an appended evaluation report. A cross-model comparison is provided in `models_comparison.md`.

## Evaluation metrics

### Predicate correctness

Predicate correctness measures parsing quality using true positives (TP), false positives (FP), false negatives (FN), precision, recall, and F1.
A true positive is a parsed predicate that matches the gold predicate by functor, arity, and numeric arguments; argument identity is not enforced.
Leftover parsed predicates count as false positives, and unmatched gold predicates count as false negatives.
Double matching is prevented by allowing each parsed predicate to match at most one gold predicate, and vice versa.

### Source correctness

Source correctness measures whether the LLM provides the correct sources for predicates and is evaluated only for predicates that are correctly parsed.
It compares `% [source]` citations against gold citation rules, which are parsed as AND/OR expressions using `,` (AND), `;` (OR), and parentheses.
`[-]` indicates that no external source is required.
A predicted citation set is considered correct if it overlaps with the gold citation set by at least 60%.
Up to two irrelevant citations are allowed; beyond this, a penalty of `exp(-0.25 * n)` is applied, where `n` is the number of excess irrelevant citations.
This penalizes source dumping.
Results are reported as accuracy.

### Reasoning correctness

Reasoning correctness measures how well parsed predicates, combined with the rule base, determine the case outcome.
SWI-Prolog is run on the parsed facts using the rule base, and it is evaluated whether `state_aid/2` is derivable.
A parsed fact set is considered correct if the derived result for `state_aid/2` matches the gold result.
Results are reported using TP, FP, FN, precision, recall, and F1.

## Limitations

- Predicate evaluation ignores non-numeric argument identity and citations, so structurally correct but semantically incorrect predicates may be counted as correct.
- Reasoning evaluation targets only `state_aid/2` and does not compare proof traces. It should therefore be interpreted as a proxy for reasoning soundness rather than a full validation.
