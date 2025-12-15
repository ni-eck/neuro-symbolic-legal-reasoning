% 1_financial_activa
textual_evidence_of_improved_financial_situation('LatTeleGrid','advertising_revenue_transfers_2017_2021'). % [18],[24],[25]

% 2_financial_passiva
% Nothing

% 3_altmark
public_service_obligation('public_service_television_mandate'). % [4],[5],[6],[7]
clearly_defined('public_service_television_mandate'). % [7]
compensation_for_obligation('advertising_revenue_transfers_2017_2021','LatTeleGrid','public_service_television_mandate'). % [10],[18],[19],[21],[24],[25]

% 4_act_of_private_nature
loan('interest_bearing_state_loan'). % [9]
capital_injection('advertising_revenue_transfers_2017_2021'). % [10],[18],[19],[24],[25]

% 5_act_of_public_nature
monetary_subsidy('advertising_revenue_transfers_2017_2021'). % [10],[16],[18],[24],[25]
monetary_subsidy('interest_bearing_state_loan'). % [9]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('advertising_revenue_transfers_2017_2021','LatTeleGrid'). % [24]
secondary_effects('advertising_revenue_transfers_2017_2021','LatTeleGrid','excess_funding'). % [24],[25]
channeled_to_identifiable_undertaking_s('LatTeleGrid','funds_transferred_via_LatTeleGrid_Fund'). % [18],[19],[24]

% 8_active_transfer_of_resources
active_resource_flow('interest_bearing_state_loan','latvian_state'). % [9]
resource_of_central_state_entity('latvian_state'). % [9]
active_resource_flow('advertising_revenue_transfers_2017_2021','advertising_revenue'). % [16],[17],[18],[24]
resource_of_public_undertaking('advertising_revenue'). % [13],[14],[15],[16],[17],[18]
resource_of_body_appointed_by_state_to_administer_measure('LatTeleGrid_Fund'). % [19],[20]

% 9_foregoing_revenue
achieving_policy_objective('advertising_revenue_transfers_2017_2021', 'support_public_service_mission'). % [5],[19],[24]

% 10_imputability
is_public_undertaking('LatTeleGrid'). % [1]
public_undertaking_of_state('LatTeleGrid','Latvia'). % [1]
organic_link_with_state_or_intra_state('LatTeleGrid'). % [1]
public_state_authority('Latvian_Minister_for_Culture','Latvia'). % [4],[7]
was_designated('LatTeleGrid','public_service_television_mandate','Latvian_Minister_for_Culture'). % [4],[7]
measure_scope_indicates_involvement('LatTeleGrid','public_service_television_mandate'). % [4],[5],[7]
adopted_or_administered_by('interest_bearing_state_loan','latvian_state'). % [9]
is_public_undertaking('BāzesTīkls_SIA'). % [13],[14]
public_undertaking_of_state('BāzesTīkls_SIA','Latvia'). % [14],[15]
organic_link_with_state_or_intra_state('BāzesTīkls_SIA'). % [14],[15]
measure_scope_indicates_involvement('BāzesTīkls_SIA','advertising_revenue_transfers_2017_2021'). % [12],[16]
public_state_authority('Latvian_legislature','Latvia'). % [10]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021','Latvian_legislature'). % [10]
adopted_or_administered_by('advertising_revenue_transfers_2017_2021','Latvian_Minister_for_Culture'). % [24]
was_designated('LatTeleGrid_Fund','funds_transferred_via_LatTeleGrid_Fund','Latvian_Minister_for_Culture'). % [19]
strong_public_supervision('LatTeleGrid_Fund','funds_transferred_via_LatTeleGrid_Fund'). % [20],[21]
