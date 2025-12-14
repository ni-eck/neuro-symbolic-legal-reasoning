% 1_financial_activa
parsed_money_received('Euregion Succession Fund', 'nrw_allocation_to_euregion_succession_fund', 125000000). % [9],[10],[11]
parsed_money_received('Euregion Succession Fund', 'wallonia_allocation_to_euregion_succession_fund', 75000000). % [9],[10],[11]
parsed_money_received('GutesBrot GmbH', 'euregion_succession_fund_grant_eupen', 300000). % [15],[16],[17]

% 2_financial_passiva
parsed_money_spent('Euregion Succession Fund', 'euregion_succession_fund_grant_eupen', 300000). % [16],[17]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('nrw_allocation_to_euregion_succession_fund'). % [9],[10],[11]
capital_injection('wallonia_allocation_to_euregion_succession_fund'). % [9],[10],[11]

% 5_act_of_public_nature
monetary_subsidy('euregion_succession_fund_grant_eupen'). % [13],[16],[17]
monetary_subsidy('nrw_allocation_to_euregion_succession_fund'). % [9],[10],[11],[12]
monetary_subsidy('wallonia_allocation_to_euregion_succession_fund'). % [9],[10],[11],[12]

% 6_MEO
measure_financial_terms('nrw_allocation_to_euregion_succession_fund', 125000000). % [10]
measure_financial_terms('wallonia_allocation_to_euregion_succession_fund', 75000000). % [10]
measure_financial_terms('euregion_succession_fund_grant_eupen', 300000). % [16]

% 7_direct_or_indirect_advantage
direct_targeting('nrw_allocation_to_euregion_succession_fund', 'Euregion Succession Fund'). % [9],[10],[11]
direct_targeting('wallonia_allocation_to_euregion_succession_fund', 'Euregion Succession Fund'). % [9],[10],[11]
direct_targeting('euregion_succession_fund_grant_eupen', 'GutesBrot GmbH'). % [15],[16],[17]
secondary_effects('nrw_allocation_to_euregion_succession_fund', 'GutesBrot GmbH', 'business_transfer_grant'). % [10],[13],[16],[17]
secondary_effects('wallonia_allocation_to_euregion_succession_fund', 'GutesBrot GmbH', 'business_transfer_grant'). % [10],[13],[16],[17]
channeled_to_identifiable_undertaking_s('GutesBrot GmbH', 'business_transfer_grant'). % [15],[16],[17]
secondary_effects('nrw_allocation_to_euregion_succession_fund', 'undertakings_in_cross_border_region', 'business_transfer_grants'). % [10],[13]
secondary_effects('wallonia_allocation_to_euregion_succession_fund', 'undertakings_in_cross_border_region', 'business_transfer_grants'). % [10],[13]
channeled_to_group_of_undertakings('undertakings_in_cross_border_region', 'business_transfer_grants'). % [13]

% 8_active_transfer_of_resources
active_resource_flow('nrw_allocation_to_euregion_succession_fund', 'nrw_budget'). % [10],[11]
resource_of_intrastate_entity('nrw_budget'). % [3],[9],[10]
active_resource_flow('wallonia_allocation_to_euregion_succession_fund', 'wallonia_budget'). % [10],[11]
resource_of_intrastate_entity('wallonia_budget'). % [3],[9],[10]
active_resource_flow('euregion_succession_fund_grant_eupen', 'euregion_fund_account'). % [16],[17]
resource_of_body_appointed_by_state_to_administer_measure('euregion_fund_account'). % [7],[8],[11],[12]

% 9_foregoing_revenue
achieving_policy_objective('nrw_allocation_to_euregion_succession_fund', 'support_business_transfers_cross_border_region'). % [3],[4],[6],[7],[8],[9],[10]
achieving_policy_objective('wallonia_allocation_to_euregion_succession_fund', 'support_business_transfers_cross_border_region'). % [3],[4],[6],[7],[8],[9],[10]
achieving_policy_objective('euregion_succession_fund_grant_eupen', 'support_business_transfers_cross_border_region'). % [6],[13],[15],[16],[17]
selection_process_for_measure('euregion_succession_fund_grant_eupen', 'euregion_fund_selection_process'). % [12],[14]
qualitative_selection_criteria('euregion_fund_selection_process'). % [14]
ex_ante('euregion_fund_selection_criteria', 'euregion_fund_selection_process'). % [12],[14]

% 10_imputability
intrastate_of('North Rhine-Westphalia', 'Germany'). % [1]
intrastate_of('Wallonia', 'Belgium'). % [1]
public_intra_state_authority('Government of North Rhine-Westphalia', 'North Rhine-Westphalia'). % [3]
public_intra_state_authority('Government of Wallonia', 'Wallonia'). % [3]
adopted_or_administered_by('business_transfer_grants', 'Government of North Rhine-Westphalia'). % [4],[6]
adopted_or_administered_by('business_transfer_grants', 'Government of Wallonia'). % [4],[6]
was_designated('Euregion Succession Fund', 'business_transfer_grants', 'Government of North Rhine-Westphalia'). % [7],[8]
was_designated('Euregion Succession Fund', 'business_transfer_grants', 'Government of Wallonia'). % [7],[8]
adopted_or_administered_by('business_transfer_grants', 'Euregion Succession Fund'). % [8],[13]
adopted_or_administered_by('nrw_allocation_to_euregion_succession_fund', 'Government of North Rhine-Westphalia'). % [10]
adopted_or_administered_by('wallonia_allocation_to_euregion_succession_fund', 'Government of Wallonia'). % [10]
adopted_or_administered_by('euregion_succession_fund_grant_eupen', 'Euregion Succession Fund'). % [12],[16],[17]
strong_public_supervision('Euregion Succession Fund', 'business_transfer_grants'). % [11],[12]
