# Evaluation for model `gpt-5-mini`

## Per-case summary

```text
Case    TP  FP  FN   Prec     Rec     F1
----------------------------------------
case01   7   3   0  70.0%  100.0%  82.4%
case02   6   7   0  46.2%  100.0%  63.2%
case03  13  54   1  19.4%   92.9%  32.1%
case04  12  15   0  44.4%  100.0%  61.5%
case05  10  12   1  45.5%   90.9%  60.6%
case06   8  20   1  28.6%   88.9%  43.2%
case07   6  24   2  20.0%   75.0%  31.6%
case08  12  16   1  42.9%   92.3%  58.5%
case09   7   7   0  50.0%  100.0%  66.7%
case10  17  16   4  51.5%   81.0%  63.0%
case11  17  34   6  33.3%   73.9%  45.9%
case12  11  13   0  45.8%  100.0%  62.9%
case13   6  47   2  11.3%   75.0%  19.7%
case14   6  15   0  28.6%  100.0%  44.4%
case15  23  58   8  28.4%   74.2%  41.1%
case16   9  24   2  27.3%   81.8%  40.9%
case17  10  11   0  47.6%  100.0%  64.5%
case18  10  26   2  27.8%   83.3%  41.7%
case19   7  25   4  21.9%   63.6%  32.6%
case20   8   9   0  47.1%  100.0%  64.0%
case21   4  20   4  16.7%   50.0%  25.0%
case22   9  11   3  45.0%   75.0%  56.3%
```

## Per-predicate summary (all cases)

```text
Predicate                                                                                        TP  FP  FN    Prec     Rec
---------------------------------------------------------------------------------------------------------------------------
measure_financial_terms                                                                           1  27   0    3.6%  100.0%
achieving_policy_objective                                                                        1  22   0    4.3%  100.0%
secondary_effects                                                                                 3  21   0   12.5%  100.0%
monetary_subsidy                                                                                  4  18   0   18.2%  100.0%
active_resource_flow                                                                             14  17   0   45.2%  100.0%
adopted_or_administered_by                                                                       24  16   0   60.0%  100.0%
channeled_to_identifiable_undertaking_s                                                           0  16   0    0.0%    0.0%
parsed_money_spent                                                                                1  13   1    7.1%   50.0%
measure_scope_indicates_involvement                                                               0  13   0    0.0%    0.0%
parsed_money_received                                                                            12  12   0   50.0%  100.0%
direct_targeting                                                                                 26  12   2   68.4%   92.9%
resource_of_central_state_entity                                                                  6  12   0   33.3%  100.0%
public_state_authority                                                                           16   9   0   64.0%  100.0%
economic_objective_similar_to_private_investor                                                    0   9   0    0.0%    0.0%
organic_link_with_state_or_intra_state                                                            0   8   0    0.0%    0.0%
was_designated                                                                                    4   8   0   33.3%  100.0%
compensation_params_predefined                                                                    3   7   0   30.0%  100.0%
intervention_carried_at_same_time                                                                 1   7   0   12.5%  100.0%
capital_injection                                                                                 3   7   0   30.0%  100.0%
expert_evaluation_on_measure_or_similar_action                                                    3   7   2   30.0%   60.0%
textual_evidence_liquidation_or_reduction_more_economic                                           0   7   0    0.0%    0.0%
selection_process_for_measure                                                                     1   7   0   12.5%  100.0%
fallback_act_of_economic_nature                                                                   0   7   0    0.0%    0.0%
channeled_to_group_of_undertakings                                                                3   6   0   33.3%  100.0%
access_domain_resources_rights                                                                    0   6   0    0.0%    0.0%
public_undertaking_of_state                                                                       1   6   0   14.3%  100.0%
ex_ante                                                                                           1   6   0   14.3%  100.0%
compensation_for_obligation                                                                       6   6   2   50.0%   75.0%
clearly_defined                                                                                   4   6   0   40.0%  100.0%
public_service_obligation                                                                         0   6   0    0.0%    0.0%
is_public_undertaking                                                                             3   5   0   37.5%  100.0%
is_shareholder_of                                                                                 1   5   0   16.7%  100.0%
resource_of_intrastate_entity                                                                     3   5   0   37.5%  100.0%
resource_of_private_body                                                                          0   5   1    0.0%    0.0%
textual_evidence_worse_financial_terms                                                            0   5   0    0.0%    0.0%
resource_of_body_appointed_by_state_to_administer_measure                                         2   5   0   28.6%  100.0%
textual_evidence_of_improved_financial_situation                                                  4   5   2   44.4%   66.7%
compensation_params_objective                                                                     3   5   0   37.5%  100.0%
actual_price_goods_service                                                                        0   5   1    0.0%    0.0%
intervention_decided_at_same_time                                                                 1   4   0   20.0%  100.0%
ex_ante_evaluation                                                                                3   4   2   42.9%   60.0%
qualitative_selection_criteria                                                                    0   4   0    0.0%    0.0%
revenue_loss_is_justified_by_policy                                                               0   4   0    0.0%    0.0%
comparable_type                                                                                   0   4   0    0.0%    0.0%
compensation_params_transparent                                                                   1   3   2   25.0%   33.3%
parsed_value_received_rights_licenses                                                             0   3   2    0.0%    0.0%
follows_shareholder_objectives                                                                    1   3   1   25.0%   50.0%
market_value_domain_resources_rights                                                              0   3   0    0.0%    0.0%
public_intra_state_authority                                                                      5   3   0   62.5%  100.0%
parsed_value_granted_services                                                                     2   3   2   40.0%   50.0%
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit   0   3   0    0.0%    0.0%
transparent                                                                                       0   3   1    0.0%    0.0%
acted_on_government_directives                                                                    0   3   0    0.0%    0.0%
measure_nonfinancial_terms                                                                        0   2   0    0.0%    0.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                           1   2   0   33.3%  100.0%
same_terms_and_conditions                                                                         1   2   0   33.3%  100.0%
resource_of_public_undertaking                                                                    2   2   0   50.0%  100.0%
purchase_lease_rent_similar                                                                       0   2   0    0.0%    0.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                            2   2   0   50.0%  100.0%
not_in_favour_of_measure_or_similar_action                                                        3   2   2   60.0%   60.0%
decision_dependence_on_state_or_intra_state                                                       0   2   0    0.0%    0.0%
caused_change_of_financial_value                                                                  0   2   0    0.0%    0.0%
actual_costs                                                                                      0   2   0    0.0%    0.0%
reasonable_profit                                                                                 0   2   0    0.0%    0.0%
competitive                                                                                       0   2   0    0.0%    0.0%
non_discriminatory                                                                                0   2   1    0.0%    0.0%
regulatory_capacity                                                                               2   2   0   50.0%  100.0%
strong_public_supervision                                                                         0   2   2    0.0%    0.0%
textual_evidence_worse_nonfinancial_terms                                                         0   2   0    0.0%    0.0%
not_comparable_starting_position                                                                  0   2   0    0.0%    0.0%
sell_lease_rent_similar                                                                           1   2   0   33.3%  100.0%
parsed_costs_relieved_monetary_obligations                                                        4   1   0   80.0%  100.0%
tax_related                                                                                       4   1   0   80.0%  100.0%
intervention_is_significant                                                                       1   1   0   50.0%  100.0%
expert_financial_expectation                                                                      0   1   1    0.0%    0.0%
parsed_other_liabilities_incurred                                                                 0   1   0    0.0%    0.0%
waiver_private_law_claims                                                                         1   1   0   50.0%  100.0%
converting_private_law_claims                                                                     1   1   0   50.0%  100.0%
public_procurement_procedure_used                                                                 1   1   0   50.0%  100.0%
tender_used                                                                                       1   1   0   50.0%  100.0%
integrated_into_public_administration                                                             0   1   0    0.0%    0.0%
strategic_sector                                                                                  0   1   0    0.0%    0.0%
not_competing_under_normal_conditions                                                             0   1   0    0.0%    0.0%
loan                                                                                              0   1   0    0.0%    0.0%
parsed_assets_gained                                                                              0   1   0    0.0%    0.0%
comparable_situation                                                                              0   1   0    0.0%    0.0%
exemptions_reductions_taxes                                                                       4   0   0  100.0%  100.0%
parsed_value_granted_rights_licenses                                                              1   0   0  100.0%  100.0%
purchase_lease_rent                                                                               0   0   1    0.0%    0.0%
public_undertaking_of_intra_state                                                                 2   0   0  100.0%  100.0%
intrastate_of                                                                                     5   0   2  100.0%   71.4%
textual_evidence_of_improved_financial_valuation                                                  2   0   1  100.0%   66.7%
parent_is_shareholder_of                                                                          0   0   1    0.0%    0.0%
is_public_service_obligation                                                                      0   0   4    0.0%    0.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit              3   0   0  100.0%  100.0%
reimbursement_of_illegally_levied_charges_or_dues                                                 1   0   0  100.0%  100.0%
designed_to_minimise_cost_to_community                                                            1   0   0  100.0%  100.0%
under_public_control                                                                              0   0   1    0.0%    0.0%
other_indicators_of_public_involvement                                                            1   0   0  100.0%  100.0%
adopted__or_administered_by                                                                       0   0   1    0.0%    0.0%
resource_from_international_or_union_fund                                                         1   0   0  100.0%  100.0%
usage_discretion_by_national_authorities                                                          1   0   0  100.0%  100.0%
market_price_goods_service                                                                        0   0   1    0.0%    0.0%
is_implementation_of                                                                              2   0   0  100.0%  100.0%
no_member_state_discretion                                                                        1   0   0  100.0%  100.0%
sell_price_domain_resources_rights                                                                0   0   1    0.0%    0.0%
system_price_domain_resources_rights                                                              0   0   1    0.0%    0.0%
domain_resources_rights_priced_below_market_rate_textual_evidence                                 1   0   0  100.0%  100.0%
```

## Overall model performance

```text
 TP   FP  FN   Prec    Rec     F1
---------------------------------
218  467  41  31.8%  84.2%  46.2%
```

## Source citation evaluation

```text
Case  Matched              Src_OK  Src_WRONG  Src_acc
-----------------------------------------------------
01          7                 7.0        0.0   100.0%
02          6   5.778800783071405        0.0    96.3%
03         13   7.606530659712633        5.0    58.5%
04         12   7.942933008926847        3.0    66.2%
05         10   6.778800783071405        3.0    67.8%
06          8   5.778800783071405        2.0    72.2%
07          6   5.778800783071405        0.0    96.3%
08         12   6.695496712889445        4.0    55.8%
09          7   6.606530659712633        0.0    94.4%
10         17  13.557601566142809        3.0    79.8%
11         17   12.55760156614281        4.0    73.9%
12         11   8.778800783071405        2.0    79.8%
13          6   4.065305579931595        1.0    67.8%
14          6   4.778800783071405        1.0    79.6%
15         23                17.0        6.0    73.9%
16          9    5.25116733581242        3.0    58.3%
17         10                 4.0        6.0    40.0%
18         10                10.0        0.0   100.0%
19          7                 6.0        1.0    85.7%
20          8   7.606530659712633        0.0    95.1%
21          4   1.778800783071405        2.0    44.5%
22          9   6.385331442784038        2.0    70.9%
```

### Per-predicate source summary

```text
Predicate                                                                             Matched  Src_OK  Src_WRONG  Src_acc
-------------------------------------------------------------------------------------------------------------------------
achieving_policy_objective                                                                  1    0.78       0.00    77.9%
active_resource_flow                                                                       14   10.56       3.00    75.4%
adopted_or_administered_by                                                                 24   20.56       3.00    85.7%
capital_injection                                                                           3    1.00       2.00    33.3%
channeled_to_group_of_undertakings                                                          3    1.00       2.00    33.3%
clearly_defined                                                                             4    3.00       1.00    75.0%
compensation_for_obligation                                                                 6    3.47       1.00    57.9%
compensation_params_objective                                                               3    0.00       3.00     0.0%
compensation_params_predefined                                                              3    0.47       2.00    15.7%
compensation_params_transparent                                                             1    0.00       1.00     0.0%
converting_private_law_claims                                                               1    0.00       1.00     0.0%
designed_to_minimise_cost_to_community                                                      1    1.00       0.00   100.0%
direct_targeting                                                                           26   24.56       1.00    94.5%
domain_resources_rights_priced_below_market_rate_textual_evidence                           1    0.00       1.00     0.0%
ex_ante                                                                                     1    0.00       1.00     0.0%
ex_ante_evaluation                                                                          3    2.78       0.00    92.6%
exemptions_reductions_taxes                                                                 4    4.00       0.00   100.0%
expert_evaluation_on_measure_or_similar_action                                              3    3.00       0.00   100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                     1    1.00       0.00   100.0%
follows_shareholder_objectives                                                              1    1.00       0.00   100.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                      2    1.39       0.00    69.3%
intervention_carried_at_same_time                                                           1    0.00       1.00     0.0%
intervention_decided_at_same_time                                                           1    0.00       1.00     0.0%
intervention_is_significant                                                                 1    1.00       0.00   100.0%
intrastate_of                                                                               5    2.00       3.00    40.0%
is_implementation_of                                                                        2    2.00       0.00   100.0%
is_public_undertaking                                                                       3    3.00       0.00   100.0%
is_shareholder_of                                                                           1    1.00       0.00   100.0%
measure_financial_terms                                                                     1    1.00       0.00   100.0%
monetary_subsidy                                                                            4    2.78       1.00    69.5%
no_member_state_discretion                                                                  1    1.00       0.00   100.0%
not_in_favour_of_measure_or_similar_action                                                  3    2.78       0.00    92.6%
other_indicators_of_public_involvement                                                      1    0.00       1.00     0.0%
parsed_costs_relieved_monetary_obligations                                                  4    3.78       0.00    94.5%
parsed_money_received                                                                      12   10.67       0.00    88.9%
parsed_money_spent                                                                          1    1.00       0.00   100.0%
parsed_value_granted_rights_licenses                                                        1    0.61       0.00    60.7%
parsed_value_granted_services                                                               2    2.00       0.00   100.0%
public_intra_state_authority                                                                5    4.00       1.00    80.0%
public_procurement_procedure_used                                                           1    1.00       0.00   100.0%
public_state_authority                                                                     16   10.00       6.00    62.5%
public_undertaking_of_intra_state                                                           2    2.00       0.00   100.0%
public_undertaking_of_state                                                                 1    1.00       0.00   100.0%
regulatory_capacity                                                                         2    0.78       1.00    38.9%
reimbursement_of_illegally_levied_charges_or_dues                                           1    0.61       0.00    60.7%
resource_from_international_or_union_fund                                                   1    1.00       0.00   100.0%
resource_of_body_appointed_by_state_to_administer_measure                                   2    2.00       0.00   100.0%
resource_of_central_state_entity                                                            6    5.00       1.00    83.3%
resource_of_intrastate_entity                                                               3    2.00       1.00    66.7%
resource_of_public_undertaking                                                              2    0.00       2.00     0.0%
same_terms_and_conditions                                                                   1    0.00       1.00     0.0%
secondary_effects                                                                           3    1.00       2.00    33.3%
selection_process_for_measure                                                               1    1.00       0.00   100.0%
sell_lease_rent_similar                                                                     1    0.00       1.00     0.0%
tax_related                                                                                 4    3.39       0.00    84.6%
tender_used                                                                                 1    1.00       0.00   100.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit        3    2.00       1.00    66.7%
textual_evidence_of_improved_financial_situation                                            4    3.00       1.00    75.0%
textual_evidence_of_improved_financial_valuation                                            2    1.78       0.00    88.9%
usage_discretion_by_national_authorities                                                    1    1.00       0.00   100.0%
waiver_private_law_claims                                                                   1    0.00       1.00     0.0%
was_designated                                                                              4    4.00       0.00   100.0%
```

### Source summary

```text
Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------
    218  161.73      48.00    74.2%
```
