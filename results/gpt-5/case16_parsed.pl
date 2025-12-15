% 1_financial_activa
textual_evidence_of_improved_financial_situation('LatTeleGrid SIA', 'advertising_revenue_full_transfers_2017_2021'). % [24],[25]

% 2_financial_passiva
% Nothing

% 3_altmark
public_service_obligation('ps_tv_nationwide_availability'). % [4],[5],[6],[7]
clearly_defined('ps_tv_nationwide_availability'). % [7]
compensation_for_obligation('advertising_revenue_full_transfers_2017_2021', 'LatTeleGrid SIA', 'ps_tv_nationwide_availability'). % [19],[21],[24]

% 4_act_of_private_nature
loan('interest_bearing_state_loan_at_outset'). % [9]
sell_lease_rent_similar('sale_of_ad_slots_2017_2021'). % [16]
is_shareholder_of('Republic of Latvia', 'BāzesTīkls SIA'). % [15]

% 5_act_of_public_nature
monetary_subsidy('advertising_revenue_full_transfers_2017_2021'). % [24],[25]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('interest_bearing_state_loan_at_outset', 'LatTeleGrid SIA'). % [1],[9]
direct_targeting('sale_of_ad_slots_2017_2021', 'BāzesTīkls SIA'). % [12],[13],[16],[17]
direct_targeting('advertising_revenue_full_transfers_2017_2021', 'LatTeleGrid SIA'). % [24]
secondary_effects('sale_of_ad_slots_2017_2021', 'LatTeleGrid SIA', 'ad_revenue_proceeds_2017_2021'). % [16],[18],[19],[20],[21],[22],[24]
channeled_to_identifiable_undertaking_s('LatTeleGrid SIA', 'ad_revenue_proceeds_2017_2021'). % [24]

% 8_active_transfer_of_resources
active_resource_flow('advertising_revenue_full_transfers_2017_2021', 'ad_revenue_proceeds_2017_2021'). % [24]
resource_of_body_appointed_by_state_to_administer_measure('ad_revenue_proceeds_2017_2021'). % [19]
under_public_control('ad_revenue_proceeds_2017_2021'). % [20],[21],[22],[23]
active_resource_flow('sale_of_ad_slots_2017_2021', 'ad_revenue_proceeds_2017_2021'). % [16],[17],[18]
resource_of_private_body('ad_revenue_proceeds_2017_2021'). % [-]
active_resource_flow('interest_bearing_state_loan_at_outset', 'state_loan_outset_funds'). % [9]
resource_of_central_state_entity('state_loan_outset_funds'). % [9]

% 9_foregoing_revenue
achieving_policy_objective('advertising_revenue_full_transfers_2017_2021', 'ps_tv_nationwide_availability'). % [4],[5],[6],[19],[24]
achieving_policy_objective('sale_of_ad_slots_2017_2021', 'ps_tv_nationwide_availability'). % [10],[11],[13],[19]
achieving_policy_objective('interest_bearing_state_loan_at_outset', 'ps_tv_nationwide_availability'). % [4],[9]

% 10_imputability
is_public_undertaking('LatTeleGrid SIA'). % [1]
public_undertaking_of_state('LatTeleGrid SIA', 'Republic of Latvia'). % [1]
organic_link_with_state_or_intra_state('LatTeleGrid SIA'). % [1]
is_public_undertaking('BāzesTīkls SIA'). % [14]
public_undertaking_of_state('BāzesTīkls SIA', 'Republic of Latvia'). % [15]
organic_link_with_state_or_intra_state('BāzesTīkls SIA'). % [15]
adopted_or_administered_by('sale_of_ad_slots_2017_2021', 'BāzesTīkls SIA'). % [12],[13],[16],[17]
measure_scope_indicates_involvement('BāzesTīkls SIA', 'sale_of_ad_slots_2017_2021'). % [16],[17],[18],[19]
public_state_authority('Latvian Minister for Culture', 'Republic of Latvia'). % [7],[20]
adopted_or_administered_by('advertising_revenue_full_transfers_2017_2021', 'Latvian Minister for Culture'). % [21],[24]
adopted_or_administered_by('advertising_revenue_full_transfers_2017_2021', 'LatTeleGrid Fund'). % [19],[24]
was_designated('LatTeleGrid Fund', 'advertising_revenue_full_transfers_2017_2021', 'Latvian Minister for Culture'). % [19],[21]
public_state_authority('Latvian legislature', 'Republic of Latvia'). % [10]
public_state_authority('Republic of Latvia', 'Republic of Latvia'). % [-]
adopted_or_administered_by('interest_bearing_state_loan_at_outset', 'Republic of Latvia'). % [9]
