% 1_financial_activa
parsed_money_received('Express Sanchéz Norte S.L.','temporary_interim_contract_castilla_la_mancha_apr2020_dec2020',589000). % [20],[21],[16],[30]
parsed_money_received('Servicios Interurbanos Rapidos S.A.','temporary_interim_contract_castilla_la_mancha_apr2020_dec2020',570000). % [22],[16],[30]

% 2_financial_passiva
parsed_money_spent('Express Sanchéz Norte S.L.', 'temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 1240000). % [20],[21]
parsed_value_granted_services('Express Sanchéz Norte S.L.', 'temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 1240000). % [20],[21]
parsed_money_spent('Servicios Interurbanos Rapidos S.A.', 'temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 1200000). % [22],[20],[21]
parsed_value_granted_services('Servicios Interurbanos Rapidos S.A.', 'temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 1200000). % [22],[20],[21]

% 3_altmark
compensation_for_obligation('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'Express Sanchéz Norte S.L.', 'regional_bus_lines_psos_apr2020_dec2020'). % [7],[13],[16]
compensation_for_obligation('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'Servicios Interurbanos Rapidos S.A.', 'regional_bus_lines_psos_apr2020_dec2020'). % [7],[13],[16]
public_service_obligation('regional_bus_lines_psos_apr2020_dec2020'). % [2],[7],[15]
clearly_defined('regional_bus_lines_psos_apr2020_dec2020'). % [13],[14],[15]
compensation_params_predefined('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'regional_bus_lines_psos_apr2020_dec2020'). % [17],[18],[19],[25]
compensation_params_objective('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'regional_bus_lines_psos_apr2020_dec2020'). % [19],[10],[11]
public_procurement_procedure_used('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [4],[8],[9],[11]
designed_to_minimise_cost_to_community('original_open_tender_dec2019'). % [10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020'). % [18],[25],[26],[27]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020'). % [16],[17],[19],[23]
actual_costs(1240000, 'regional_bus_lines_psos_apr2020_dec2020'). % [20],[21]
actual_costs(1200000, 'regional_bus_lines_psos_apr2020_dec2020'). % [22],[20]
reasonable_profit(23560, 'regional_bus_lines_psos_apr2020_dec2020'). % [18],[21],[17]
reasonable_profit(22800, 'regional_bus_lines_psos_apr2020_dec2020'). % [18],[22],[17]

% 4_act_of_private_nature
fallback_act_of_economic_nature('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020'). % [7],[13],[16],[30]

% 5_act_of_public_nature
monetary_subsidy('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020'). % [7],[16],[30],[21],[22]

% 6_MEO
tender_used('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [4],[9],[8]
competitive('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [4],[11]
transparent('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [11]
non_discriminatory('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [11]
same_terms_and_conditions('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'castilla_la_mancha_region', 'Express Sanchéz Norte S.L.'). % [14],[20]
same_terms_and_conditions('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'castilla_la_mancha_region', 'Servicios Interurbanos Rapidos S.A.'). % [14],[22]
intervention_carried_at_same_time('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'castilla_la_mancha_region', 'Express Sanchéz Norte S.L.'). % [7],[13]
intervention_carried_at_same_time('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'castilla_la_mancha_region', 'Servicios Interurbanos Rapidos S.A.'). % [7],[13],[22]
measure_financial_terms('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 589000). % [20],[21]
measure_financial_terms('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 570000). % [22],[23]
comparable_type('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [9],[14]

% 7_direct_or_indirect_advantage
direct_targeting('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020','Express Sanchéz Norte S.L.'). % [7],[13],[20]
direct_targeting('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020','Servicios Interurbanos Rapidos S.A.'). % [7],[13],[22]
secondary_effects('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020','Express Sanchéz Norte S.L.','retain_passenger_revenue'). % [30],[20]
secondary_effects('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020','Servicios Interurbanos Rapidos S.A.','retain_passenger_revenue'). % [30],[22]
channeled_to_identifiable_undertaking_s('Express Sanchéz Norte S.L.','retain_passenger_revenue'). % [30],[20]
channeled_to_identifiable_undertaking_s('Servicios Interurbanos Rapidos S.A.','retain_passenger_revenue'). % [30],[22]

% 8_active_transfer_of_resources
active_resource_flow('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020','castilla_la_mancha_regional_budget'). % [16],[24],[30],[21],[22]
resource_of_intrastate_entity('castilla_la_mancha_regional_budget'). % [30]
resource_of_private_body('passenger_revenue'). % [30]

% 9_foregoing_revenue
selection_process_for_measure('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [4],[9],[11]
transparent('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [11]
non_discriminatory('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [11]
ex_ante('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'original_open_tender_dec2019'). % [4],[10],[11]
achieving_policy_objective('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'maintain_basic_public_transport_connectivity'). % [6],[7]
revenue_loss_is_justified_by_policy('maintain_basic_public_transport_connectivity'). % [16],[17],[6]

% 10_imputability
adopted_or_administered_by('temporary_interim_contract_castilla_la_mancha_apr2020_dec2020', 'castilla_la_mancha_region'). % [6],[7],[13],[30]
public_intra_state_authority('castilla_la_mancha_region', 'castilla_la_mancha'). % [1]
intrastate_of('castilla_la_mancha', 'spain'). % [1]
