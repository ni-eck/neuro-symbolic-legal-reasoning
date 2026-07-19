% 1_financial_activa
parsed_money_received('trasporti puglia srl', 'puglia_bus_service_contract_extensions', 1237100). % [22]
parsed_money_received('mobilita bari s.p.a.', 'puglia_bus_service_contract_extensions', 1085700). % [23]

% 2_financial_passiva
parsed_value_granted_services('trasporti puglia srl', 'puglia_bus_service_contract_extensions', 1237100). % [21],[22]
parsed_value_granted_services('mobilita bari s.p.a.', 'puglia_bus_service_contract_extensions', 1085700). % [21],[23]

% 3_altmark
compensation_for_obligation('puglia_bus_service_contract_extensions', 'trasporti puglia srl', 'regional_passenger_transport_public_service_obligations'). % [4],[19],[22]
compensation_for_obligation('puglia_bus_service_contract_extensions', 'mobilita bari s.p.a.', 'regional_passenger_transport_public_service_obligations'). % [4],[19],[23]
public_service_obligation('regional_passenger_transport_public_service_obligations'). % [4]
clearly_defined('regional_passenger_transport_public_service_obligations'). % [5]
compensation_params_predefined('puglia_bus_service_contract_extensions', 'regional_passenger_transport_public_service_obligations'). % [11],[13],[21]
compensation_params_objective('puglia_bus_service_contract_extensions', 'regional_passenger_transport_public_service_obligations'). % [8],[9],[10],[21]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('puglia_bus_service_contract_extensions'). % [9],[10],[13],[24],[25],[26],[27],[28]

% 4_act_of_private_nature
purchase_lease_rent_similar('puglia_bus_service_contract_extensions'). % [3],[4],[18],[19],[20]

% 5_act_of_public_nature
monetary_subsidy('puglia_bus_service_contract_extensions'). % [4],[19],[20]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('advance_loss_estimate_documentation', 'independent_accounting_expert', 'puglia_bus_service_contract_extensions'). % [11],[12]
ex_ante_evaluation('advance_loss_estimate_documentation', 'puglia_bus_service_contract_extensions'). % [11],[12]

% 7_direct_or_indirect_advantage
direct_targeting('puglia_bus_service_contract_extensions', 'trasporti puglia srl'). % [19],[22]
direct_targeting('puglia_bus_service_contract_extensions', 'mobilita bari s.p.a.'). % [19],[23]
direct_targeting('puglia_bus_service_contract_extensions', 'ten_bus_operators'). % [18],[19],[20]

% 8_active_transfer_of_resources
active_resource_flow('puglia_bus_service_contract_extensions', 'puglia_regional_budget_compensation'). % [19],[20]
resource_of_intrastate_entity('puglia_regional_budget_compensation'). % [1],[19],[20]

% 9_foregoing_revenue
actual_price_goods_service('puglia_bus_service_contract_extensions', 1237100). % [21],[22]
actual_price_goods_service('puglia_bus_service_contract_extensions', 1085700). % [21],[23]
achieving_policy_objective('puglia_bus_service_contract_extensions', 'continued_operation_regional_bus_services'). % [1],[3]

% 10_imputability
adopted_or_administered_by('puglia_bus_service_contract_extensions', 'puglia_regional_authorities'). % [1],[3],[18],[20]
public_intra_state_authority('puglia_regional_authorities', 'puglia'). % [1],[18],[20]
intrastate_of('puglia', 'italy'). % [1]
