# Evaluation for model `gpt-4.1`

## Per-case summary

```text
Case    TP  FP  FN   Prec     Rec     F1
----------------------------------------
case01   7   1   0  87.5%  100.0%  93.3%
case02   5   5   1  50.0%   83.3%  62.5%
case03  12  35   2  25.5%   85.7%  39.3%
case04  11  13   1  45.8%   91.7%  61.1%
case05  10   7   1  58.8%   90.9%  71.4%
case06   6   7   3  46.2%   66.7%  54.5%
case07   6  20   2  23.1%   75.0%  35.3%
case08  12  10   1  54.5%   92.3%  68.6%
case09   7   3   0  70.0%  100.0%  82.4%
case10  17   9   4  65.4%   81.0%  72.3%
case11  18  22   5  45.0%   78.3%  57.1%
case12   8   8   3  50.0%   72.7%  59.3%
case13   6  34   2  15.0%   75.0%  25.0%
case14   6   4   0  60.0%  100.0%  75.0%
case15  25  51   6  32.9%   80.6%  46.7%
case16   8  14   3  36.4%   72.7%  48.5%
case17  10   6   0  62.5%  100.0%  76.9%
case18  10  10   2  50.0%   83.3%  62.5%
case19   8  23   3  25.8%   72.7%  38.1%
case20   8   3   0  72.7%  100.0%  84.2%
case21   4  17   4  19.0%   50.0%  27.6%
case22   7   8   5  46.7%   58.3%  51.9%
```

## Per-predicate summary (all cases)

```text
Predicate                                                                                        TP  FP  FN    Prec     Rec
---------------------------------------------------------------------------------------------------------------------------
active_resource_flow                                                                             14  15   0   48.3%  100.0%
achieving_policy_objective                                                                        1  14   0    6.7%  100.0%
monetary_subsidy                                                                                  4  13   0   23.5%  100.0%
measure_scope_indicates_involvement                                                               0  13   0    0.0%    0.0%
resource_of_central_state_entity                                                                  6  10   0   37.5%  100.0%
adopted_or_administered_by                                                                       24  10   0   70.6%  100.0%
actual_price_goods_service                                                                        1  10   0    9.1%  100.0%
parsed_money_received                                                                            11   9   1   55.0%   91.7%
measure_financial_terms                                                                           0   9   1    0.0%    0.0%
organic_link_with_state_or_intra_state                                                            0   8   0    0.0%    0.0%
parsed_value_received_rights_licenses                                                             0   7   2    0.0%    0.0%
textual_evidence_worse_financial_terms                                                            0   6   0    0.0%    0.0%
not_competing_under_normal_conditions                                                             0   6   0    0.0%    0.0%
public_service_obligation                                                                         0   6   0    0.0%    0.0%
direct_targeting                                                                                 26   5   2   83.9%   92.9%
intervention_decided_at_same_time                                                                 1   5   0   16.7%  100.0%
intervention_carried_at_same_time                                                                 1   5   0   16.7%  100.0%
is_public_undertaking                                                                             3   5   0   37.5%  100.0%
resource_of_intrastate_entity                                                                     3   5   0   37.5%  100.0%
public_undertaking_of_state                                                                       1   5   0   16.7%  100.0%
strategic_sector                                                                                  0   5   0    0.0%    0.0%
regulatory_capacity                                                                               1   5   1   16.7%   50.0%
compensation_for_obligation                                                                       6   5   2   54.5%   75.0%
public_state_authority                                                                           16   4   0   80.0%  100.0%
economic_objective_similar_to_private_investor                                                    0   4   0    0.0%    0.0%
expert_evaluation_on_measure_or_similar_action                                                    4   4   1   50.0%   80.0%
textual_evidence_liquidation_or_reduction_more_economic                                           0   4   0    0.0%    0.0%
revenue_loss_is_justified_by_policy                                                               0   4   0    0.0%    0.0%
selection_process_for_measure                                                                     0   4   1    0.0%    0.0%
parsed_money_spent                                                                                1   3   1   25.0%   50.0%
capital_injection                                                                                 3   3   0   50.0%  100.0%
is_shareholder_of                                                                                 1   3   0   25.0%  100.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                            2   3   0   40.0%  100.0%
resource_of_private_body                                                                          1   3   0   25.0%  100.0%
market_price_goods_service                                                                        1   3   0   25.0%  100.0%
public_intra_state_authority                                                                      5   3   0   62.5%  100.0%
decision_dependence_on_state_or_intra_state                                                       0   3   0    0.0%    0.0%
goods_or_services_priced_below_market_value_textual_evidence                                      0   3   0    0.0%    0.0%
clearly_defined                                                                                   4   3   0   57.1%  100.0%
parsed_value_granted_services                                                                     2   3   2   40.0%   50.0%
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit   0   3   0    0.0%    0.0%
transparent                                                                                       0   3   1    0.0%    0.0%
non_discriminatory                                                                                0   3   1    0.0%    0.0%
ex_ante                                                                                           0   3   1    0.0%    0.0%
acted_on_government_directives                                                                    0   3   0    0.0%    0.0%
access_domain_resources_rights                                                                    0   3   0    0.0%    0.0%
intervention_is_significant                                                                       1   2   0   33.3%  100.0%
purchase_lease_rent_similar                                                                       0   2   0    0.0%    0.0%
sell_lease_rent_similar                                                                           1   2   0   33.3%  100.0%
follows_shareholder_objectives                                                                    0   2   2    0.0%    0.0%
further_option_of_public_authority                                                                0   2   0    0.0%    0.0%
ex_ante_evaluation                                                                                1   2   4   33.3%   20.0%
not_in_favour_of_measure_or_similar_action                                                        4   2   1   66.7%   80.0%
integrated_into_public_administration                                                             0   2   0    0.0%    0.0%
textual_evidence_of_improved_financial_situation                                                  3   2   3   60.0%   50.0%
caused_change_of_financial_value                                                                  0   2   0    0.0%    0.0%
general_waiving_revenue_public_or_criminal_law                                                    0   2   0    0.0%    0.0%
reasonable_profit                                                                                 0   2   0    0.0%    0.0%
qualitative_selection_criteria                                                                    0   2   0    0.0%    0.0%
market_value_domain_resources_rights                                                              0   2   0    0.0%    0.0%
tax_related                                                                                       4   1   0   80.0%  100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                           1   1   0   50.0%  100.0%
resource_of_public_undertaking                                                                    1   1   1   50.0%   50.0%
intrastate_of                                                                                     7   1   0   87.5%  100.0%
expert_financial_expectation                                                                      0   1   1    0.0%    0.0%
other_indicators_of_public_involvement                                                            0   1   1    0.0%    0.0%
expected_return                                                                                   0   1   0    0.0%    0.0%
textual_evidence_of_improved_financial_valuation                                                  2   1   1   66.7%   66.7%
secondary_effects                                                                                 2   1   1   66.7%   66.7%
waiver_private_law_claims                                                                         1   1   0   50.0%  100.0%
compensation_params_predefined                                                                    3   1   0   75.0%  100.0%
compensation_params_objective                                                                     3   1   0   75.0%  100.0%
social_policy                                                                                     0   1   0    0.0%    0.0%
public_procurement_procedure_used                                                                 1   1   0   50.0%  100.0%
actual_costs                                                                                      0   1   0    0.0%    0.0%
fallback_act_of_economic_nature                                                                   0   1   0    0.0%    0.0%
tender_used                                                                                       1   1   0   50.0%  100.0%
competitive                                                                                       0   1   0    0.0%    0.0%
channeled_to_identifiable_undertaking_s                                                           0   1   0    0.0%    0.0%
resource_of_body_appointed_by_state_to_administer_measure                                         2   1   0   66.7%  100.0%
strong_public_supervision                                                                         2   1   0   66.7%  100.0%
domain_resources_rights_priced_below_market_rate_textual_evidence                                 1   1   0   50.0%  100.0%
parsed_assets_gained                                                                              0   1   0    0.0%    0.0%
textual_evidence_worse_nonfinancial_terms                                                         0   1   0    0.0%    0.0%
system_price_domain_resources_rights                                                              0   1   1    0.0%    0.0%
domain_resources_rights_priced_below_system_rate_textual_evidence                                 0   1   0    0.0%    0.0%
parsed_costs_relieved_monetary_obligations                                                        2   0   2  100.0%   50.0%
exemptions_reductions_taxes                                                                       4   0   0  100.0%  100.0%
parsed_value_granted_rights_licenses                                                              0   0   1    0.0%    0.0%
purchase_lease_rent                                                                               0   0   1    0.0%    0.0%
same_terms_and_conditions                                                                         1   0   0  100.0%  100.0%
public_undertaking_of_intra_state                                                                 2   0   0  100.0%  100.0%
channeled_to_group_of_undertakings                                                                2   0   1  100.0%   66.7%
parent_is_shareholder_of                                                                          0   0   1    0.0%    0.0%
is_public_service_obligation                                                                      0   0   4    0.0%    0.0%
compensation_params_transparent                                                                   3   0   0  100.0%  100.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit              3   0   0  100.0%  100.0%
reimbursement_of_illegally_levied_charges_or_dues                                                 1   0   0  100.0%  100.0%
designed_to_minimise_cost_to_community                                                            1   0   0  100.0%  100.0%
under_public_control                                                                              0   0   1    0.0%    0.0%
was_designated                                                                                    2   0   2  100.0%   50.0%
converting_private_law_claims                                                                     1   0   0  100.0%  100.0%
adopted__or_administered_by                                                                       0   0   1    0.0%    0.0%
resource_from_international_or_union_fund                                                         1   0   0  100.0%  100.0%
usage_discretion_by_national_authorities                                                          1   0   0  100.0%  100.0%
is_implementation_of                                                                              2   0   0  100.0%  100.0%
no_member_state_discretion                                                                        1   0   0  100.0%  100.0%
sell_price_domain_resources_rights                                                                0   0   1    0.0%    0.0%
```

## Overall model performance

```text
 TP   FP  FN   Prec    Rec     F1
---------------------------------
211  310  48  40.5%  81.5%  54.1%
```

## Source citation evaluation

```text
Case  Matched             Src_OK  Src_WRONG  Src_acc
----------------------------------------------------
01          7                7.0        0.0   100.0%
02          5                5.0        0.0   100.0%
03         12                6.0        6.0    50.0%
04         11                9.0        2.0    81.8%
05         10                7.0        3.0    70.0%
06          6                5.0        1.0    83.3%
07          6                6.0        0.0   100.0%
08         12  6.778800783071405        5.0    56.5%
09          7                6.0        1.0    85.7%
10         17  9.778800783071404        7.0    57.5%
11         18               12.0        6.0    66.7%
12          8                6.0        2.0    75.0%
13          6                5.0        1.0    83.3%
14          6  3.606530659712633        2.0    60.1%
15         25               20.0        5.0    80.0%
16          8                3.0        5.0    37.5%
17         10                3.0        7.0    30.0%
18         10                7.0        3.0    70.0%
19          8                6.0        2.0    75.0%
20          8                7.0        1.0    87.5%
21          4                2.0        2.0    50.0%
22          7                4.0        3.0    57.1%
```

### Per-predicate source summary

```text
Predicate                                                                             Matched  Src_OK  Src_WRONG  Src_acc
-------------------------------------------------------------------------------------------------------------------------
achieving_policy_objective                                                                  1    0.00       1.00     0.0%
active_resource_flow                                                                       14    9.78       4.00    69.8%
actual_price_goods_service                                                                  1    0.00       1.00     0.0%
adopted_or_administered_by                                                                 24   21.00       3.00    87.5%
capital_injection                                                                           3    2.00       1.00    66.7%
channeled_to_group_of_undertakings                                                          2    0.00       2.00     0.0%
clearly_defined                                                                             4    3.00       1.00    75.0%
compensation_for_obligation                                                                 6    1.78       4.00    29.6%
compensation_params_objective                                                               3    1.00       2.00    33.3%
compensation_params_predefined                                                              3    2.00       1.00    66.7%
compensation_params_transparent                                                             3    1.00       2.00    33.3%
converting_private_law_claims                                                               1    0.00       1.00     0.0%
designed_to_minimise_cost_to_community                                                      1    1.00       0.00   100.0%
direct_targeting                                                                           26   21.00       5.00    80.8%
domain_resources_rights_priced_below_market_rate_textual_evidence                           1    0.00       1.00     0.0%
ex_ante_evaluation                                                                          1    1.00       0.00   100.0%
exemptions_reductions_taxes                                                                 4    4.00       0.00   100.0%
expert_evaluation_on_measure_or_similar_action                                              4    4.00       0.00   100.0%
firm_and_concrete_commitment_to_make_resources_available_at_later_point                     1    1.00       0.00   100.0%
granting_access_to_public_domain_resources_special_or_exclusive_rights                      2    1.00       1.00    50.0%
intervention_carried_at_same_time                                                           1    0.00       1.00     0.0%
intervention_decided_at_same_time                                                           1    0.00       1.00     0.0%
intervention_is_significant                                                                 1    1.00       0.00   100.0%
intrastate_of                                                                               7    3.00       4.00    42.9%
is_implementation_of                                                                        2    1.00       1.00    50.0%
is_public_undertaking                                                                       3    3.00       0.00   100.0%
is_shareholder_of                                                                           1    1.00       0.00   100.0%
market_price_goods_service                                                                  1    1.00       0.00   100.0%
monetary_subsidy                                                                            4    3.00       1.00    75.0%
no_member_state_discretion                                                                  1    1.00       0.00   100.0%
not_in_favour_of_measure_or_similar_action                                                  4    3.00       1.00    75.0%
parsed_costs_relieved_monetary_obligations                                                  2    2.00       0.00   100.0%
parsed_money_received                                                                      11   10.00       1.00    90.9%
parsed_money_spent                                                                          1    1.00       0.00   100.0%
parsed_value_granted_services                                                               2    2.00       0.00   100.0%
public_intra_state_authority                                                                5    2.00       3.00    40.0%
public_procurement_procedure_used                                                           1    0.00       1.00     0.0%
public_state_authority                                                                     16   11.00       5.00    68.8%
public_undertaking_of_intra_state                                                           2    2.00       0.00   100.0%
public_undertaking_of_state                                                                 1    1.00       0.00   100.0%
regulatory_capacity                                                                         1    0.61       0.00    60.7%
reimbursement_of_illegally_levied_charges_or_dues                                           1    0.00       1.00     0.0%
resource_from_international_or_union_fund                                                   1    0.00       1.00     0.0%
resource_of_body_appointed_by_state_to_administer_measure                                   2    2.00       0.00   100.0%
resource_of_central_state_entity                                                            6    4.00       2.00    66.7%
resource_of_intrastate_entity                                                               3    1.00       2.00    33.3%
resource_of_private_body                                                                    1    0.00       1.00     0.0%
resource_of_public_undertaking                                                              1    1.00       0.00   100.0%
same_terms_and_conditions                                                                   1    0.00       1.00     0.0%
secondary_effects                                                                           2    1.00       1.00    50.0%
sell_lease_rent_similar                                                                     1    0.00       1.00     0.0%
strong_public_supervision                                                                   2    2.00       0.00   100.0%
tax_related                                                                                 4    4.00       0.00   100.0%
tender_used                                                                                 1    1.00       0.00   100.0%
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit        3    1.00       2.00    33.3%
textual_evidence_of_improved_financial_situation                                            3    2.00       1.00    66.7%
textual_evidence_of_improved_financial_valuation                                            2    2.00       0.00   100.0%
usage_discretion_by_national_authorities                                                    1    1.00       0.00   100.0%
waiver_private_law_claims                                                                   1    0.00       1.00     0.0%
was_designated                                                                              2    1.00       1.00    50.0%
```

### Source summary

```text
Matched  Src_OK  Src_WRONG  Src_acc
-----------------------------------
    211  146.16      64.00    69.3%
```
