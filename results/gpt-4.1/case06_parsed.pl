% 1_financial_activa
parsed_money_received('service_station_operators_0_20km', 'polish_petrol_border_subsidy_2021', 0.08). % [4]
parsed_money_received('service_station_operators_20_40km', 'polish_petrol_border_subsidy_2021', 0.04). % [5]
parsed_money_received('service_station_operators_border_region', 'polish_petrol_border_subsidy_2021', 100000). % [7]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
fallback_act_of_economic_nature('polish_petrol_border_subsidy_2021'). % [2],[4],[5],[6],[7],[8]

% 5_act_of_public_nature
monetary_subsidy('polish_petrol_border_subsidy_2021'). % [2]
tax_related('polish_petrol_border_subsidy_2021'). % [1]
regulatory_capacity('polish_petrol_border_subsidy_2021'). % [1]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('polish_petrol_border_subsidy_2021', 'service_station_operators_0_20km'). % [4]
direct_targeting('polish_petrol_border_subsidy_2021', 'service_station_operators_20_40km'). % [5]
secondary_effects('polish_petrol_border_subsidy_2021', 'service_station_operators_border_region', 'oil_companies_cover_remaining_discount'). % [12]
channeled_to_group_of_undertakings('service_station_operators_border_region', 'oil_companies_cover_remaining_discount'). % [12]

% 8_active_transfer_of_resources
active_resource_flow('polish_petrol_border_subsidy_2021', 'state_budget'). % [2],[8]
resource_of_central_state_entity('state_budget'). % [8]

% 9_foregoing_revenue
achieving_policy_objective('polish_petrol_border_subsidy_2021', 'maintain_price_competitiveness'). % [3]
actual_price_goods_service('polish_petrol_border_subsidy_2021', 0.08). % [4]
actual_price_goods_service('polish_petrol_border_subsidy_2021', 0.04). % [5]

% 10_imputability
adopted_or_administered_by('polish_petrol_border_subsidy_2021', 'polish_government'). % [1]
public_state_authority('polish_government', 'poland'). % [1]
