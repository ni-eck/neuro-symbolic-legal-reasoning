% 1_financial_activa
parsed_costs_relieved_monetary_obligations('Aerolyze SA', 'sri_debt_waiver_2012', 18000000). % [14],[15]
parsed_costs_relieved_monetary_obligations('Aerolyze SA', 'occitanie_loan_conversion_2012', 6500000). % [17]
parsed_money_received('Aerolyze SA', 'occitanie_capital_injection_2012', 7500000). % [18],[19]
parsed_money_received('Aerolyze SA', 'capinvest_new_equity_2012', 21000000). % [21]
parsed_money_received('Aerolyze SA', 'bank_consortium_funding_2012', 11500000). % [21]

% 2_financial_passiva
parsed_money_spent('Aerolyze SA', 'sri_debt_waiver_2012', 72000000). % [14],[15]
parsed_value_granted_rights_licenses('Aerolyze SA', 'occitanie_loan_conversion_2012', 6500000). % [17]
parsed_value_granted_rights_licenses('Aerolyze SA', 'occitanie_capital_injection_2012', 7500000). % [18]
parsed_value_granted_rights_licenses('Aerolyze SA', 'capinvest_new_equity_2012', 21000000). % [21]
parsed_value_granted_rights_licenses('Aerolyze SA', 'bank_consortium_funding_2012', 11500000). % [21],[26]

% 3_altmark
% Nothing

% 4_act_of_private_nature
waiver_private_law_claims('sri_debt_waiver_2012'). % [14],[15]
converting_private_law_claims('occitanie_loan_conversion_2012'). % [17]
capital_injection('occitanie_capital_injection_2012'). % [18]
capital_injection('capinvest_new_equity_2012'). % [21]
capital_injection('bank_consortium_funding_2012'). % [21],[26]
is_shareholder_of('Société de Restructuration Industrielle','Aerolyze SA'). % [4]
is_shareholder_of('CapInvest SAS','Aerolyze SA'). % [5]
is_shareholder_of('Développement Occitanie SA','Aerolyze SA'). % [7]
is_shareholder_of('banking consortium','Aerolyze SA'). % [26]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver_2012'). % [14],[15],[16]

% 6_MEO
intervention_carried_at_same_time('occitanie_capital_injection_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [9],[18],[21]
not_comparable_starting_position('sri_debt_waiver_2012', 'Société de Restructuration Industrielle', 'CapInvest SAS'). % [4],[5],[13],[14],[15]
not_comparable_starting_position('occitanie_loan_conversion_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [5],[7],[17]
not_comparable_starting_position('occitanie_capital_injection_2012', 'Développement Occitanie SA', 'CapInvest SAS'). % [5],[7],[17],[20]
intervention_is_significant('CapInvest SAS'). % [21],[24]
expert_evaluation_on_measure_or_similar_action('expert_eval_sri_2012', 'sector experts', 'sri_debt_waiver_2012'). % [31]
ex_ante_evaluation('expert_eval_sri_2012', 'sri_debt_waiver_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_eval_sri_2012', 'sri_debt_waiver_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_eval_occ_inj_2012', 'sector experts', 'occitanie_capital_injection_2012'). % [31]
ex_ante_evaluation('expert_eval_occ_inj_2012', 'occitanie_capital_injection_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_eval_occ_inj_2012', 'occitanie_capital_injection_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_eval_occ_conv_2012', 'sector experts', 'occitanie_loan_conversion_2012'). % [31]
ex_ante_evaluation('expert_eval_occ_conv_2012', 'occitanie_loan_conversion_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_eval_occ_conv_2012', 'occitanie_loan_conversion_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_eval_capinvest_2012', 'sector experts', 'capinvest_new_equity_2012'). % [31]
ex_ante_evaluation('expert_eval_capinvest_2012', 'capinvest_new_equity_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_eval_capinvest_2012', 'capinvest_new_equity_2012'). % [31]
expert_evaluation_on_measure_or_similar_action('expert_eval_banks_2012', 'sector experts', 'bank_consortium_funding_2012'). % [31]
ex_ante_evaluation('expert_eval_banks_2012', 'bank_consortium_funding_2012'). % [31]
not_in_favour_of_measure_or_similar_action('expert_eval_banks_2012', 'bank_consortium_funding_2012'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver_2012', 'Aerolyze SA'). % [13],[14],[15]
direct_targeting('occitanie_loan_conversion_2012', 'Aerolyze SA'). % [17]
direct_targeting('occitanie_capital_injection_2012', 'Aerolyze SA'). % [18],[19]
direct_targeting('capinvest_new_equity_2012', 'Aerolyze SA'). % [21]
direct_targeting('bank_consortium_funding_2012', 'Aerolyze SA'). % [21]
secondary_effects('sri_debt_waiver_2012', 'Aerolyze SA', 'induced_banking_consortium_participation_2012'). % [22]
secondary_effects('occitanie_loan_conversion_2012', 'Aerolyze SA', 'induced_banking_consortium_participation_2012'). % [22]
secondary_effects('occitanie_capital_injection_2012', 'Aerolyze SA', 'induced_banking_consortium_participation_2012'). % [22]
channeled_to_identifiable_undertaking_s('Aerolyze SA', 'induced_banking_consortium_participation_2012'). % [22]

% 8_active_transfer_of_resources
active_resource_flow('sri_debt_waiver_2012', 'sri_claim'). % [13],[14],[15],[16]
resource_of_public_undertaking('sri_claim'). % [4]
active_resource_flow('occitanie_loan_conversion_2012', 'occ_loan'). % [17]
resource_of_public_undertaking('occ_loan'). % [7]
active_resource_flow('occitanie_capital_injection_2012', 'occ_funds'). % [18],[19]
resource_of_public_undertaking('occ_funds'). % [7],[19]
active_resource_flow('capinvest_new_equity_2012', 'capinvest_funds'). % [21]
resource_of_private_body('capinvest_funds'). % [5]
active_resource_flow('bank_consortium_funding_2012', 'bank_consortium_funds'). % [21]

% 9_foregoing_revenue
achieving_policy_objective('sri_debt_waiver_2012', 'maintain_industrial_capacity_and_employment'). % [11],[12],[14],[15]
achieving_policy_objective('occitanie_loan_conversion_2012', 'avoid_social_economic_consequences_liquidation'). % [8],[9],[17]
achieving_policy_objective('occitanie_capital_injection_2012', 'avoid_social_economic_consequences_liquidation'). % [8],[9],[18]

% 10_imputability
adopted_or_administered_by('sri_debt_waiver_2012', 'Société de Restructuration Industrielle'). % [13],[14],[15],[16]
is_public_undertaking('Société de Restructuration Industrielle'). % [4]
public_undertaking_of_state('Société de Restructuration Industrielle', 'France'). % [4]
organic_link_with_state_or_intra_state('Société de Restructuration Industrielle'). % [4]
decision_dependence_on_state_or_intra_state('Société de Restructuration Industrielle', 'sri_debt_waiver_2012'). % [11],[12]
measure_scope_indicates_involvement('Société de Restructuration Industrielle', 'sri_debt_waiver_2012'). % [12]
adopted_or_administered_by('occitanie_loan_conversion_2012', 'Développement Occitanie SA'). % [17]
adopted_or_administered_by('occitanie_capital_injection_2012', 'Développement Occitanie SA'). % [18],[19]
is_public_undertaking('Développement Occitanie SA'). % [7]
public_undertaking_of_intra_state('Développement Occitanie SA', 'Occitanie'). % [7]
organic_link_with_state_or_intra_state('Développement Occitanie SA'). % [7]
intrastate_of('Occitanie', 'France'). % [7]
strong_public_supervision('Développement Occitanie SA', 'occitanie_loan_conversion_2012'). % [20]
strong_public_supervision('Développement Occitanie SA', 'occitanie_capital_injection_2012'). % [20]
decision_dependence_on_state_or_intra_state('Développement Occitanie SA', 'occitanie_loan_conversion_2012'). % [20]
decision_dependence_on_state_or_intra_state('Développement Occitanie SA', 'occitanie_capital_injection_2012'). % [20]
public_intra_state_authority('Region of Occitanie', 'Occitanie'). % [7]
public_state_authority('French Government', 'France'). % [8]
public_state_authority('Ministry of Economics', 'France'). % [11],[12]
adopted_or_administered_by('capinvest_new_equity_2012', 'CapInvest SAS'). % [21]
adopted_or_administered_by('bank_consortium_funding_2012', 'banking consortium'). % [21]
