% 1_financial_activa
parsed_money_received('GutesBrot GmbH', 'euregion_succession_fund_grant', 300000). % [16]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('euregion_succession_fund_grant'). % [13]

% 6_MEO
measure_financial_terms('euregion_succession_fund_grant', 300000). % [16]

% 7_direct_or_indirect_advantage
direct_targeting('euregion_succession_fund_grant', 'GutesBrot GmbH'). % [16]

% 8_active_transfer_of_resources
active_resource_flow('euregion_succession_fund_grant', 'euregion_succession_fund_resource'). % [17]
resource_of_intrastate_entity('euregion_succession_fund_resource'). % [10],[11]
resource_of_body_appointed_by_state_to_administer_measure('euregion_succession_fund_resource'). % [8],[11]

% 9_foregoing_revenue
selection_process_for_measure('euregion_succession_fund_grant', process_euregion_succession_fund_grant). % [16]
qualitative_selection_criteria(process_euregion_succession_fund_grant). % [14],[16]
ex_ante(criteria_euregion_succession_fund_grant, process_euregion_succession_fund_grant). % [14]
transparent(criteria_euregion_succession_fund_grant, process_euregion_succession_fund_grant). % [14]
non_discriminatory(criteria_euregion_succession_fund_grant, process_euregion_succession_fund_grant). % [14]
achieving_policy_objective('euregion_succession_fund_grant', support_business_transfers_cross_border_region). % [3],[4],[6]
actual_price_goods_service('euregion_succession_fund_grant', 0). % [13]

% 10_imputability
adopted_or_administered_by('euregion_succession_fund_grant', 'euregion_succession_fund_resource'). % [8]
public_intra_state_authority('north_rhine_westphalia', 'north_rhine_westphalia'). % [1],[3]
intrastate_of('north_rhine_westphalia', 'germany'). % [1]
public_intra_state_authority('wallonia', 'wallonia'). % [1],[3]
intrastate_of('wallonia', 'belgium'). % [1]
measure_scope_indicates_involvement('euregion_succession_fund_resource', 'euregion_succession_fund_grant'). % [8],[9],[12],[13]
