# Evaluation for model `gpt-5.5`

## Predicate evaluation

_Predicates are matched on functor, arity, and numeric arguments only; string arguments and source citations are not considered in this section._

### Per-case summary

```text
Case    TP  FP  FN   Prec     Rec     F1
----------------------------------------
case01   7   1   0  87.5%  100.0%  93.3%
case02   6   4   0  60.0%  100.0%  75.0%
case03  13  32   1  28.9%   92.9%  44.1%
case04  10  13   2  43.5%   83.3%  57.1%
case05  10   6   1  62.5%   90.9%  74.1%
case06   8  15   1  34.8%   88.9%  50.0%
case07   7  16   1  30.4%   87.5%  45.2%
case08  12   9   1  57.1%   92.3%  70.6%
case09   7   4   0  63.6%  100.0%  77.8%
case10  18   8   3  69.2%   85.7%  76.6%
case11  17  18   6  48.6%   73.9%  58.6%
case12  11  12   0  47.8%  100.0%  64.7%
case13   8  80   0   9.1%  100.0%  16.7%
case14   6   8   0  42.9%  100.0%  60.0%
case15  30  66   1  31.2%   96.8%  47.2%
case16   9  26   2  25.7%   81.8%  39.1%
case17  10   6   0  62.5%  100.0%  76.9%
case18  12   9   0  57.1%  100.0%  72.7%
case19   7  14   4  33.3%   63.6%  43.7%
case20   8   4   0  66.7%  100.0%  80.0%
case21   6  15   2  28.6%   75.0%  41.4%
case22   8   9   4  47.1%   66.7%  55.2%
```

### Per-predicate summary (all cases)

```text
Predicate                                                                             TP  FP  FN    Prec     Rec
----------------------------------------------------------------------------------------------------------------
adopted_or_administered_by                                                            24  25   0   49.0%  100.0%
achieving_policy_objective                                                             1  23   0    4.2%  100.0%
measure_financial_terms                                                                0  22   1    0.0%    0.0%
active_resource_flow                                                                  14  20   0   41.2%  100.0%
monetary_subsidy                                                                       4  13   0   23.5%  100.0%
direct_targeting                                                                      27  11   1   71.1%   96.4%
is_shareholder_of                                                                      1  10   0    9.1%  100.0%
public_state_authority                                                                16   9   0   64.0%  100.0%
economic_objective_similar_to_private_investor                                         0   9   0    0.0%    0.0%
expert_evaluation_on_measure_or_similar_action                                         5   9   0   35.7%  100.0%
organic_link_with_state_or_intra_state                                                 0   9   0    0.0%    0.0%
resource_of_central_state_entity                                                       6   8   0   42.9%  100.0%
parsed_money_received                                                                 12   7   0   63.2%  100.0%
regulatory_capacity                                                                    2   7   0   22.2%  100.0%
resource_of_public_undertaking                                                         2   7   0   22.2%  100.0%
secondary_effects                                                                      3   7   0   30.0%  100.0%
is_public_undertaking                                                                  3   6   0   33.3%  100.0%
parsed_money_spent                                                                     1   6   1   14.3%   50.0%
resource_of_private_body                                                               1   6   0   14.3%  100.0%
public_undertaking_of_state                                                            1   6   0   14.3%  100.0%
strategic_sector                                                                       0   6   0    0.0%    0.0%
public_service_obligation                                                              0   6   0    0.0%    0.0%
decision_dependence_on_state_or_intra_state                                            0   6   0    0.0%    0.0%
follows_shareholder_objectives                                                         0   5   2    0.0%    0.0%
public_intra_state_authority                                                           5   5   0   50.0%  100.0%
textual_evidence_worse_financial_terms                                                 0   5   0    0.0%    0.0%
selection_process_for_measure                                                          0   5   1    0.0%    0.0%
measure_scope_indicates_involvement                                                    0   5   0    0.0%    0.0%
parsed_value_granted_rights_licenses                                                   1   4   0   20.0%  100.0%
intervention_carried_at_same_time                                                      1   4   0   20.0%  100.0%
capital_injection                                                                      3   4   0   42.9%  100.0%
purchase_lease_rent_similar                                                            0   4   0    0.0%    0.0%
access_domain_resources_rights                                                         0   4   0    0.0%    0.0%
not_comparable_starting_position                                                       0   4   0    0.0%    0.0%
compensation_for_obligation                                                            6   4   2   60.0%   75.0%
ex_ante                                                                                0   4   1    0.0%    0.0%
channeled_to_identifiable_undertaking_s                                                0   4   0    0.0%    0.0%
qualitative_selection_criteria                                                         0   4   0    0.0%    0.0%
expert_financial_expectation                                                           0   3   1    0.0%    0.0%
not_in_favour_of_measure_or_similar_action                                             5   3   0   62.5%  100.0%
actual_price_goods_service                                                             0   3   1    0.0%    0.0%
transparent                                                                            0   3   1    0.0%    0.0%
non_discriminatory                                                                     0   3   1    0.0%    0.0%
under_public_control                                                                   1   3   0   25.0%  100.0%
comparable_type                                                                        0   3   0    0.0%    0.0%
parsed_costs_relieved_monetary_obligations                                             4   2   0   66.7%  100.0%
tax_related                                                                            4   2   0   66.7%  100.0%
intervention_decided_at_same_time                                                      1   2   0   33.3%  100.0%
parsed_value_received_rights_licenses                                                  1   2   1   33.3%   50.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                 2   2   0   50.0%  100.0%
resource_of_intrastate_entity                                                          3   2   0   60.0%  100.0%
market_value_domain_resources_rights                                                   0   2   0    0.0%    0.0%
ex_ante_evaluation                                                                     4   2   1   66.7%   80.0%
textual_evidence_of_improved_financial_situation                                       5   2   1   71.4%   83.3%
caused_change_of_financial_value                                                       0   2   0    0.0%    0.0%
revenue_loss_is_justified_by_policy                                                    0   2   0    0.0%    0.0%
clearly_defined                                                                        4   2   0   66.7%  100.0%
social_policy                                                                          0   2   0    0.0%    0.0%
competitive                                                                            0   2   0    0.0%    0.0%
general_waiving_revenue_public_or_criminal_law                                         0   2   0    0.0%    0.0%
acted_on_government_directives                                                         0   2   0    0.0%    0.0%
not_competing_under_normal_conditions                                                  0   2   0    0.0%    0.0%
sell_lease_rent_similar                                                                1   2   0   33.3%  100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                1   1   0   50.0%  100.0%
intervention_is_significant                                                            1   1   0   50.0%  100.0%
other_indicators_of_public_involvement                                                 0   1   1    0.0%    0.0%
channeled_to_group_of_undertakings                                                     3   1   0   75.0%  100.0%
is_implementation_of                                                                   2   1   0   66.7%  100.0%
no_member_state_discretion                                                             1   1   0   50.0%  100.0%
parsed_value_granted_services                                                          2   1   2   66.7%   50.0%
public_procurement_procedure_used                                                      1   1   0   50.0%  100.0%
tender_used                                                                            1   1   0   50.0%  100.0%
fallback_act_of_economic_nature                                                        0   1   0    0.0%    0.0%
resource_of_body_appointed_by_state_to_administer_measure                              2   1   0   66.7%  100.0%
was_designated                                                                         4   1   0   80.0%  100.0%
comparable_situation                                                                   0   1   0    0.0%    0.0%
loan                                                                                   0   1   0    0.0%    0.0%
parsed_assets_gained                                                                   0   1   0    0.0%    0.0%
exemptions_reductions_taxes                                                            4   0   0  100.0%  100.0%
purchase_lease_rent                                                                    0   0   1    0.0%    0.0%
same_terms_and_conditions                                                              1   0   0  100.0%  100.0%
public_undertaking_of_intra_state                                                      2   0   0  100.0%  100.0%
intrastate_of                                                                          7   0   0  100.0%  100.0%
textual_evidence_of_improved_financial_valuation                                       2   0   1  100.0%   66.7%
parent_is_shareholder_of                                                               1   0   0  100.0%  100.0%
is_public_service_obligation                                                           0   0   4    0.0%    0.0%
compensation_params_predefined                                                         3   0   0  100.0%  100.0%
compensation_params_objective                                                          3   0   0  100.0%  100.0%
compensation_params_transparent                                                        1   0   2  100.0%   33.3%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit   3   0   0  100.0%  100.0%
reimbursement_of_illegally_levied_charges_or_dues                                      1   0   0  100.0%  100.0%
designed_to_minimise_cost_to_community                                                 1   0   0  100.0%  100.0%
waiver_private_law_claims                                                              1   0   0  100.0%  100.0%
converting_private_law_claims                                                          1   0   0  100.0%  100.0%
strong_public_supervision                                                              2   0   0  100.0%  100.0%
adopted__or_administered_by                                                            0   0   1    0.0%    0.0%
resource_from_international_or_union_fund                                              1   0   0  100.0%  100.0%
usage_discretion_by_national_authorities                                               1   0   0  100.0%  100.0%
market_price_goods_service                                                             0   0   1    0.0%    0.0%
sell_price_domain_resources_rights                                                     1   0   0  100.0%  100.0%
system_price_domain_resources_rights                                                   1   0   0  100.0%  100.0%
domain_resources_rights_priced_below_market_rate_textual_evidence                      1   0   0  100.0%  100.0%
```

### Overall predicate performance

```text
 TP   FP  FN   Prec    Rec     F1
---------------------------------
230  375  29  38.0%  88.8%  53.2%
```

## Source citation evaluation

```text
Case  Matched              Src_OK  Src_WRONG  Src_acc
-----------------------------------------------------
01          7                 7.0        0.0   100.0%
02          6   5.778800783071405        0.0    96.3%
03         13   9.336402349214215        3.0    71.8%
04         10   9.472366552741015        0.0    94.7%
05         10   7.778800783071405        2.0    77.8%
06          8   6.778800783071405        1.0    84.7%
07          7   5.606530659712633        1.0    80.1%
08         12   8.735758882342886        2.0    72.8%
09          7                 7.0        0.0   100.0%
10         18  15.778800783071405        2.0    87.7%
11         17                14.0        3.0    82.4%
12         11    8.38533144278404        2.0    76.2%
13          8   6.213061319425266        1.0    77.7%
14          6   4.385331442784039        1.0    73.1%
15         30   24.67280469842843        4.0    82.2%
16          9                 7.0        2.0    77.8%
17         10                 3.0        7.0    30.0%
18         12   9.778800783071404        2.0    81.5%
19          7                 6.0        1.0    85.7%
20          8                 8.0        0.0   100.0%
21          4   1.778800783071405        2.0    44.5%
22          8   6.778800783071405        1.0    84.7%
```

### Per-predicate source summary

```text
Predicate                                                                             Matched  Src_OK  Src_WRONG  Src_acc
-------------------------------------------------------------------------------------------------------------------------
achieving_policy_objective                                                                  1    0.78       0.00    77.9%
active_resource_flow                                                                       14   10.78       3.00    77.0%
adopted_or_administered_by                                                                 24   21.78       2.00    90.7%
capital_injection                                                                           3    2.00       1.00    66.7%
channeled_to_group_of_undertakings                                                          3    1.00       2.00    33.3%
clearly_defined                                                                             4    4.00       0.00   100.0%
compensation_for_obligation                                                                 6    3.37       2.00    56.1%
compensation_params_objective                                                               3    3.00       0.00   100.0%
compensation_params_predefined                                                              3    2.00       1.00    66.7%
compensation_params_transparent                                                             1    0.00       1.00     0.0%
converting_private_law_claims                                                               1    0.00       1.00     0.0%
designed_to_minimise_cost_to_community                                                      1    1.00       0.00   100.0%
direct_targeting                                                                           27   24.56       2.00    91.0%
domain_resources_rights_priced_below_market_rate_textual_evidence                           1    1.00       0.00   100.0%
ex_ante_evaluation                                                                          4    3.34       0.00    83.4%
exemptions_reductions_taxes                                                                 4    4.00       0.00   100.0%
expert_evaluation_on_measure_or_similar_action                                              5    4.34       0.00    86.7%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                     1    0.61       0.00    60.7%
granting_access_to_public_domain_resources_special_or_exclusive_rights                      2    0.78       1.00    38.9%
intervention_carried_at_same_time                                                           1    0.00       1.00     0.0%
intervention_decided_at_same_time                                                           1    0.00       1.00     0.0%
intervention_is_significant                                                                 1    1.00       0.00   100.0%
intrastate_of                                                                               7    5.00       2.00    71.4%
is_implementation_of                                                                        2    2.00       0.00   100.0%
is_public_undertaking                                                                       3    3.00       0.00   100.0%
is_shareholder_of                                                                           1    1.00       0.00   100.0%
monetary_subsidy                                                                            4    3.00       1.00    75.0%
no_member_state_discretion                                                                  1    1.00       0.00   100.0%
not_in_favour_of_measure_or_similar_action                                                  5    5.00       0.00   100.0%
parent_is_shareholder_of                                                                    1    0.00       1.00     0.0%
parsed_costs_relieved_monetary_obligations                                                  4    3.78       0.00    94.5%
parsed_money_received                                                                      12   10.86       0.00    90.5%
parsed_money_spent                                                                          1    1.00       0.00   100.0%
parsed_value_granted_rights_licenses                                                        1    0.78       0.00    77.9%
parsed_value_granted_services                                                               2    2.00       0.00   100.0%
parsed_value_received_rights_licenses                                                       1    1.00       0.00   100.0%
public_intra_state_authority                                                                5    2.00       3.00    40.0%
public_procurement_procedure_used                                                           1    1.00       0.00   100.0%
public_state_authority                                                                     16   11.00       5.00    68.8%
public_undertaking_of_intra_state                                                           2    2.00       0.00   100.0%
public_undertaking_of_state                                                                 1    1.00       0.00   100.0%
regulatory_capacity                                                                         2    0.61       1.00    30.3%
reimbursement_of_illegally_levied_charges_or_dues                                           1    1.00       0.00   100.0%
resource_from_international_or_union_fund                                                   1    0.00       1.00     0.0%
resource_of_body_appointed_by_state_to_administer_measure                                   2    1.78       0.00    88.9%
resource_of_central_state_entity                                                            6    5.00       1.00    83.3%
resource_of_intrastate_entity                                                               3    3.00       0.00   100.0%
resource_of_private_body                                                                    1    1.00       0.00   100.0%
resource_of_public_undertaking                                                              2    2.00       0.00   100.0%
same_terms_and_conditions                                                                   1    0.00       1.00     0.0%
secondary_effects                                                                           3    2.78       0.00    92.6%
sell_lease_rent_similar                                                                     1    0.00       1.00     0.0%
strong_public_supervision                                                                   2    2.00       0.00   100.0%
tax_related                                                                                 4    3.61       0.00    90.2%
tender_used                                                                                 1    1.00       0.00   100.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit        3    2.37       0.00    78.9%
textual_evidence_of_improved_financial_situation                                            5    4.78       0.00    95.6%
textual_evidence_of_improved_financial_valuation                                            2    1.00       1.00    50.0%
under_public_control                                                                        1    0.61       0.00    60.7%
usage_discretion_by_national_authorities                                                    1    1.00       0.00   100.0%
waiver_private_law_claims                                                                   1    0.00       1.00     0.0%
was_designated                                                                              4    4.00       0.00   100.0%
```

### Source summary

```text
Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------
    228  183.26      37.00    80.4%
```

## Reasoning evaluation (Prolog)

_Rule base: `data/rule_base_art_107/state_aid_107.pl`. Target compared against gold reasoning: state_aid/2._

### Per-case reasoning summary

```text
Case    TP  FP  FN    Prec     Rec      F1
------------------------------------------
case01   1   0   0  100.0%  100.0%  100.0%
case02   1   0   0  100.0%  100.0%  100.0%
case03   0   0   0    0.0%    0.0%    0.0%
case04   0   0   1    0.0%    0.0%    0.0%
case05   1   0   0  100.0%  100.0%  100.0%
case06   1   0   0  100.0%  100.0%  100.0%
case07   0   1   0    0.0%    0.0%    0.0%
case08   1   0   0  100.0%  100.0%  100.0%
case09   0   0   0    0.0%    0.0%    0.0%
case10   0   0   1    0.0%    0.0%    0.0%
case11   0   1   0    0.0%    0.0%    0.0%
case12   1   0   0  100.0%  100.0%  100.0%
case13   1   0   0  100.0%  100.0%  100.0%
case14   0   1   0    0.0%    0.0%    0.0%
case15   0   0   3    0.0%    0.0%    0.0%
case16   0   1   0    0.0%    0.0%    0.0%
case17   1   0   0  100.0%  100.0%  100.0%
case18   2   0   0  100.0%  100.0%  100.0%
case19   0   0   1    0.0%    0.0%    0.0%
case20   0   0   1    0.0%    0.0%    0.0%
case21   1   0   0  100.0%  100.0%  100.0%
case22   1   0   0  100.0%  100.0%  100.0%
```

### Overall reasoning performance

```text
TP  FP  FN   Prec    Rec     F1
-------------------------------
12   4   7  75.0%  63.2%  68.6%
```
