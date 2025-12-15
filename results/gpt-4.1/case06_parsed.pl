% 1_financial_activa
parsed_money_received('border_service_station_operators_0_20km', 'polish_petrol_subsidy_2021', 100000). % [4],[5],[7],[8]
parsed_money_received('border_service_station_operators_20_40km', 'polish_petrol_subsidy_2021', 100000). % [4],[5],[7],[8]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('polish_petrol_subsidy_2021'). % [2]
tax_related('polish_petrol_subsidy_2021'). % [1]
regulatory_capacity('polish_petrol_subsidy_2021'). % [1]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('polish_petrol_subsidy_2021', 'border_service_station_operators_0_20km'). % [4],[5]
direct_targeting('polish_petrol_subsidy_2021', 'border_service_station_operators_20_40km'). % [4],[5]

% 8_active_transfer_of_resources
active_resource_flow('polish_petrol_subsidy_2021', 'state_budget_funds'). % [2],[6],[8]
resource_of_central_state_entity('state_budget_funds'). % [8]

% 9_foregoing_revenue
achieving_policy_objective('polish_petrol_subsidy_2021', 'maintain_price_competitiveness_near_czech_border'). % [3]
goods_or_services_priced_below_market_value_textual_evidence('polish_petrol_subsidy_2021'). % [3],[4],[5],[12]

% 10_imputability
adopted_or_administered_by('polish_petrol_subsidy_2021', 'polish_government'). % [1],[2]
public_state_authority('polish_government', 'poland'). % [-]
