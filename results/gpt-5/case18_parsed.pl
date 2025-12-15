% 1_financial_activa
parsed_money_received('GutesBrot GmbH', 'Euregion Succession Fund', 300000). % [7],[13],[15],[16],[17]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('Euregion Succession Fund'). % [13],[16],[17]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('Euregion Succession Fund', 'GutesBrot GmbH'). % [13],[16]

% 8_active_transfer_of_resources
active_resource_flow('Euregion Succession Fund', 'nrw_allocation_125m'). % [10],[11]
resource_of_intrastate_entity('nrw_allocation_125m'). % [10]
active_resource_flow('Euregion Succession Fund', 'wallonia_allocation_75m'). % [10],[11]
resource_of_intrastate_entity('wallonia_allocation_75m'). % [10]
resource_of_body_appointed_by_state_to_administer_measure('fund_account'). % [7],[8],[11],[12]
active_resource_flow('Euregion Succession Fund', 'grant_300k_eupen_takeover'). % [16],[17]
resource_of_body_appointed_by_state_to_administer_measure('grant_300k_eupen_takeover'). % [7],[8],[11],[17]

% 9_foregoing_revenue
selection_process_for_measure('Euregion Succession Fund', 'joint_committee_grant_procedure'). % [12]
qualitative_selection_criteria('joint_committee_grant_procedure'). % [14]
ex_ante('eligibility_criteria', 'joint_committee_grant_procedure'). % [12],[14]
achieving_policy_objective('Euregion Succession Fund', 'support_business_transfers'). % [3],[6]

% 10_imputability
public_intra_state_authority('North Rhine-Westphalia', 'Germany'). % [1]
intrastate_of('North Rhine-Westphalia', 'Germany'). % [1]
public_intra_state_authority('Wallonia', 'Belgium'). % [1]
intrastate_of('Wallonia', 'Belgium'). % [1]
adopted_or_administered_by('Euregion Succession Fund', 'North Rhine-Westphalia'). % [3],[6],[7]
adopted_or_administered_by('Euregion Succession Fund', 'Wallonia'). % [3],[6],[7]
adopted_or_administered_by('Euregion Succession Fund', 'Euregion Succession Fund'). % [8]
adopted_or_administered_by('Euregion Succession Fund', 'joint committee'). % [12]
was_designated('Euregion Succession Fund', 'Euregion Succession Fund', 'North Rhine-Westphalia'). % [7],[8]
was_designated('Euregion Succession Fund', 'Euregion Succession Fund', 'Wallonia'). % [7],[8]
was_designated('joint committee', 'Euregion Succession Fund', 'North Rhine-Westphalia'). % [11],[12]
was_designated('joint committee', 'Euregion Succession Fund', 'Wallonia'). % [11],[12]
