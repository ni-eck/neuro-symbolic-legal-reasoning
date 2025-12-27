# Evaluation for model `gpt-5`

## Per-case summary

```text
Case    TP  FP  FN   Prec     Rec     F1
----------------------------------------
case01   7   2   0  77.8%  100.0%  87.5%
case02   5   6   1  45.5%   83.3%  58.8%
case03  13  36   1  26.5%   92.9%  41.3%
case04  10  13   2  43.5%   83.3%  57.1%
case05  10  12   1  45.5%   90.9%  60.6%
case06   9   6   0  60.0%  100.0%  75.0%
case07   6  19   2  24.0%   75.0%  36.4%
case08  12  14   1  46.2%   92.3%  61.5%
case09   7   3   0  70.0%  100.0%  82.4%
case10  17   8   4  68.0%   81.0%  73.9%
case11  13  17  10  43.3%   56.5%  49.1%
case12  11  18   0  37.9%  100.0%  55.0%
case13   8  75   0   9.6%  100.0%  17.6%
case14   6   8   0  42.9%  100.0%  60.0%
case15  30  52   1  36.6%   96.8%  53.1%
case16   9  29   2  23.7%   81.8%  36.7%
case17  10   7   0  58.8%  100.0%  74.1%
case18  12  14   0  46.2%  100.0%  63.2%
case19   6  19   5  24.0%   54.5%  33.3%
case20   8   6   0  57.1%  100.0%  72.7%
case21   4  13   4  23.5%   50.0%  32.0%
case22   7  10   5  41.2%   58.3%  48.3%
```

## Per-predicate summary (all cases)

```text
Predicate                                                                                        TP  FP  FN    Prec     Rec
---------------------------------------------------------------------------------------------------------------------------
achieving_policy_objective                                                                        1  37   0    2.6%  100.0%
adopted_or_administered_by                                                                       24  30   0   44.4%  100.0%
active_resource_flow                                                                             14  17   0   45.2%  100.0%
secondary_effects                                                                                 3  16   0   15.8%  100.0%
expert_evaluation_on_measure_or_similar_action                                                    5  15   0   25.0%  100.0%
measure_financial_terms                                                                           0  13   1    0.0%    0.0%
public_state_authority                                                                           16  12   0   57.1%  100.0%
regulatory_capacity                                                                               2  11   0   15.4%  100.0%
is_shareholder_of                                                                                 1  10   0    9.1%  100.0%
monetary_subsidy                                                                                  4   9   0   30.8%  100.0%
direct_targeting                                                                                 26   9   2   74.3%   92.9%
channeled_to_identifiable_undertaking_s                                                           0   9   0    0.0%    0.0%
resource_of_central_state_entity                                                                  6   8   0   42.9%  100.0%
ex_ante_evaluation                                                                                5   8   0   38.5%  100.0%
was_designated                                                                                    4   8   0   33.3%  100.0%
organic_link_with_state_or_intra_state                                                            0   7   0    0.0%    0.0%
is_public_undertaking                                                                             3   6   0   33.3%  100.0%
economic_objective_similar_to_private_investor                                                    0   6   0    0.0%    0.0%
public_undertaking_of_state                                                                       1   6   0   14.3%  100.0%
public_service_obligation                                                                         0   6   0    0.0%    0.0%
parsed_money_received                                                                            10   5   2   66.7%   83.3%
access_domain_resources_rights                                                                    0   5   0    0.0%    0.0%
textual_evidence_worse_financial_terms                                                            0   5   0    0.0%    0.0%
channeled_to_group_of_undertakings                                                                3   5   0   37.5%  100.0%
textual_evidence_of_improved_financial_situation                                                  5   5   1   50.0%   83.3%
comparable_type                                                                                   0   5   0    0.0%    0.0%
decision_dependence_on_state_or_intra_state                                                       0   5   0    0.0%    0.0%
parsed_value_granted_rights_licenses                                                              1   4   0   20.0%  100.0%
parsed_money_spent                                                                                0   4   2    0.0%    0.0%
purchase_lease_rent_similar                                                                       0   4   0    0.0%    0.0%
resource_of_private_body                                                                          1   4   0   20.0%  100.0%
not_in_favour_of_measure_or_similar_action                                                        5   4   0   55.6%  100.0%
selection_process_for_measure                                                                     0   4   1    0.0%    0.0%
parsed_value_received_rights_licenses                                                             1   3   1   25.0%   50.0%
resource_of_public_undertaking                                                                    2   3   0   40.0%  100.0%
capital_injection                                                                                 3   3   0   50.0%  100.0%
sell_lease_rent_similar                                                                           1   3   0   25.0%  100.0%
resource_of_intrastate_entity                                                                     3   3   0   50.0%  100.0%
public_intra_state_authority                                                                      5   3   0   62.5%  100.0%
parsed_other_liabilities_incurred                                                                 0   3   0    0.0%    0.0%
revenue_loss_is_justified_by_policy                                                               0   3   0    0.0%    0.0%
transparent                                                                                       0   3   1    0.0%    0.0%
ex_ante                                                                                           0   3   1    0.0%    0.0%
not_comparable_starting_position                                                                  0   3   0    0.0%    0.0%
qualitative_selection_criteria                                                                    0   3   0    0.0%    0.0%
system_price_domain_resources_rights                                                              0   3   1    0.0%    0.0%
tax_related                                                                                       4   2   0   66.7%  100.0%
intervention_carried_at_same_time                                                                 1   2   0   33.3%  100.0%
follows_shareholder_objectives                                                                    0   2   2    0.0%    0.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                            2   2   0   50.0%  100.0%
market_value_domain_resources_rights                                                              0   2   0    0.0%    0.0%
caused_change_of_financial_value                                                                  0   2   0    0.0%    0.0%
loan                                                                                              0   2   0    0.0%    0.0%
actual_price_goods_service                                                                        0   2   1    0.0%    0.0%
non_discriminatory                                                                                0   2   1    0.0%    0.0%
comparable_situation                                                                              0   2   0    0.0%    0.0%
strategic_sector                                                                                  0   2   0    0.0%    0.0%
not_competing_under_normal_conditions                                                             0   2   0    0.0%    0.0%
acted_on_government_directives                                                                    0   2   0    0.0%    0.0%
measure_scope_indicates_involvement                                                               0   2   0    0.0%    0.0%
intrastate_of                                                                                     7   1   0   87.5%  100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                           1   1   0   50.0%  100.0%
intervention_is_significant                                                                       1   1   0   50.0%  100.0%
expert_financial_expectation                                                                      0   1   1    0.0%    0.0%
textual_evidence_of_improved_financial_valuation                                                  2   1   1   66.7%   66.7%
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit   0   1   0    0.0%    0.0%
social_policy                                                                                     0   1   0    0.0%    0.0%
goods_or_services_priced_below_market_value_textual_evidence                                      0   1   0    0.0%    0.0%
general_waiving_revenue_public_or_criminal_law                                                    0   1   0    0.0%    0.0%
public_procurement_procedure_used                                                                 0   1   1    0.0%    0.0%
tender_used                                                                                       1   1   0   50.0%  100.0%
competitive                                                                                       0   1   0    0.0%    0.0%
under_public_control                                                                              1   1   0   50.0%  100.0%
strong_public_supervision                                                                         2   1   0   66.7%  100.0%
resource_of_body_appointed_by_state_to_administer_measure                                         2   1   0   66.7%  100.0%
textual_evidence_worse_nonfinancial_terms                                                         0   1   0    0.0%    0.0%
is_implementation_of                                                                              2   1   0   66.7%  100.0%
measure_nonfinancial_terms                                                                        0   1   0    0.0%    0.0%
parsed_costs_relieved_monetary_obligations                                                        3   0   1  100.0%   75.0%
exemptions_reductions_taxes                                                                       4   0   0  100.0%  100.0%
purchase_lease_rent                                                                               0   0   1    0.0%    0.0%
intervention_decided_at_same_time                                                                 1   0   0  100.0%  100.0%
same_terms_and_conditions                                                                         1   0   0  100.0%  100.0%
public_undertaking_of_intra_state                                                                 2   0   0  100.0%  100.0%
parent_is_shareholder_of                                                                          0   0   1    0.0%    0.0%
is_public_service_obligation                                                                      0   0   4    0.0%    0.0%
compensation_for_obligation                                                                       5   0   3  100.0%   62.5%
clearly_defined                                                                                   4   0   0  100.0%  100.0%
compensation_params_predefined                                                                    3   0   0  100.0%  100.0%
compensation_params_objective                                                                     3   0   0  100.0%  100.0%
compensation_params_transparent                                                                   1   0   2  100.0%   33.3%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit              3   0   0  100.0%  100.0%
reimbursement_of_illegally_levied_charges_or_dues                                                 1   0   0  100.0%  100.0%
parsed_value_granted_services                                                                     2   0   2  100.0%   50.0%
designed_to_minimise_cost_to_community                                                            0   0   1    0.0%    0.0%
waiver_private_law_claims                                                                         1   0   0  100.0%  100.0%
converting_private_law_claims                                                                     1   0   0  100.0%  100.0%
other_indicators_of_public_involvement                                                            0   0   1    0.0%    0.0%
adopted__or_administered_by                                                                       0   0   1    0.0%    0.0%
resource_from_international_or_union_fund                                                         1   0   0  100.0%  100.0%
usage_discretion_by_national_authorities                                                          1   0   0  100.0%  100.0%
market_price_goods_service                                                                        0   0   1    0.0%    0.0%
no_member_state_discretion                                                                        1   0   0  100.0%  100.0%
sell_price_domain_resources_rights                                                                0   0   1    0.0%    0.0%
domain_resources_rights_priced_below_market_rate_textual_evidence                                 1   0   0  100.0%  100.0%
```

## Overall model performance

```text
 TP   FP  FN   Prec    Rec     F1
---------------------------------
220  387  39  36.2%  84.9%  50.8%
```

## Source citation evaluation

```text
Case  Matched              Src_OK  Src_WRONG  Src_acc
-----------------------------------------------------
01          7                 7.0        0.0   100.0%
02          5                 5.0        0.0   100.0%
03         13                 8.0        5.0    61.5%
04         10                10.0        0.0   100.0%
05         10                 3.0        7.0    30.0%
06          9    7.11520313228562        1.0    79.1%
07          6                 5.0        1.0    83.3%
08         12   8.942933008926847        2.0    74.5%
09          7   6.472366552741015        0.0    92.5%
10         17  13.029968118883824        3.0    76.6%
11         13   9.778800783071405        3.0    75.2%
12         11   7.164132225855443        3.0    65.1%
13          8                 5.0        3.0    62.5%
14          6                 4.0        2.0    66.7%
15         30                26.0        4.0    86.7%
16          9                 7.0        2.0    77.8%
17         10                 2.0        8.0    20.0%
18         12   9.385331442784038        2.0    78.2%
19          6                 5.0        1.0    83.3%
20          8                 7.0        1.0    87.5%
21          4                 2.0        2.0    50.0%
22          7  4.7788007830714045        2.0    68.3%
```

### Per-predicate source summary

```text
Predicate                                                                             Matched  Src_OK  Src_WRONG  Src_acc
-------------------------------------------------------------------------------------------------------------------------
achieving_policy_objective                                                                  1    0.00       1.00     0.0%
active_resource_flow                                                                       14   11.00       3.00    78.6%
adopted_or_administered_by                                                                 24   22.78       1.00    94.9%
capital_injection                                                                           3    2.00       1.00    66.7%
channeled_to_group_of_undertakings                                                          3    0.78       2.00    26.0%
clearly_defined                                                                             4    3.00       1.00    75.0%
compensation_for_obligation                                                                 5    2.78       2.00    55.6%
compensation_params_objective                                                               3    0.61       2.00    20.2%
compensation_params_predefined                                                              3    1.78       1.00    59.3%
compensation_params_transparent                                                             1    0.00       1.00     0.0%
converting_private_law_claims                                                               1    0.00       1.00     0.0%
direct_targeting                                                                           26   22.78       3.00    87.6%
domain_resources_rights_priced_below_market_rate_textual_evidence                           1    1.00       0.00   100.0%
ex_ante_evaluation                                                                          5    4.78       0.00    95.6%
exemptions_reductions_taxes                                                                 4    3.00       1.00    75.0%
expert_evaluation_on_measure_or_similar_action                                              5    5.00       0.00   100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                     1    0.61       0.00    60.7%
granting_access_to_public_domain_resources_special_or_exclusive_rights                      2    1.00       1.00    50.0%
intervention_carried_at_same_time                                                           1    0.00       1.00     0.0%
intervention_decided_at_same_time                                                           1    0.00       1.00     0.0%
intervention_is_significant                                                                 1    1.00       0.00   100.0%
intrastate_of                                                                               7    4.00       3.00    57.1%
is_implementation_of                                                                        2    0.78       1.00    38.9%
is_public_undertaking                                                                       3    3.00       0.00   100.0%
is_shareholder_of                                                                           1    1.00       0.00   100.0%
monetary_subsidy                                                                            4    2.78       1.00    69.5%
no_member_state_discretion                                                                  1    1.00       0.00   100.0%
not_in_favour_of_measure_or_similar_action                                                  5    5.00       0.00   100.0%
parsed_costs_relieved_monetary_obligations                                                  3    3.00       0.00   100.0%
parsed_money_received                                                                      10    7.16       2.00    71.6%
parsed_value_granted_rights_licenses                                                        1    1.00       0.00   100.0%
parsed_value_granted_services                                                               2    2.00       0.00   100.0%
parsed_value_received_rights_licenses                                                       1    1.00       0.00   100.0%
public_intra_state_authority                                                                5    2.00       3.00    40.0%
public_state_authority                                                                     16   12.00       4.00    75.0%
public_undertaking_of_intra_state                                                           2    2.00       0.00   100.0%
public_undertaking_of_state                                                                 1    1.00       0.00   100.0%
regulatory_capacity                                                                         2    1.00       1.00    50.0%
reimbursement_of_illegally_levied_charges_or_dues                                           1    0.47       0.00    47.2%
resource_from_international_or_union_fund                                                   1    0.00       1.00     0.0%
resource_of_body_appointed_by_state_to_administer_measure                                   2    1.78       0.00    88.9%
resource_of_central_state_entity                                                            6    4.00       2.00    66.7%
resource_of_intrastate_entity                                                               3    2.00       1.00    66.7%
resource_of_private_body                                                                    1    0.00       1.00     0.0%
resource_of_public_undertaking                                                              2    2.00       0.00   100.0%
same_terms_and_conditions                                                                   1    0.00       1.00     0.0%
secondary_effects                                                                           3    0.78       2.00    26.0%
sell_lease_rent_similar                                                                     1    0.00       1.00     0.0%
strong_public_supervision                                                                   2    2.00       0.00   100.0%
tax_related                                                                                 4    2.00       2.00    50.0%
tender_used                                                                                 1    1.00       0.00   100.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit        3    2.25       0.00    75.0%
textual_evidence_of_improved_financial_situation                                            5    3.78       1.00    75.6%
textual_evidence_of_improved_financial_valuation                                            2    1.00       1.00    50.0%
under_public_control                                                                        1    1.00       0.00   100.0%
usage_discretion_by_national_authorities                                                    1    1.00       0.00   100.0%
waiver_private_law_claims                                                                   1    0.00       1.00     0.0%
was_designated                                                                              4    4.00       0.00   100.0%
```

### Source summary

```text
Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------
    220  162.67      52.00    73.9%
```
