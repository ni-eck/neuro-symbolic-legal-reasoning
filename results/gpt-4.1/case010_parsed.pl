% 1_financial_activa
parsed_money_received('Trasporti Puglia SRL', 'contract_extension_2018', 1237100). % [22]
parsed_money_received('Mobilità Bari S.p.A.', 'contract_extension_2018', 1082700). % [23]

% 2_financial_passiva
parsed_value_granted_services('Trasporti Puglia SRL', 'contract_extension_2018', 1237100). % [22]
parsed_value_granted_services('Mobilità Bari S.p.A.', 'contract_extension_2018', 1082700). % [23]

% 3_altmark
compensation_for_obligation('contract_extension_2018', 'Trasporti Puglia SRL', 'regional_bus_service_obligation'). % [3],[4],[22]
compensation_for_obligation('contract_extension_2018', 'Mobilità Bari S.p.A.', 'regional_bus_service_obligation'). % [3],[4],[23]
public_service_obligation('regional_bus_service_obligation'). % [4]
clearly_defined('regional_bus_service_obligation'). % [5]
compensation_params_predefined('contract_extension_2018', 'regional_bus_service_obligation'). % [21]
compensation_params_objective('contract_extension_2018', 'regional_bus_service_obligation'). % [9],[21]
compensation_params_transparent('contract_extension_2018', 'regional_bus_service_obligation'). % [21]
actual_costs(1237100, 'regional_bus_service_obligation'). % [22]
actual_costs(1085700, 'regional_bus_service_obligation'). % [23]
reasonable_profit(0.125, 'regional_bus_service_obligation'). % [10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('contract_extension_2018'). % [13],[24],[25],[26],[27]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('contract_extension_2018'). % [9],[10]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('contract_extension_2018'). % [4],[6],[19],[20],[22],[23]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('contract_extension_2018', 'Trasporti Puglia SRL'). % [3],[22]
direct_targeting('contract_extension_2018', 'Mobilità Bari S.p.A.'). % [3],[23]

% 8_active_transfer_of_resources
active_resource_flow('contract_extension_2018', 'regional_budget_puglia'). % [19],[20]
resource_of_intrastate_entity('regional_budget_puglia'). % [20]

% 9_foregoing_revenue
actual_price_goods_service('contract_extension_2018', 1.39). % [22]
actual_price_goods_service('contract_extension_2018', 1.54). % [23]
achieving_policy_objective('contract_extension_2018', 'regional_bus_service_obligation'). % [4],[5],[6]

% 10_imputability
adopted_or_administered_by('contract_extension_2018', 'Puglia Regional Authorities'). % [3],[18]
public_intra_state_authority('Puglia Regional Authorities', 'Puglia'). % [1]
intrastate_of('Puglia', 'Italy'). % [1]
measure_scope_indicates_involvement('Puglia Regional Authorities', 'contract_extension_2018'). % [4],[5],[6],[7],[8]
