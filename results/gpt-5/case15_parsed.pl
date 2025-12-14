% 1_financial_activa
parsed_costs_relieved_monetary_obligations('Aerolyze SA', 'sri_debt_waiver_2012', 18000000). % [14],[15],[16]
parsed_costs_relieved_monetary_obligations('Aerolyze SA', 'occitanie_loan_conversion_2012', 6500000). % [17]
parsed_money_received('Aerolyze SA', 'occitanie_capital_injection_2012', 7500000). % [18],[19]
parsed_money_received('Aerolyze SA', 'capinvest_equity_2012', 21000000). % [21]
parsed_money_received('Aerolyze SA', 'banking_consortium_funding_2012', 11500000). % [21]

% 2_financial_passiva
parsed_money_spent('Aerolyze SA', 'sri_debt_waiver_2012', 72000000). % [15]

% 3_altmark
% Nothing

% 4_act_of_private_nature
waiver_private_law_claims('sri_debt_waiver_2012'). % [13],[14],[15]
converting_private_law_claims('occitanie_loan_conversion_2012'). % [17]
capital_injection('occitanie_capital_injection_2012'). % [18]
capital_injection('capinvest_equity_2012'). % [21]
capital_injection('banking_consortium_funding_2012'). % [21],[26]
is_shareholder_of('SRI', 'Aerolyze SA'). % [4]
is_shareholder_of('CapInvest SAS', 'Aerolyze SA'). % [5],[24]
is_shareholder_of('Développement Occitanie SA', 'Aerolyze SA'). % [7],[25]
is_shareholder_of('banking consortium', 'Aerolyze SA'). % [26]
is_shareholder_of('employees', 'Aerolyze SA'). % [27]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver_2012'). % [13],[14],[15],[16]
monetary_subsidy('occitanie_loan_conversion_2012'). % [17]
monetary_subsidy('occitanie_capital_injection_2012'). % [18],[19],[20]

% 6_MEO
intervention_carried_at_same_time('occitanie_capital_injection_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [8],[18],[21]
intervention_carried_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'CapInvest SAS'). % [8],[21]
not_comparable_starting_position('sri_debt_waiver_2012', 'SRI', 'CapInvest SAS'). % [13],[14],[5]
not_comparable_starting_position('sri_debt_waiver_2012', 'SRI', 'banking consortium'). % [13],[14],[21]
not_comparable_starting_position('occitanie_loan_conversion_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [17],[21]
not_comparable_starting_position('occitanie_capital_injection_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [5],[17],[20]
intervention_is_significant('CapInvest SAS'). % [21],[24]
expert_evaluation_on_measure_or_similar_action('experts_profitability_assessment_2012', 'industry_experts', 'sri_debt_waiver_2012'). % [31]
ex_ante_evaluation('experts_profitability_assessment_2012', 'sri_debt_waiver_2012'). % [31]
not_in_favour_of_measure_or_similar_action('experts_profitability_assessment_2012', 'sri_debt_waiver_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('experts_profitability_assessment_2012', 'industry_experts', 'occitanie_loan_conversion_2012'). % [31]
ex_ante_evaluation('experts_profitability_assessment_2012', 'occitanie_loan_conversion_2012'). % [31]
not_in_favour_of_measure_or_similar_action('experts_profitability_assessment_2012', 'occitanie_loan_conversion_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('experts_profitability_assessment_2012', 'industry_experts', 'occitanie_capital_injection_2012'). % [31]
ex_ante_evaluation('experts_profitability_assessment_2012', 'occitanie_capital_injection_2012'). % [31]
not_in_favour_of_measure_or_similar_action('experts_profitability_assessment_2012', 'occitanie_capital_injection_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('experts_profitability_assessment_2012', 'industry_experts', 'capinvest_equity_2012'). % [31]
ex_ante_evaluation('experts_profitability_assessment_2012', 'capinvest_equity_2012'). % [31]
not_in_favour_of_measure_or_similar_action('experts_profitability_assessment_2012', 'capinvest_equity_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('experts_profitability_assessment_2012', 'industry_experts', 'banking_consortium_funding_2012'). % [31]
ex_ante_evaluation('experts_profitability_assessment_2012', 'banking_consortium_funding_2012'). % [31]
not_in_favour_of_measure_or_similar_action('experts_profitability_assessment_2012', 'banking_consortium_funding_2012'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver_2012', 'Aerolyze SA'). % [13],[14],[15]
direct_targeting('occitanie_loan_conversion_2012', 'Aerolyze SA'). % [17]
direct_targeting('occitanie_capital_injection_2012', 'Aerolyze SA'). % [18]
direct_targeting('capinvest_equity_2012', 'Aerolyze SA'). % [21]
direct_targeting('banking_consortium_funding_2012', 'Aerolyze SA'). % [21]
secondary_effects('occitanie_capital_injection_2012', 'Aerolyze SA', 'private_consortium_participation_2012'). % [22]
secondary_effects('occitanie_loan_conversion_2012', 'Aerolyze SA', 'private_consortium_participation_2012'). % [22]
secondary_effects('sri_debt_waiver_2012', 'Aerolyze SA', 'private_consortium_participation_2012'). % [22]
channeled_to_identifiable_undertaking_s('Aerolyze SA', 'private_consortium_participation_2012'). % [22]

% 8_active_transfer_of_resources
active_resource_flow('capinvest_equity_2012', capinvest_new_equity_21m_eur). % [21]
resource_of_private_body(captainvest_new_equity_21m_eur). % [5],[21]
active_resource_flow('occitanie_capital_injection_2012', occitanie_new_equity_7_5m_eur). % [18]
resource_of_public_undertaking(occitanie_new_equity_7_5m_eur). % [7],[18],[19]
resource_of_public_undertaking(occitanie_converted_loan_6_5m_eur). % [7],[17]
resource_of_public_undertaking(sri_waived_debt_18m_eur). % [4],[14],[15],[16]
active_resource_flow('banking_consortium_funding_2012', bank_consortium_public_component_2012). % [21]
resource_of_public_undertaking(bank_consortium_public_component_2012). % [21]
active_resource_flow('banking_consortium_funding_2012', bank_consortium_private_component_2012). % [21]
resource_of_private_body(bank_consortium_private_component_2012). % [21]

% 9_foregoing_revenue
achieving_policy_objective('sri_debt_waiver_2012', 'maintain_industrial_capacity_and_employment_in_the_region'). % [8],[12],[14],[15]
achieving_policy_objective('occitanie_loan_conversion_2012', 'maintain_industrial_capacity_and_employment_in_the_region'). % [8],[12],[17]
achieving_policy_objective('occitanie_capital_injection_2012', 'maintain_industrial_capacity_and_employment_in_the_region'). % [8],[12],[18]

% 10_imputability
adopted_or_administered_by('sri_debt_waiver_2012', 'SRI'). % [13],[14]
is_public_undertaking('SRI'). % [4]
public_undertaking_of_state('SRI', 'France'). % [4]
organic_link_with_state_or_intra_state('SRI'). % [4]
decision_dependence_on_state_or_intra_state('SRI', 'sri_debt_waiver_2012'). % [11],[12],[13]
measure_scope_indicates_involvement('SRI', 'sri_debt_waiver_2012'). % [12]
public_state_authority('Ministry of Economics', 'France'). % [11]
public_state_authority('French Government', 'France'). % [8]
adopted_or_administered_by('occitanie_loan_conversion_2012', 'Développement Occitanie SA'). % [17]
adopted_or_administered_by('occitanie_capital_injection_2012', 'Développement Occitanie SA'). % [18],[19]
is_public_undertaking('Développement Occitanie SA'). % [7]
public_undertaking_of_intra_state('Développement Occitanie SA', 'Occitanie'). % [7]
organic_link_with_state_or_intra_state('Développement Occitanie SA'). % [7]
public_intra_state_authority('Region of Occitanie', 'Occitanie'). % [7]
intrastate_of('Occitanie', 'France'). % [-]
strong_public_supervision('Développement Occitanie SA', 'occitanie_loan_conversion_2012'). % [20]
strong_public_supervision('Développement Occitanie SA', 'occitanie_capital_injection_2012'). % [20]
decision_dependence_on_state_or_intra_state('Développement Occitanie SA', 'occitanie_loan_conversion_2012'). % [20]
decision_dependence_on_state_or_intra_state('Développement Occitanie SA', 'occitanie_capital_injection_2012'). % [20]
adopted_or_administered_by('capinvest_equity_2012', 'CapInvest SAS'). % [21]
adopted_or_administered_by('banking_consortium_funding_2012', 'banking consortium'). % [21]
