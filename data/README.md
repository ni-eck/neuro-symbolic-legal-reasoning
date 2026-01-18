# Data

This folder contains the Dataset, prompt templates, and the Prolog rule base.

## Subfolders

- `cases/` - JSON with case description and gold Prolog facts
- `prompts/` - YAML prompt templates for the semantic parser
- `rule_base_art_107/` - Prolog rules for Article 107 reasoning


## Cases

The dataset contains 22 cases, consisting of a mix of fictional cases and adapted summaries of decisions by the European Commission, the General Court, and the Court of Justice. All entities and industries were modified without affecting the legal outcome. `cases/index.json` contains further detailed information on the cases and their sources.
Each case file follows a simple JSON schema:

```json
{
  "id": "case01",
  "case_description": "[1] Natural language description of the case [2] ...",
  "gold_parsing": [
    "predicate_name('EntityA', 123). % [1]"
  ]
  ...
}
```

Notes:
- `case_description` is a natural-language case description with sentence index markers (e.g., `[1]`, `[2]`). Case descriptions aim to be linguistically diverse and cover different narrative styles.
- `gold_parsing` is the gold label set used for evaluation. Source citations are indicated with `% [n]` for sentence numbers or `% [-]` for general knowledge. Multiple sources can be combined using `,` (AND), `;` (OR), and parentheses.

## Rule base

The rule base formalizes two of the four cumulative criteria of Article 107(1)
TFEU, focusing on advantage and state origin. Key design choices include:

- Negation-as-failure to model exceptions.
- Fallback predicates to capture atypical or underspecified cases (e.g.,
  `further_option_of_public_authority/1`).
- Default predicates for missing quantitative information when needed.


## Prompts

Prompts are separated into thematic groups (`N_*.yml`). Each group starts with group-specific information and defines the predicates that can be emitted in that round. 
The `system_prompt.yml` contains global instructions about the parsing task and output constraints. The `final_instruction.yml` repeats the most important instructions.

## Limitations

- The cases represent a controlled simplification of real State aid proceedings. Actual cases are substantially longer, contain extensive background and procedural material, and often include conflicting, incomplete, or strategically framed information from multiple parties.