% 1_financial_activa
parsed_money_received('express_sanchez_norte_s.l.', 'interim_bus_contracts_castilla_la_mancha_2020', 589000). % [20],[21]
parsed_money_received('servicios_interurbanos_rapidos_s.a.', 'interim_bus_contracts_castilla_la_mancha_2020', 570000). % [22]

% 2_financial_passiva
parsed_value_granted_services('express_sanchez_norte_s.l.', 'interim_bus_contracts_castilla_la_mancha_2020', 1240000). % [20]
parsed_value_granted_services('servicios_interurbanos_rapidos_s.a.', 'interim_bus_contracts_castilla_la_mancha_2020', 1200000). % [22]

% 3_altmark
compensation_for_obligation('interim_bus_contracts_castilla_la_mancha_2020', 'express_sanchez_norte_s.l.', 'public_service_obligation_affected_lines_2020'). % [20]
compensation_for_obligation('interim_bus_contracts_castilla_la_mancha_2020', 'servicios_interurbanos_rapidos_s.a.', 'public_service_obligation_affected_lines_2020'). % [22]
public_service_obligation('public_service_obligation_affected_lines_2020'). % [2],[7],[15]
clearly_defined('public_service_obligation_affected_lines_2020'). % [15]
compensation_params_predefined('interim_bus_contracts_castilla_la_mancha_2020', 'public_service_obligation_affected_lines_2020'). % [16],[19],[21]
compensation_params_objective('interim_bus_contracts_castilla_la_mancha_2020', 'public_service_obligation_affected_lines_2020'). % [19]
compensation_params_transparent('interim_bus_contracts_castilla_la_mancha_2020', 'public_service_obligation_affected_lines_2020'). % [19],[23]
public_procurement_procedure_used('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [9]
designed_to_minimise_cost_to_community('award_backup_bidders_castilla_la_mancha_2020'). % [10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('interim_bus_contracts_castilla_la_mancha_2020'). % [17],[18],[25]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('interim_bus_contracts_castilla_la_mancha_2020'). % [17],[19],[23]
actual_costs(1240000, 'public_service_obligation_affected_lines_2020'). % [20],[22]
reasonable_profit(49600, 'public_service_obligation_affected_lines_2020'). % [18],[20]

% 4_act_of_private_nature
economic_objective_similar_to_private_investor('interim_bus_contracts_castilla_la_mancha_2020'). % [11]
fallback_act_of_economic_nature('interim_bus_contracts_castilla_la_mancha_2020'). % [7]

% 5_act_of_public_nature
monetary_subsidy('interim_bus_contracts_castilla_la_mancha_2020'). % [16],[20],[21],[22],[30]

% 6_MEO
tender_used('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [9]
competitive('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [10]
transparent('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [11]
non_discriminatory('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [11]

% 7_direct_or_indirect_advantage
direct_targeting('interim_bus_contracts_castilla_la_mancha_2020', 'express_sanchez_norte_s.l.'). % [20],[21]
direct_targeting('interim_bus_contracts_castilla_la_mancha_2020', 'servicios_interurbanos_rapidos_s.a.'). % [22]

% 8_active_transfer_of_resources
active_resource_flow('interim_bus_contracts_castilla_la_mancha_2020', 'castilla_la_mancha_regional_budget'). % [21],[22],[30]
resource_of_intrastate_entity('castilla_la_mancha_regional_budget'). % [30]

% 9_foregoing_revenue
actual_price_goods_service('interim_bus_contracts_castilla_la_mancha_2020', 2). % [20]
market_price_goods_service('interim_bus_contracts_castilla_la_mancha_2020', 2). % [14],[20]
selection_process_for_measure('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [8],[9]
ex_ante('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [10]
transparent('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [11]
non_discriminatory('interim_bus_contracts_castilla_la_mancha_2020', 'award_backup_bidders_castilla_la_mancha_2020'). % [11]
achieving_policy_objective('interim_bus_contracts_castilla_la_mancha_2020', 'public_service_obligation_affected_lines_2020'). % [7],[15]
revenue_loss_is_justified_by_policy('public_service_obligation_affected_lines_2020'). % [16]

% 10_imputability
adopted_or_administered_by('interim_bus_contracts_castilla_la_mancha_2020', 'authorities_castilla_la_mancha_region'). % [1],[7],[30]
public_intra_state_authority('authorities_castilla_la_mancha_region', 'castilla_la_mancha'). % [1]
intrastate_of('castilla_la_mancha', 'spain'). % [1]
measure_scope_indicates_involvement('authorities_castilla_la_mancha_region', 'interim_bus_contracts_castilla_la_mancha_2020'). % [7],[16],[30]
