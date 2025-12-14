% 1_financial_activa
parsed_money_received('Express Sanchéz Norte S.L.', 'interim_service_contract_express_sanchez_norte', 589000). % [20],[21]
parsed_money_received('Servicios Interurbanos Rapidos S.A.', 'interim_service_contract_servicios_interurbanos_rapidos', 570000). % [22]

% 2_financial_passiva
parsed_value_granted_services('Express Sanchéz Norte S.L.', 'interim_service_contract_express_sanchez_norte', 1240000). % [20]
parsed_value_granted_services('Servicios Interurbanos Rapidos S.A.', 'interim_service_contract_servicios_interurbanos_rapidos', 1200000). % [22]

% 3_altmark
compensation_for_obligation('interim_service_contract_express_sanchez_norte', 'Express Sanchéz Norte S.L.', 'public_service_obligation_express_sanchez_norte'). % [16],[20]
public_service_obligation('public_service_obligation_express_sanchez_norte'). % [15]
clearly_defined('public_service_obligation_express_sanchez_norte'). % [15]
compensation_params_predefined('interim_service_contract_express_sanchez_norte', 'public_service_obligation_express_sanchez_norte'). % [19]
compensation_params_objective('interim_service_contract_express_sanchez_norte', 'public_service_obligation_express_sanchez_norte'). % [19]
compensation_params_transparent('interim_service_contract_express_sanchez_norte', 'public_service_obligation_express_sanchez_norte'). % [19]
actual_costs(1240000, 'public_service_obligation_express_sanchez_norte'). % [20]
reasonable_profit(23600, 'public_service_obligation_express_sanchez_norte'). % [18],[20]
public_procurement_procedure_used('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [9]
designed_to_minimise_cost_to_community('original_procurement_round'). % [10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('interim_service_contract_express_sanchez_norte'). % [25],[27]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('interim_service_contract_express_sanchez_norte'). % [17],[19],[23]
compensation_for_obligation('interim_service_contract_servicios_interurbanos_rapidos', 'Servicios Interurbanos Rapidos S.A.', 'public_service_obligation_servicios_interurbanos_rapidos'). % [16],[22]
public_service_obligation('public_service_obligation_servicios_interurbanos_rapidos'). % [15]
clearly_defined('public_service_obligation_servicios_interurbanos_rapidos'). % [15]
compensation_params_predefined('interim_service_contract_servicios_interurbanos_rapidos', 'public_service_obligation_servicios_interurbanos_rapidos'). % [19]
compensation_params_objective('interim_service_contract_servicios_interurbanos_rapidos', 'public_service_obligation_servicios_interurbanos_rapidos'). % [19]
compensation_params_transparent('interim_service_contract_servicios_interurbanos_rapidos', 'public_service_obligation_servicios_interurbanos_rapidos'). % [19]
actual_costs(1200000, 'public_service_obligation_servicios_interurbanos_rapidos'). % [22]
reasonable_profit(22800, 'public_service_obligation_servicios_interurbanos_rapidos'). % [18],[22]
public_procurement_procedure_used('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [9]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('interim_service_contract_servicios_interurbanos_rapidos'). % [25],[27]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('interim_service_contract_servicios_interurbanos_rapidos'). % [17],[19],[23]

% 4_act_of_private_nature
economic_objective_similar_to_private_investor('interim_service_contract_express_sanchez_norte'). % [14],[16],[17],[18],[19],[20],[21],[23],[24],[25],[26],[27],[28],[29]
economic_objective_similar_to_private_investor('interim_service_contract_servicios_interurbanos_rapidos'). % [14],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29]

% 5_act_of_public_nature
monetary_subsidy('interim_service_contract_express_sanchez_norte'). % [16],[20],[21]
monetary_subsidy('interim_service_contract_servicios_interurbanos_rapidos'). % [16],[22]

% 6_MEO
tender_used('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [9]
competitive('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [11]
transparent('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [11]
non_discriminatory('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [11]
tender_used('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [9]
competitive('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [11]
transparent('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [11]
non_discriminatory('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [11]
measure_financial_terms('interim_service_contract_express_sanchez_norte', 589000). % [21]
measure_financial_terms('interim_service_contract_servicios_interurbanos_rapidos', 570000). % [22]

% 7_direct_or_indirect_advantage
direct_targeting('interim_service_contract_express_sanchez_norte', 'Express Sanchéz Norte S.L.'). % [20],[21]
direct_targeting('interim_service_contract_servicios_interurbanos_rapidos', 'Servicios Interurbanos Rapidos S.A.'). % [22]

% 8_active_transfer_of_resources
active_resource_flow('interim_service_contract_express_sanchez_norte', 'castilla_la_mancha_regional_budget'). % [20],[21],[30]
active_resource_flow('interim_service_contract_servicios_interurbanos_rapidos', 'castilla_la_mancha_regional_budget'). % [22],[30]
resource_of_intrastate_entity('castilla_la_mancha_regional_budget'). % [30]

% 9_foregoing_revenue
actual_price_goods_service('interim_service_contract_express_sanchez_norte', 2.00). % [20]
market_price_goods_service('interim_service_contract_express_sanchez_norte', 2.00). % [20]
actual_price_goods_service('interim_service_contract_servicios_interurbanos_rapidos', 2.00). % [22]
market_price_goods_service('interim_service_contract_servicios_interurbanos_rapidos', 2.00). % [22]
selection_process_for_measure('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [9]
selection_process_for_measure('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [9]
ex_ante('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [10]
ex_ante('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [10]
transparent('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [11]
transparent('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [11]
non_discriminatory('interim_service_contract_express_sanchez_norte', 'original_procurement_round'). % [11]
non_discriminatory('interim_service_contract_servicios_interurbanos_rapidos', 'original_procurement_round'). % [11]
achieving_policy_objective('interim_service_contract_express_sanchez_norte', 'public_service_obligation_express_sanchez_norte'). % [7],[15]
achieving_policy_objective('interim_service_contract_servicios_interurbanos_rapidos', 'public_service_obligation_servicios_interurbanos_rapidos'). % [7],[15]

% 10_imputability
adopted_or_administered_by('interim_service_contract_express_sanchez_norte', 'castilla_la_mancha_region'). % [7],[20]
adopted_or_administered_by('interim_service_contract_servicios_interurbanos_rapidos', 'castilla_la_mancha_region'). % [7],[22]
public_intra_state_authority('castilla_la_mancha_region', 'castilla_la_mancha'). % [1]
intrastate_of('castilla_la_mancha', 'spain'). % [1]
measure_scope_indicates_involvement('castilla_la_mancha_region', 'interim_service_contract_express_sanchez_norte'). % [7],[15],[16]
measure_scope_indicates_involvement('castilla_la_mancha_region', 'interim_service_contract_servicios_interurbanos_rapidos'). % [7],[15],[16]
