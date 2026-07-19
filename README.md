# Neuro-Symbolic Legal Reasoning

This project implements a neuro-symbolic approach to legal reasoning and evaluates
it on EU State Aid cases under Article 107(1) TFEU.

It combines:
- an LLM-based semantic parser (neural module) that turns case descriptions into
  structured Prolog facts, and
- a Prolog rule base (symbolic module) that derives legal conclusions from those
  facts.

The aim is to leverage LLMs' ability to handle unstructured text while preserving
the transparency, auditability, and reproducibility of formal rule-based reasoning.

![Pipeline overview](data/visual/neuro-symbolic-pipeline-overview.png)

## Rule Base and Data
For this project, a Prolog rule base (`data/rule_base_art_107/state_aid_107.pl`) representing two of the four criteria of Article 107(1) TFEU was created. It contains 153 unique predicates and is based on the Commission's [notion of State aid](https://eur-lex.europa.eu/EN/legal-content/summary/notion-of-state-aid.html).
Furthermore, 22 cases (either fictional or adapted from real-world decisions with
changed entities) were created, each with a case description and gold Prolog fact
representations (`data/cases`).

## Parser and Prompts
The LLM-based parser must extract all relevant relations using a predefined predicate set. Given the size of the predicate space (153 predicates), parsing is split into multiple rounds. In each round, the LLM is prompted to extract only the facts defined in a group-specific prompt template (`data/prompts`). Since the Prolog rule base requires consistent argument naming, the parser injects a memory block that tracks previously used arguments. Outputs are validated using Prolog grammar and arity checks, and invalid predicates trigger a retry prompt. If no predicate applies, the model is instructed to output a single line: `% nothing`.

The parser was run with three models (`GPT-5`, `GPT-5-mini`, `GPT-4.1`).

## Evaluation
Evaluation is performed on the 22 cases across three dimensions:

- parsing correctness (predicate accuracy),
- source correctness (citation accuracy), and
- reasoning correctness (Prolog inference outcomes).

## Project structure

- `src/neuro_symbolic_legal_reasoning/` - Python modules for parsing and evaluation
- `data/` - dataset, prompts, and Prolog rule base
- `results/` - model outputs and evaluation results

Each folder has its own `README.md` with detailed guidance and further explanations on the chosen approach and limitations.

## Requirements

- Python 3.10+ recommended.
- Dependencies and tool configuration are defined in `pyproject.toml`.
- `uv` is the recommended project manager and runner for this repository.
- SWI-Prolog installed and on PATH for reasoning evaluation.
- OpenAI API access for running the semantic parser.

## Quick start

1) Create and activate a Python environment.
2) Install `uv` and sync the project:

```bash
uv sync --dev
```

3) Create an environment file for the OpenAI API key:

On Windows:

```bash
copy .env.example .env
```

On Linux/macOS:

```bash
cp .env.example .env
```

Set `OPENAI_API_KEY` in `.env`.

4) Run the parser:

```bash
uv run -m neuro_symbolic_legal_reasoning.parser.semantic_parser --results_dir results --cases_dir data\cases --templates_dir data\prompts --model gpt-4.1
```

5) Evaluate outputs:

```bash
uv run -m neuro_symbolic_legal_reasoning.evaluation.predicate_correctness --gold_dir data\cases --results_dir results
uv run -m neuro_symbolic_legal_reasoning.evaluation.source_correctness --gold_dir data\cases --results_dir results
uv run -m neuro_symbolic_legal_reasoning.evaluation.reasoning_correctness --results_dir results --rule_base data\rule_base_art_107\state_aid_107.pl
```

6) Run linting and formatting with Ruff:

```bash
uv run ruff check .
uv run ruff format .
```

7) Install pre-commit hooks:

```bash
uv run pre-commit install
```

The configured hooks run Ruff on each commit.

8) Lock dependencies when you want to persist the resolved environment:

```bash
uv lock
```
