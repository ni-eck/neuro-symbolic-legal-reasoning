% 1_financial_activa
parsed_money_received(euregion_succession_fund, nrw_allocation, 125000000). % [9],[10],[11]
parsed_money_received(euregion_succession_fund, wallonia_allocation, 75000000). % [9],[10],[11]
parsed_money_received(gutesbrot_gmbh, euregion_succession_fund_grant, 300000). % [15],[16],[17]

% 2_financial_passiva
parsed_money_spent(euregion_succession_fund, euregion_succession_fund_grant, 300000). % [16],[17]
parsed_money_spent(gutesbrot_gmbh, euregion_succession_fund_grant, 300000). % [17]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection(euregion_succession_fund_grant). % [13],[16],[17]
capital_injection(nrw_allocation). % [9],[10],[11]
capital_injection(wallonia_allocation). % [9],[10],[11]

% 5_act_of_public_nature
monetary_subsidy(euregion_succession_fund_grant). % [7],[13],[16],[17]
monetary_subsidy(nrw_allocation). % [9],[10],[11]
monetary_subsidy(wallonia_allocation). % [9],[10],[11]

% 6_MEO
measure_financial_terms(euregion_succession_fund_grant, 300000). % [15],[16],[17]
measure_financial_terms(nrw_allocation, 125000000). % [10],[11]
measure_financial_terms(wallonia_allocation, 75000000). % [10],[11]

% 7_direct_or_indirect_advantage
direct_targeting(nrw_allocation, euregion_succession_fund). % [9],[10]
direct_targeting(wallonia_allocation, euregion_succession_fund). % [9],[10]
direct_targeting(euregion_succession_fund_grant, gutesbrot_gmbh). % [15],[16],[17]
secondary_effects(nrw_allocation, euregion_succession_fund, financing_125000000). % [10],[11]
secondary_effects(wallonia_allocation, euregion_succession_fund, financing_75000000). % [10],[11]
channeled_to_identifiable_undertaking_s(euregion_succession_fund, grant_300000_to_gutesbrot). % [16],[17]
channeled_to_group_of_undertakings(euregion_succession_fund, support_up_to_15_percent_for_cross_border_undertakings). % [6],[13],[2]

% 8_active_transfer_of_resources
active_resource_flow(euregion_succession_fund_grant, grant_300000_to_gutesbrot). % [7],[13],[16],[17]
active_resource_flow(nrw_allocation, financing_125000000). % [9],[10],[11]
active_resource_flow(wallonia_allocation, financing_75000000). % [9],[10],[11]
resource_of_intrastate_entity(financing_125000000). % [9],[10]
resource_of_intrastate_entity(financing_75000000). % [9],[10]
resource_of_body_appointed_by_state_to_administer_measure(grant_300000_to_gutesbrot). % [7],[8],[11],[17]
active_resource_flow(euregion_succession_fund_grant, support_up_to_15_percent_for_cross_border_undertakings). % [7],[13]
resource_of_intrastate_entity(support_up_to_15_percent_for_cross_border_undertakings). % [9],[10],[13]

% 9_foregoing_revenue
selection_process_for_measure(euregion_succession_fund_grant, joint_committee_selection). % [7],[11],[12]
qualitative_selection_criteria(joint_committee_selection). % [14]
ex_ante(eligibility_residence_continuity_employment, joint_committee_selection). % [14],[12]
achieving_policy_objective(euregion_succession_fund_grant, preserve_local_economic_activity_and_employment). % [3],[4],[6]

% 10_imputability
adopted_or_administered_by(euregion_succession_fund_grant, euregion_succession_fund). % [6],[7],[8],[9]
was_designated(euregion_succession_fund, euregion_succession_fund_grant, north_rhine_westphalia_government). % [6],[7],[8],[9]
was_designated(euregion_succession_fund, euregion_succession_fund_grant, wallonia_government). % [6],[7],[8],[9]
public_intra_state_authority(north_rhine_westphalia_government, north_rhine_westphalia). % [1],[3],[9]
public_intra_state_authority(wallonia_government, wallonia). % [1],[3],[9]
intrastate_of(north_rhine_westphalia, germany). % [1]
intrastate_of(wallonia, belgium). % [1]
adopted_or_administered_by(euregion_succession_fund_grant, joint_committee). % [11],[12]
adopted_or_administered_by(nrw_allocation, north_rhine_westphalia_government). % [10]
adopted_or_administered_by(wallonia_allocation, wallonia_government). % [10]
measure_scope_indicates_involvement(euregion_succession_fund, euregion_succession_fund_grant). % [3],[6],[7],[13]
