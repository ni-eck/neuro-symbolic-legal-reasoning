% 1_financial_activa
parsed_costs_relieved_monetary_obligations('aerolyze','sri_debt_waiver',18000000). % [13],[14],[15]
parsed_money_received('sri','sri_received_repayment',72000000). % [14],[15]
parsed_costs_relieved_monetary_obligations('aerolyze','dev_occ_conversion',6500000). % [17]
parsed_assets_gained('dev_occ','loan_conversion_equity',6500000). % [17]
parsed_money_received('aerolyze','dev_occ_capital_injection',7500000). % [18]
parsed_money_received('aerolyze','capinvest_equity_injection',21000000). % [21]
parsed_money_received('aerolyze','banking_consortium_funding',11500000). % [21]

% 2_financial_passiva
parsed_assets_lost('sri','sri_debt_waiver',18000000). % [14],[15],[16]
parsed_assets_lost('dev_occ','dev_occ_conversion',6500000). % [17]
parsed_money_spent('dev_occ','dev_occ_capital_injection',7500000). % [18],[17]

% 3_altmark
% Nothing

% 4_act_of_private_nature
waiver_private_law_claims('sri_debt_waiver'). % [13],[14],[15]
converting_private_law_claims('dev_occ_conversion'). % [17]
capital_injection('dev_occ_capital_injection'). % [18],[19]
capital_injection('capinvest_equity_injection'). % [21]
capital_injection('banking_consortium_funding'). % [21],[26]
is_shareholder_of('sri','aerolyze'). % [4],[13]
is_shareholder_of('dev_occ','aerolyze'). % [7],[17]
is_shareholder_of('capinvest','aerolyze'). % [5],[24]
follows_shareholder_objectives('capinvest','capinvest_equity_injection'). % [5],[21]
economic_objective_similar_to_private_investor('banking_consortium_funding'). % [21],[22]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver'). % [13],[14],[15],[16]
monetary_subsidy('dev_occ_conversion'). % [17]
monetary_subsidy('dev_occ_capital_injection'). % [18],[19]

% 6_MEO
measure_financial_terms('sri_debt_waiver',18000000). % [14],[15]
measure_financial_terms('sri_received_repayment',72000000). % [14],[15]
measure_financial_terms('dev_occ_conversion',6500000). % [17]
measure_financial_terms('dev_occ_capital_injection',7500000). % [18]
measure_financial_terms('capinvest_equity_injection',21000000). % [21]
measure_financial_terms('banking_consortium_funding',11500000). % [21]
intervention_carried_at_same_time('dev_occ_capital_injection','dev_occ','capinvest'). % [9],[17],[18],[21],[24]
intervention_decided_at_same_time('dev_occ_capital_injection','dev_occ','capinvest'). % [9],[20],[21]
not_comparable_starting_position('sri_debt_waiver','sri','capinvest'). % [4],[5],[11],[12]
intervention_is_significant('capinvest'). % [24]
expert_evaluation_on_measure_or_similar_action('experts_negative','experts','dev_occ_capital_injection'). % [31]
not_in_favour_of_measure_or_similar_action('experts_negative','dev_occ_capital_injection'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('dev_occ_capital_injection'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver','aerolyze'). % [13],[14],[15],[16]
direct_targeting('sri_received_repayment','aerolyze'). % [14],[15]
direct_targeting('dev_occ_conversion','aerolyze'). % [17]
direct_targeting('dev_occ_capital_injection','aerolyze'). % [18],[19]
direct_targeting('capinvest_equity_injection','aerolyze'). % [21]
direct_targeting('banking_consortium_funding','aerolyze'). % [21]
channeled_to_identifiable_undertaking_s('capinvest','share_43_percent'). % [24]
channeled_to_identifiable_undertaking_s('dev_occ','share_29_5_percent'). % [25]
channeled_to_identifiable_undertaking_s('banking_consortium','share_22_5_percent'). % [26]
channeled_to_group_of_undertakings('employees','share_5_percent'). % [27]

% 8_active_transfer_of_resources
resource_of_public_undertaking('sri'). % [4]
active_resource_flow('sri_debt_waiver','sri'). % [14],[15],[16]
active_resource_flow('sri_received_repayment','sri'). % [14],[15]
resource_of_intrastate_entity('dev_occ'). % [7],[17],[18],[20]
resource_of_public_undertaking('dev_occ'). % [7]
active_resource_flow('dev_occ_conversion','dev_occ'). % [17]
active_resource_flow('dev_occ_capital_injection','dev_occ'). % [18],[19]
resource_of_private_body('capinvest'). % [5]
active_resource_flow('capinvest_equity_injection','capinvest'). % [21]
active_resource_flow('banking_consortium_funding','banking_consortium'). % [21]

% 9_foregoing_revenue
general_waiving_revenue_public_or_criminal_law('sri_debt_waiver'). % [13],[14],[15],[16]
achieving_policy_objective('sri_debt_waiver','maintain_industrial_capacity_and_employment'). % [11],[12]
selection_process_for_measure('dev_occ_capital_injection','regional_council_committee_approval'). % [20]
achieving_policy_objective('dev_occ_capital_injection','maintain_industrial_capacity_and_employment'). % [9],[12],[18]

% 10_imputability
is_public_undertaking('sri'). % [4]
public_undertaking_of_state('sri','france'). % [4]
organic_link_with_state_or_intra_state('sri'). % [4]
is_public_undertaking('dev_occ'). % [7]
public_undertaking_of_intra_state('dev_occ','occitanie'). % [7]
organic_link_with_state_or_intra_state('dev_occ'). % [7]
intrastate_of('occitanie','france'). % [-]
was_designated('dev_occ','dev_occ_capital_injection','regional_council_committee_approval'). % [20]
public_intra_state_authority('regional_council_committee_approval','occitanie'). % [20]
adopted_or_administered_by('dev_occ_conversion','dev_occ'). % [17]
adopted_or_administered_by('dev_occ_capital_injection','dev_occ'). % [18]
adopted_or_administered_by('sri_debt_waiver','sri'). % [13],[14],[15]
adopted_or_administered_by('sri_received_repayment','sri'). % [14],[15]
decision_dependence_on_state_or_intra_state('sri','sri_debt_waiver'). % [11],[12]
public_state_authority('ministry_of_economics','france'). % [11],[12]
adopted_or_administered_by('capinvest_equity_injection','capinvest'). % [21]
adopted_or_administered_by('banking_consortium_funding','banking_consortium'). % [21]
