% 1_financial_activa
parsed_costs_relieved_monetary_obligations('aerolyze sa', 'sri_debt_waiver_2012', 18000000). % [14],[15]
parsed_money_received('aerolyze sa', 'developpement_occitanie_loan_conversion_2012', 6500000). % [17]
parsed_money_received('aerolyze sa', 'developpement_occitanie_capital_injection_2012', 7500000). % [18]
parsed_money_received('aerolyze sa', 'capinvest_new_equity_2012', 21000000). % [21]
parsed_money_received('aerolyze sa', 'banking_consortium_funding_2012', 11500000). % [21]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('developpement_occitanie_capital_injection_2012'). % [18]
converting_private_law_claims('developpement_occitanie_loan_conversion_2012'). % [17]
waiver_private_law_claims('sri_debt_waiver_2012'). % [14],[15]
capital_injection('capinvest_new_equity_2012'). % [21]
capital_injection('banking_consortium_funding_2012'). % [21]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver_2012'). % [14],[15],[16]
monetary_subsidy('developpement_occitanie_loan_conversion_2012'). % [17]
monetary_subsidy('developpement_occitanie_capital_injection_2012'). % [18],[19]

% 6_MEO
intervention_decided_at_same_time('sri_debt_waiver_2012', 'société de restructuration industrielle', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('developpement_occitanie_capital_injection_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('developpement_occitanie_loan_conversion_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('capinvest_new_equity_2012', 'capinvest sas', 'société de restructuration industrielle'). % [9],[21]
intervention_decided_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'société de restructuration industrielle'). % [21],[22]
intervention_carried_at_same_time('sri_debt_waiver_2012', 'société de restructuration industrielle', 'capinvest sas'). % [9],[21]
intervention_carried_at_same_time('developpement_occitanie_capital_injection_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_carried_at_same_time('developpement_occitanie_loan_conversion_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_carried_at_same_time('capinvest_new_equity_2012', 'capinvest sas', 'société de restructuration industrielle'). % [9],[21]
intervention_carried_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'société de restructuration industrielle'). % [21],[22]
intervention_is_significant('capinvest sas'). % [21],[24]
intervention_is_significant('banking consortium'). % [21],[26]
textual_evidence_worse_financial_terms('sri_debt_waiver_2012'). % [31]
textual_evidence_worse_financial_terms('developpement_occitanie_capital_injection_2012'). % [31]
textual_evidence_worse_financial_terms('developpement_occitanie_loan_conversion_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_opinion_unprofitability_2012', 'experts', 'sri_debt_waiver_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_opinion_unprofitability_2012', 'experts', 'developpement_occitanie_capital_injection_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_opinion_unprofitability_2012', 'experts', 'developpement_occitanie_loan_conversion_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_opinion_unprofitability_2012', 'sri_debt_waiver_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_opinion_unprofitability_2012', 'developpement_occitanie_capital_injection_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_opinion_unprofitability_2012', 'developpement_occitanie_loan_conversion_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('sri_debt_waiver_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('developpement_occitanie_capital_injection_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('developpement_occitanie_loan_conversion_2012'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver_2012', 'aerolyze sa'). % [14],[15]
direct_targeting('developpement_occitanie_loan_conversion_2012', 'aerolyze sa'). % [17]
direct_targeting('developpement_occitanie_capital_injection_2012', 'aerolyze sa'). % [18]
direct_targeting('capinvest_new_equity_2012', 'aerolyze sa'). % [21]
direct_targeting('banking_consortium_funding_2012', 'aerolyze sa'). % [21]

% 8_active_transfer_of_resources
active_resource_flow('sri_debt_waiver_2012', 'sri_debt_writeoff'). % [14],[15],[16]
resource_of_central_state_entity('sri_debt_writeoff'). % [4],[16]
active_resource_flow('developpement_occitanie_capital_injection_2012', 'developpement_occitanie_internal_funds_2012'). % [18],[19]
resource_of_intrastate_entity('developpement_occitanie_internal_funds_2012'). % [19],[5]
active_resource_flow('developpement_occitanie_loan_conversion_2012', 'developpement_occitanie_loan_2012'). % [17]
resource_of_intrastate_entity('developpement_occitanie_loan_2012'). % [17],[5]
active_resource_flow('capinvest_new_equity_2012', 'capinvest_internal_resources_2012'). % [21]
resource_of_private_body('capinvest_internal_resources_2012'). % [5]
active_resource_flow('banking_consortium_funding_2012', 'banking_consortium_funds_2012'). % [21]
resource_of_private_body('banking_consortium_funds_2012'). % [21]
active_resource_flow('banking_consortium_funding_2012', 'banking_consortium_public_funds_2012'). % [21]
resource_of_intrastate_entity('banking_consortium_public_funds_2012'). % [21]

% 9_foregoing_revenue
general_waiving_revenue_public_or_criminal_law('sri_debt_waiver_2012'). % [14],[15]

% 10_imputability
adopted_or_administered_by('sri_debt_waiver_2012', 'société de restructuration industrielle'). % [14]
adopted_or_administered_by('developpement_occitanie_loan_conversion_2012', 'developpement occitanie sa'). % [17]
adopted_or_administered_by('developpement_occitanie_capital_injection_2012', 'developpement occitanie sa'). % [18]
adopted_or_administered_by('capinvest_new_equity_2012', 'capinvest sas'). % [21]
adopted_or_administered_by('banking_consortium_funding_2012', 'banking consortium'). % [21]
is_public_undertaking('société de restructuration industrielle'). % [4]
is_public_undertaking('developpement occitanie sa'). % [7]
public_undertaking_of_state('société de restructuration industrielle', 'france'). % [4]
public_undertaking_of_intra_state('developpement occitanie sa', 'region of occitanie'). % [7]
intrastate_of('region of occitanie', 'france'). % [7]
public_state_authority('ministry of economics', 'france'). % [11]
decision_dependence_on_state_or_intra_state('société de restructuration industrielle', 'sri_debt_waiver_2012'). % [11],[12]
acted_on_government_directives('société de restructuration industrielle', 'sri_debt_waiver_2012'). % [12]
strong_public_supervision('developpement occitanie sa', 'developpement_occitanie_capital_injection_2012'). % [20]
strong_public_supervision('developpement occitanie sa', 'developpement_occitanie_loan_conversion_2012'). % [20]
organic_link_with_state_or_intra_state('société de restructuration industrielle'). % [4]
organic_link_with_state_or_intra_state('developpement occitanie sa'). % [7]
strategic_sector('société de restructuration industrielle'). % [12]
strategic_sector('developpement occitanie sa'). % [12]
not_competing_under_normal_conditions('société de restructuration industrielle'). % [4]
not_competing_under_normal_conditions('developpement occitanie sa'). % [7]
