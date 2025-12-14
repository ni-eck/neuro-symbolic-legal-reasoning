% 1_financial_activa
parsed_value_received_rights_licenses('Portum Energia S.A.', 'exclusive_right_offshore_wind_farm_zone_e7', 1125000000). % [7],[8],[11],[12],[13]
parsed_value_received_rights_licenses('Portum Energia S.A.', 'exclusive_right_offshore_wind_farm_zone_e7_variable', 15000000). % [7],[8],[11],[12],[13]

% 2_financial_passiva
parsed_money_spent('Portum Energia S.A.', 'exclusive_right_offshore_wind_farm_zone_e7', 1125000). % [11],[12]
parsed_money_spent('Portum Energia S.A.', 'exclusive_right_offshore_wind_farm_zone_e7_variable', 2000000). % [12],[13]

% 3_altmark
% Nothing

% 4_act_of_private_nature
sell_lease_rent_similar('exclusive_right_offshore_wind_farm_zone_e7'). % [7],[8],[11],[12]
sell_lease_rent_similar('exclusive_right_offshore_wind_farm_zone_e7_variable'). % [7],[8],[12]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_right_offshore_wind_farm_zone_e7'). % [8],[11]
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_right_offshore_wind_farm_zone_e7_variable'). % [8],[11]

% 6_MEO
measure_financial_terms('exclusive_right_offshore_wind_farm_zone_e7', 75000). % [12]
measure_financial_terms('exclusive_right_offshore_wind_farm_zone_e7_variable', 1000). % [12]
expert_financial_expectation('exclusive_right_offshore_wind_farm_zone_e7', 150000). % [5]
expert_financial_expectation('exclusive_right_offshore_wind_farm_zone_e7_variable', 3000). % [5]
textual_evidence_worse_financial_terms('exclusive_right_offshore_wind_farm_zone_e7'). % [12]
textual_evidence_worse_financial_terms('exclusive_right_offshore_wind_farm_zone_e7_variable'). % [12]

% 7_direct_or_indirect_advantage
direct_targeting('exclusive_right_offshore_wind_farm_zone_e7', 'Portum Energia S.A.'). % [7],[8]
direct_targeting('exclusive_right_offshore_wind_farm_zone_e7_variable', 'Portum Energia S.A.'). % [7],[8],[12]

% 8_active_transfer_of_resources
active_resource_flow('exclusive_right_offshore_wind_farm_zone_e7', 'maritime_area_zone_e7'). % [8],[11]
active_resource_flow('exclusive_right_offshore_wind_farm_zone_e7_variable', 'maritime_area_zone_e7'). % [8],[11]
resource_of_central_state_entity('maritime_area_zone_e7'). % [1],[7],[8],[10]

% 9_foregoing_revenue
actual_price_goods_service('exclusive_right_offshore_wind_farm_zone_e7', 75000). % [12]
market_price_goods_service('exclusive_right_offshore_wind_farm_zone_e7', 150000). % [5],[12]
access_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7', 75000). % [12]
market_value_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7', 150000). % [5],[12]
system_price_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7', 150000). % [5]
sell_price_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7', 75000). % [12]
actual_price_goods_service('exclusive_right_offshore_wind_farm_zone_e7_variable', 1000). % [12]
market_price_goods_service('exclusive_right_offshore_wind_farm_zone_e7_variable', 3000). % [5],[12]
access_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7_variable', 1000). % [12]
market_value_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7_variable', 3000). % [5],[12]
system_price_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7_variable', 3000). % [5]
sell_price_domain_resources_rights('exclusive_right_offshore_wind_farm_zone_e7_variable', 1000). % [12]
achieving_policy_objective('exclusive_right_offshore_wind_farm_zone_e7', 'speed_up_green_energy_investment'). % [14]
revenue_loss_is_justified_by_policy('speed_up_green_energy_investment'). % [14]

% 10_imputability
adopted_or_administered_by('exclusive_right_offshore_wind_farm_zone_e7', 'Portuguese Ministry for Maritime Infrastructure'). % [7]
public_state_authority('Portuguese Ministry for Maritime Infrastructure', 'Portugal'). % [7]
measure_scope_indicates_involvement('Portuguese Ministry for Maritime Infrastructure', 'exclusive_right_offshore_wind_farm_zone_e7'). % [14]
adopted_or_administered_by('exclusive_right_offshore_wind_farm_zone_e7_variable', 'Portuguese Ministry for Maritime Infrastructure'). % [7]
measure_scope_indicates_involvement('Portuguese Ministry for Maritime Infrastructure', 'exclusive_right_offshore_wind_farm_zone_e7_variable'). % [14]
