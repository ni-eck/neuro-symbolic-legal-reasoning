% 1_financial_activa
parsed_money_received('Trasporti Puglia SRL', 'public_service_compensation_puglia', 1237100). % [22]
parsed_money_received('Mobilità Bari S.p.A.', 'public_service_compensation_puglia', 1082700). % [23]

% 2_financial_passiva
parsed_value_granted_services('Trasporti Puglia SRL', 'public_service_compensation_puglia', 1237100). % [22]
parsed_value_granted_services('Mobilità Bari S.p.A.', 'public_service_compensation_puglia', 1085700). % [23]

% 3_altmark
compensation_for_obligation('public_service_compensation_puglia', 'Trasporti Puglia SRL', 'regional_bus_service_obligation'). % [22]
compensation_for_obligation('public_service_compensation_puglia', 'Mobilità Bari S.p.A.', 'regional_bus_service_obligation'). % [23]
public_service_obligation('regional_bus_service_obligation'). % [4]
clearly_defined('regional_bus_service_obligation'). % [5]
compensation_params_predefined('public_service_compensation_puglia', 'regional_bus_service_obligation'). % [13],[21]
compensation_params_objective('public_service_compensation_puglia', 'regional_bus_service_obligation'). % [9],[21]
compensation_params_transparent('public_service_compensation_puglia', 'regional_bus_service_obligation'). % [21]
reasonable_profit(0.125, 'regional_bus_service_obligation'). % [10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('public_service_compensation_puglia'). % [9],[10],[13],[24]-[28]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('public_service_compensation_puglia'). % [9],[10]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('public_service_compensation_puglia'). % [4],[19],[22],[23]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('public_service_compensation_puglia', 'Trasporti Puglia SRL'). % [22]
direct_targeting('public_service_compensation_puglia', 'Mobilità Bari S.p.A.'). % [23]

% 8_active_transfer_of_resources
active_resource_flow('public_service_compensation_puglia', 'regional_budget_puglia'). % [19],[20],[22],[23]
resource_of_intrastate_entity('regional_budget_puglia'). % [20]

% 9_foregoing_revenue
actual_price_goods_service('public_service_compensation_puglia', 1.39). % [22]
actual_price_goods_service('public_service_compensation_puglia', 1.54). % [23]
achieving_policy_objective('public_service_compensation_puglia', 'regional_bus_service_obligation'). % [4],[5]

% 10_imputability
adopted_or_administered_by('public_service_compensation_puglia', 'puglia_regional_authorities'). % [3],[18],[20]
public_intra_state_authority('puglia_regional_authorities', 'Puglia'). % [1],[18]
intrastate_of('Puglia', 'Italy'). % [1]
measure_scope_indicates_involvement('puglia_regional_authorities', 'public_service_compensation_puglia'). % [4],[5],[6],[8],[9]
