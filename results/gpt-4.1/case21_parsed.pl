% 1_financial_activa
parsed_value_received_rights_licenses('portum_energia_s.a.', 'exclusive_offshore_wind_license_zone_e7', 15000000). % [7],[11],[12],[13]
parsed_value_received_rights_licenses('portum_energia_s.a.', 'exclusive_offshore_wind_license_zone_e7', 2000000). % [7],[11],[12],[13]

% 2_financial_passiva
parsed_money_spent('portum_energia_s.a.', 'exclusive_offshore_wind_license_zone_e7', 75000). % [12]
parsed_money_spent('portum_energia_s.a.', 'exclusive_offshore_wind_license_zone_e7', 2000000). % [12],[13]

% 3_altmark
% Nothing

% 4_act_of_private_nature
sell_lease_rent_similar('exclusive_offshore_wind_license_zone_e7'). % [12]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_offshore_wind_license_zone_e7'). % [8],[11]
regulatory_capacity('exclusive_offshore_wind_license_zone_e7'). % [1],[2],[4]

% 6_MEO
measure_financial_terms('exclusive_offshore_wind_license_zone_e7', 75000). % [12]

% 7_direct_or_indirect_advantage
direct_targeting('exclusive_offshore_wind_license_zone_e7', 'portum_energia_s.a.'). % [7],[8]

% 8_active_transfer_of_resources
active_resource_flow('exclusive_offshore_wind_license_zone_e7', 'maritime_area_zone_e7'). % [8],[11]
resource_of_central_state_entity('maritime_area_zone_e7'). % [1],[7],[8],[10]

% 9_foregoing_revenue
actual_price_goods_service('exclusive_offshore_wind_license_zone_e7', 75000). % [12]
market_price_goods_service('exclusive_offshore_wind_license_zone_e7', 150000). % [5],[12]
access_domain_resources_rights('exclusive_offshore_wind_license_zone_e7', 75000). % [12]
market_value_domain_resources_rights('exclusive_offshore_wind_license_zone_e7', 150000). % [5],[12]
system_price_domain_resources_rights('exclusive_offshore_wind_license_zone_e7', 150000). % [5]
achieving_policy_objective('exclusive_offshore_wind_license_zone_e7', 'speed_up_green_energy_investment'). % [14]
revenue_loss_is_justified_by_policy('speed_up_green_energy_investment'). % [14]

% 10_imputability
adopted_or_administered_by('exclusive_offshore_wind_license_zone_e7', 'portuguese_ministry_for_maritime_infrastructure'). % [7]
public_state_authority('portuguese_ministry_for_maritime_infrastructure', 'portugal'). % [7]
measure_scope_indicates_involvement('portuguese_ministry_for_maritime_infrastructure', 'exclusive_offshore_wind_license_zone_e7'). % [14]
