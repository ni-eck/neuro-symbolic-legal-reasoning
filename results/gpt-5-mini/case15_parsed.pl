% 1_financial_activa
parsed_costs_relieved_monetary_obligations('aerolyze_sa','sri_debt_waiver',18000000). % [13],[14],[15],[16]
parsed_costs_relieved_monetary_obligations('aerolyze_sa','devocc_loan_conversion',6500000). % [17]
parsed_money_received('aerolyze_sa','devocc_capital_injection',7500000). % [18],[19]
parsed_money_received('aerolyze_sa','capinvest_new_equity',21000000). % [21]
parsed_money_received('aerolyze_sa','banking_consortium_funding',11500000). % [21]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
waiver_private_law_claims('sri_debt_waiver'). % [14],[15],[16]
converting_private_law_claims('devocc_loan_conversion'). % [17]
capital_injection('devocc_capital_injection'). % [18]
capital_injection('capinvest_new_equity'). % [21]
capital_injection('banking_consortium_funding'). % [21]
is_shareholder_of('sri','aerolyze_sa'). % [4]
is_shareholder_of('capinvest','aerolyze_sa'). % [5]
is_shareholder_of('devocc','aerolyze_sa'). % [7]
follows_shareholder_objectives('capinvest','capinvest_new_equity'). % [21]
economic_objective_similar_to_private_investor('capinvest_new_equity'). % [21]
follows_shareholder_objectives('banking_consortium','banking_consortium_funding'). % [21],[22]
economic_objective_similar_to_private_investor('banking_consortium_funding'). % [21],[22]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver'). % [4],[11],[13],[14],[15],[16]
monetary_subsidy('devocc_capital_injection'). % [17],[18],[19],[20]

% 6_MEO
measure_financial_terms('sri_debt_waiver', 18000000). % [14],[15],[16]
measure_financial_terms('devocc_loan_conversion', 6500000). % [17]
measure_financial_terms('devocc_capital_injection', 7500000). % [18]
measure_financial_terms('capinvest_new_equity', 21000000). % [21]
measure_financial_terms('banking_consortium_funding', 11500000). % [21]
intervention_is_significant('capinvest'). % [24]
intervention_carried_at_same_time('devocc_capital_injection','devocc','capinvest'). % [9],[21],[23]
intervention_carried_at_same_time('devocc_loan_conversion','devocc','capinvest'). % [9],[17],[21],[23]
intervention_carried_at_same_time('capinvest_new_equity','capinvest','banking_consortium'). % [9],[21],[23]
intervention_decided_at_same_time('devocc_capital_injection','devocc','capinvest'). % [9],[21]
intervention_decided_at_same_time('devocc_loan_conversion','devocc','capinvest'). % [9],[17],[21]
not_comparable_starting_position('sri_debt_waiver','sri','capinvest'). % [13],[14],[21]
textual_evidence_liquidation_or_reduction_more_economic('capinvest_new_equity'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('devocc_capital_injection'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('banking_consortium_funding'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('devocc_loan_conversion'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('sri_debt_waiver'). % [31]
expert_evaluation_on_measure_or_similar_action('experts_negative','experts','capinvest_new_equity'). % [31]
ex_ante_evaluation('experts_negative','capinvest_new_equity'). % [31]
not_in_favour_of_measure_or_similar_action('experts_negative','capinvest_new_equity'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver', 'aerolyze_sa'). % [13],[14],[15],[16]
direct_targeting('devocc_loan_conversion', 'aerolyze_sa'). % [17]
direct_targeting('devocc_capital_injection', 'aerolyze_sa'). % [18],[19]
direct_targeting('capinvest_new_equity', 'aerolyze_sa'). % [21]
direct_targeting('banking_consortium_funding', 'aerolyze_sa'). % [21]
secondary_effects('sri_debt_waiver', 'aerolyze_sa', induced_banking_consortium_funding). % [22],[14],[15]
secondary_effects('devocc_loan_conversion', 'aerolyze_sa', induced_banking_consortium_funding). % [22],[17]
secondary_effects('devocc_capital_injection', 'aerolyze_sa', induced_banking_consortium_funding). % [22],[18]

% 8_active_transfer_of_resources
active_resource_flow('sri_debt_waiver','sri'). % [13],[14],[15],[16]
resource_of_public_undertaking('sri'). % [4],[13],[16]
active_resource_flow('devocc_capital_injection','devocc'). % [17],[18],[19]
resource_of_intrastate_entity('devocc'). % [5],[17]
resource_of_public_undertaking('devocc'). % [5],[17]
active_resource_flow('capinvest_new_equity','capinvest'). % [21],[24]
resource_of_private_body('capinvest'). % [5],[21]
active_resource_flow('banking_consortium_funding','banking_consortium'). % [21],[22]

% 9_foregoing_revenue
achieving_policy_objective('sri_debt_waiver','preserve_industrial_capacity_and_employment'). % [9],[11],[12],[14],[15]
achieving_policy_objective('banking_consortium_funding','preserve_industrial_capacity_and_employment'). % [9],[21],[22]
achieving_policy_objective('devocc_loan_conversion','preserve_industrial_capacity_and_employment'). % [9],[17]
achieving_policy_objective('devocc_capital_injection','preserve_industrial_capacity_and_employment'). % [9],[18],[20]
selection_process_for_measure('devocc_capital_injection','regional_council_committee_review'). % [20],[18]
selection_process_for_measure('devocc_loan_conversion','regional_council_committee_review'). % [20],[17]
ex_ante('committee_threshold_above_5m','regional_council_committee_review'). % [20]

% 10_imputability
public_undertaking_of_state('sri','France'). % [4]
organic_link_with_state_or_intra_state('sri'). % [4]
is_public_undertaking('sri'). % [4]
adopted_or_administered_by('sri_debt_waiver','sri'). % [13],[14],[15]
acted_on_government_directives('sri','sri_debt_waiver'). % [11],[12]
decision_dependence_on_state_or_intra_state('sri','sri_debt_waiver'). % [11],[12]
measure_scope_indicates_involvement('sri','sri_debt_waiver'). % [12]
public_state_authority('ministry_of_economics','France'). % [11],[12]
public_undertaking_of_intra_state('devocc','Occitanie'). % [7]
is_public_undertaking('devocc'). % [7]
adopted_or_administered_by('devocc_loan_conversion','devocc'). % [17]
adopted_or_administered_by('devocc_capital_injection','devocc'). % [18]
was_designated('devocc','devocc_loan_conversion','regional_council_committee_review'). % [20],[17]
was_designated('devocc','devocc_capital_injection','regional_council_committee_review'). % [20],[18]
public_intra_state_authority('regional_council_committee_review','Occitanie'). % [20]
intrastate_of('Occitanie','France'). % [7]
adopted_or_administered_by('capinvest_new_equity','capinvest'). % [21]
adopted_or_administered_by('banking_consortium_funding','banking_consortium'). % [21]
other_indicators_of_public_involvement('banking_consortium','banking_consortium_funding'). % [22]
