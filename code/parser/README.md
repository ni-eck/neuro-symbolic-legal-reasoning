# Parser

LLM-based semantic parser that transforms case descriptions into Prolog facts
with source citations. It runs in multiple rounds, validates every predicate, and
logs retries and memory to keep outputs auditable.

## Usage

From the repository root:

```bash
python code\parser\semantic_parser.py --results_dir results --cases_dir data\cases --templates_dir data\prompts --model gpt-4.1
```

## CLI arguments

- `--results_dir` output root for parsed facts and logs.
- `--cases_dir` directory or file containing JSON cases.
- `--templates_dir` YAML templates directory.
- `--model` model name passed to the OpenAI API.

## Output

For each case, the parser writes a Prolog file:

- `results/<model>/<case_id>_parsed.pl`

Each template output is grouped and preceded by a comment line:

```
% 1_financial_activa
predicate_name(arg1, arg2). % [source]
```

If a template yields no facts, the parser writes a `% nothing` marker.

## Files

- `semantic_parser.py` - CLI entry point; loads cases, builds prompts, calls the
  OpenAI API, validates outputs, and writes Prolog facts.
- `prompts.py` - loads YAML prompt templates and builds user and retry prompts.
- `prolog_validation.py` - Prolog predicate parser and validator. Builds a role
  map from templates.
- `memory.py` - tracks previously extracted literals and injects a memory block.
- `.env.example` - template for the OpenAI API key.

## How the parser works (step by step)

1) Load prompt templates and build a role map from predicate argument names.
2) Load all cases from `--cases_dir`.
3) For each case:
   - initialize empty memory and log buffers,
   - for each template group (in numeric order):
     - build a user prompt in this order:
       1) case description (raw text from `case_description`),
       2) memory block with previously seen literals (if any),
       3) template prompt (predicate definitions for this group),
       4) final instruction (global output rules),
     - call the OpenAI Responses API with the system prompt and user prompt,
     - validate each predicate line for syntax, known functor, and arity,
     - if invalid lines exist, build a retry prompt and re-call the model
       (up to 3 attempts),
     - append valid predicates to the case output and update memory.
4) Write one `.pl` file per case and write memory/retry logs.

The system prompt is loaded from `data/prompts/system_prompt.yml` and passed as
the instructions field to the API call.

## Validation rules

- Predicate functors and arities must match those defined in templates.
- Every predicate must include a `% [source]` citation comment.

## Memory behavior

The memory block lists previously extracted literals by role (e.g.,
`beneficiary = 'CompanyA'`). This helps enforce literal consistency across
templates but does not resolve coreference or synonyms.

How it is built:
- After each template round, the parser parses valid predicates and stores their
  argument literals grouped by role.
- Numeric arguments are excluded from memory to avoid false reuse.
- The memory block is injected into the next round's prompt so the model reuses
  existing literals for the same entities.

## Logs

The module logs:
- memory (`results/<model>/logs/<case_id>_memory.txt`)
- invalid predicates and syntax error reasons (`results/<model>/logs/<case_id>_retries.txt`)

## Limitations

- Validation is syntactic and arity-based. It cannot detect factual or logical errors.
- Memory only enforces literal reuse. It does not ensure robust alignment.

## Suggested improvements

- The search space is large and requires many prompts. The predicate space could
  be pruned after each round using legal logic. If a fact is not parsed, some
  predicates in later templates (or even entire templates) become irrelevant (e.g., if an act is not of
  private nature, the Market Economy Operator Test does not apply).
- Some target predicates in the same parsing round are mutually exclusive. These
  constraints could be enforced during validation.
