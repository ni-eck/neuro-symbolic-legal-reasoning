% 1_financial_activa
parsed_money_received('GutesBrot GmbH','euregion_succession_fund_grant',300000). % [15],[16],[17]
parsed_money_received('Euregion Succession Fund','government_contributions',200000000). % [9],[10],[11]

% 2_financial_passiva
parsed_money_spent('Euregion Succession Fund', 'euregion_succession_fund_grant', 300000). % [16],[17]
parsed_money_spent('GutesBrot GmbH', 'euregion_succession_fund_grant', 300000). % [17]

% 3_altmark
compensation_params_predefined('euregion_succession_fund_grant','business_transfer_support'). % [6],[13]
compensation_params_objective('euregion_succession_fund_grant','business_transfer_support'). % [13]
clearly_defined('business_transfer_support'). % [13],[14]

% 4_act_of_private_nature
capital_injection('government_contributions'). % [9],[10],[11]
fallback_act_of_economic_nature('euregion_succession_fund_grant'). % [6],[7],[13],[16],[17]

% 5_act_of_public_nature
monetary_subsidy('euregion_succession_fund_grant'). % [13],[16],[17]
monetary_subsidy('government_contributions'). % [9],[10],[11]

% 6_MEO
measure_financial_terms('government_contributions', 200000000). % [9],[10],[11]
measure_financial_terms('euregion_succession_fund_grant', 300000). % [13],[16],[17]

% 7_direct_or_indirect_advantage
direct_targeting('government_contributions','Euregion Succession Fund'). % [9],[10],[11]
direct_targeting('euregion_succession_fund_grant','GutesBrot GmbH'). % [13],[16],[17]
channeled_to_group_of_undertakings('Euregion Succession Fund','business_transfer_support'). % [6],[7],[13],[14]
channeled_to_identifiable_undertaking_s('Euregion Succession Fund','grant_to_gutesbrot'). % [16],[17],[11]

% 8_active_transfer_of_resources
active_resource_flow('government_contributions', 'north_rhine_westphalia_125_million'). % [9],[10],[11]
resource_of_intrastate_entity('north_rhine_westphalia_125_million'). % [10]
active_resource_flow('government_contributions', 'wallonia_75_million'). % [9],[10],[11]
resource_of_intrastate_entity('wallonia_75_million'). % [10]
active_resource_flow('euregion_succession_fund_grant', 'grant_to_gutesbrot_300000'). % [13],[16],[17]
resource_of_body_appointed_by_state_to_administer_measure('Euregion Succession Fund'). % [7],[8],[9]

% 9_foregoing_revenue
selection_process_for_measure('euregion_succession_fund_grant','joint_committee_selection'). % [11],[12],[16]
qualitative_selection_criteria('joint_committee_selection'). % [14]
ex_ante('eligibility_criteria','joint_committee_selection'). % [12],[14]
achieving_policy_objective('euregion_succession_fund_grant','preserve_local_economy_employment_services'). % [3],[4],[6]

% 10_imputability
public_intra_state_authority('north_rhine_westphalia', 'Germany'). % [1],[9],[10]
public_intra_state_authority('wallonia', 'Belgium'). % [1],[9],[10]
adopted_or_administered_by('euregion_succession_fund_grant', 'Euregion Succession Fund'). % [7],[8],[9]
was_designated('Euregion Succession Fund', 'euregion_succession_fund_grant', 'north_rhine_westphalia'). % [7],[9]
was_designated('Euregion Succession Fund', 'euregion_succession_fund_grant', 'wallonia'). % [7],[9]
adopted_or_administered_by('government_contributions', 'north_rhine_westphalia'). % [9],[10]
adopted_or_administered_by('government_contributions', 'wallonia'). % [9],[10]
adopted_or_administered_by('euregion_succession_fund_grant', 'joint_committee_selection'). % [11],[12]
measure_scope_indicates_involvement('Euregion Succession Fund', 'euregion_succession_fund_grant'). % [3],[6],[13]
