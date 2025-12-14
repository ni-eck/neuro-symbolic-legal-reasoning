% 1_financial_activa
textual_evidence_of_improved_financial_situation('LatTeleGrid', 'advertising_revenue_transfers_2017_2021'). % [24],[25]

% 2_financial_passiva
% Nothing

% 3_altmark
public_service_obligation('service_mandate_mission'). % [4],[5],[6],[7]
clearly_defined('service_mandate_mission'). % [4],[7]
compensation_for_obligation('advertising_revenue_transfers_2017_2021','LatTeleGrid','service_mandate_mission'). % [10],[11],[16],[17],[18],[19],[21],[24],[25]

% 4_act_of_private_nature
capital_injection('advertising_revenue_transfers_2017_2021'). % [18],[19],[21],[24],[25]
is_shareholder_of('Republic_of_Latvia','BazesTikls_SIA'). % [13],[14],[15]

% 5_act_of_public_nature
monetary_subsidy('advertising_revenue_transfers_2017_2021'). % [24],[25]
regulatory_capacity('service_mandate_mission'). % [4],[7]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('advertising_revenue_transfers_2017_2021','LatTeleGrid'). % [24],[18],[19],[25]
secondary_effects('advertising_revenue_transfers_2017_2021','LatTeleGrid','excess_financial_support'). % [25],[24]
channeled_to_identifiable_undertaking_s('LatTeleGrid','funding_via_fund_transfers'). % [18],[19],[24]
direct_targeting('service_mandate_mission','LatTeleGrid'). % [4],[5],[7]

% 8_active_transfer_of_resources
active_resource_flow('advertising_revenue_transfers_2017_2021', 'advertising_revenue'). % [10],[16],[17],[18],[24]
resource_of_public_undertaking('advertising_revenue'). % [13],[14],[15],[16],[17]
resource_of_body_appointed_by_state_to_administer_measure('LatTeleGrid_Fund_resources'). % [19]
resource_of_central_state_entity('LatTeleGrid_Fund_resources'). % [19],[20]
usage_discretion_by_national_authorities('LatTeleGrid_Fund_resources', 'LatTeleGrid_Fund'). % [20],[21],[22]

% 9_foregoing_revenue
achieving_policy_objective('advertising_revenue_transfers_2017_2021','service_mandate_mission'). % [5],[19],[21],[24]

% 10_imputability
is_public_undertaking('LatTeleGrid'). % [1]
public_undertaking_of_state('LatTeleGrid','Republic_of_Latvia'). % [1]
is_public_undertaking('BazesTikls_SIA'). % [14]
public_undertaking_of_state('BazesTikls_SIA','Republic_of_Latvia'). % [14],[15]
organic_link_with_state_or_intra_state('LatTeleGrid'). % [1],[4]
organic_link_with_state_or_intra_state('BazesTikls_SIA'). % [14],[15]
was_designated('LatTeleGrid','service_mandate_mission','Minister_for_Culture'). % [7],[4]
public_state_authority('Minister_for_Culture','Republic_of_Latvia'). % [4],[7],[19]
measure_scope_indicates_involvement('LatTeleGrid','service_mandate_mission'). % [5],[7],[4]
adopted_or_administered_by('service_mandate_mission','Minister_for_Culture'). % [7],[4]
measure_scope_indicates_involvement('BazesTikls_SIA','advertising_revenue_transfers_2017_2021'). % [13],[16],[17],[18]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021','Minister_for_Culture'). % [24],[19]
