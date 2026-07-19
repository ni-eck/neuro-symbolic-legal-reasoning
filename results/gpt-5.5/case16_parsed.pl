% 1_financial_activa
textual_evidence_of_improved_financial_situation('lattelegrid', 'advertising_revenue_transfers_2017_2021'). % [24],[25]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('advertising_revenue_transfers_2017_2021', 'lattelegrid', 'nationwide_public_service_television_content'). % [19],[21],[24]
public_service_obligation('nationwide_public_service_television_content'). % [4],[5],[6]
clearly_defined('nationwide_public_service_television_content'). % [4],[5],[6],[7]

% 4_act_of_private_nature
loan('state_loan'). % [9]

% 5_act_of_public_nature
monetary_subsidy('advertising_revenue_transfers_2017_2021'). % [20],[21],[24]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('state_loan', 'lattelegrid'). % [9]
direct_targeting('advertising_revenue_transfers_2017_2021', 'lattelegrid'). % [21],[24]

% 8_active_transfer_of_resources
active_resource_flow('state_loan', 'state_loan_funds'). % [9]
resource_of_central_state_entity('state_loan_funds'). % [9]
active_resource_flow('broadcasting_license_fee_allocation', 'broadcasting_license_fees'). % [9]
resource_of_private_body('broadcasting_license_fees'). % [9]
under_public_control('broadcasting_license_fees'). % [9]
active_resource_flow('advertising_revenue_transfers_2017_2021', 'advertising_revenue'). % [24]
resource_of_private_body('advertising_revenue'). % [10],[11]
resource_of_body_appointed_by_state_to_administer_measure('advertising_revenue'). % [18],[19]
under_public_control('advertising_revenue'). % [19],[20],[21],[22],[23],[24]

% 9_foregoing_revenue
achieving_policy_objective('advertising_revenue_transfers_2017_2021', 'nationwide_public_service_television_content'). % [19],[21],[24]

% 10_imputability
adopted_or_administered_by('advertising_revenue_transfers_2017_2021', 'latvian_legislature'). % [10]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021', 'latvian_minister_for_culture'). % [20],[21],[22],[23],[24]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021', 'bazestikls'). % [12],[13],[16],[17],[18]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021', 'lattelegrid_fund'). % [18],[19]
public_state_authority('latvian_legislature', 'latvia'). % [10]
public_state_authority('latvian_minister_for_culture', 'latvia'). % [7],[19],[20]
was_designated('lattelegrid_fund', 'advertising_revenue_transfers_2017_2021', 'latvian_minister_for_culture'). % [19]
is_public_undertaking('lattelegrid'). % [1]
is_public_undertaking('bazestikls'). % [14]
public_undertaking_of_state('lattelegrid', 'latvia'). % [1]
public_undertaking_of_state('bazestikls', 'latvia'). % [14],[15]
decision_dependence_on_state_or_intra_state('bazestikls', 'advertising_revenue_transfers_2017_2021'). % [12],[13],[16],[17],[18],[20],[21],[24]
measure_scope_indicates_involvement('bazestikls', 'advertising_revenue_transfers_2017_2021'). % [16],[17],[18],[19]
organic_link_with_state_or_intra_state('lattelegrid'). % [1]
organic_link_with_state_or_intra_state('bazestikls'). % [14],[15]
strategic_sector('lattelegrid'). % [1],[5],[6]
strategic_sector('bazestikls'). % [13],[16]
