% 1_financial_activa
parsed_money_received('gutesbrot gmbh', 'euregion_succession_fund_grant', 300000). % [15],[16],[17]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('euregion_succession_fund_grant'). % [13],[16],[17]

% 6_MEO
measure_financial_terms('euregion_succession_fund_grant', 300000). % [16]

% 7_direct_or_indirect_advantage
direct_targeting('euregion_succession_fund_grant', 'gutesbrot gmbh'). % [13],[15],[16],[17]

% 8_active_transfer_of_resources
active_resource_flow('euregion_succession_fund_grant', 'euregion_succession_fund_resources'). % [13],[16],[17]
resource_of_intrastate_entity('euregion_succession_fund_resources'). % [9],[10]
resource_of_body_appointed_by_state_to_administer_measure('euregion_succession_fund_resources'). % [7],[8],[11],[17]

% 9_foregoing_revenue
selection_process_for_measure('euregion_succession_fund_grant', 'eligibility_assessment_process'). % [12],[14],[16]
qualitative_selection_criteria('eligibility_assessment_process'). % [14]
ex_ante('eligibility_criteria', 'eligibility_assessment_process'). % [14],[15],[16]
achieving_policy_objective('euregion_succession_fund_grant', 'support_business_transfers'). % [3],[6],[13]

% 10_imputability
adopted_or_administered_by('euregion_succession_fund_grant', 'north_rhine_westphalia_government'). % [3],[4],[6]
adopted_or_administered_by('euregion_succession_fund_grant', 'wallonia_government'). % [3],[4],[6]
adopted_or_administered_by('euregion_succession_fund_grant', 'euregion_succession_fund'). % [7],[8]
adopted_or_administered_by('euregion_succession_fund_grant', 'joint_committee'). % [11],[12]
public_intra_state_authority('north_rhine_westphalia_government', 'north_rhine_westphalia'). % [1],[3]
public_intra_state_authority('wallonia_government', 'wallonia'). % [1],[3]
intrastate_of('north_rhine_westphalia', 'germany'). % [1]
intrastate_of('wallonia', 'belgium'). % [1]
was_designated('euregion_succession_fund', 'euregion_succession_fund_grant', 'north_rhine_westphalia_government'). % [6],[7],[8]
was_designated('euregion_succession_fund', 'euregion_succession_fund_grant', 'wallonia_government'). % [6],[7],[8]
