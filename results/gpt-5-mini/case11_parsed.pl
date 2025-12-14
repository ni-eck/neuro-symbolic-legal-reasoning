% 1_financial_activa
parsed_money_received('Express Sanchéz Norte S.L.','interim_service_contracts_2020',589000). % [20],[21]
parsed_money_received('Servicios Interurbanos Rapidos S.A.','interim_service_contracts_2020',570000). % [22],[23]

% 2_financial_passiva
parsed_money_spent('Express Sanchéz Norte S.L.', 'interim_service_contracts_2020', 1240000). % [20],[21]
parsed_value_granted_services('Express Sanchéz Norte S.L.', 'interim_service_contracts_2020', 1240000). % [20],[21]
parsed_other_liabilities_incurred('Express Sanchéz Norte S.L.', 'interim_service_contracts_2020', 589000). % [21]
parsed_money_spent('Servicios Interurbanos Rapidos S.A.', 'interim_service_contracts_2020', 1200000). % [22],[20]
parsed_value_granted_services('Servicios Interurbanos Rapidos S.A.', 'interim_service_contracts_2020', 1200000). % [22],[20]

% 3_altmark
public_service_obligation('regional_bus_psos_2020'). % [2],[7],[16]
clearly_defined('regional_bus_psos_2020'). % [15],[13]
compensation_for_obligation('interim_service_contracts_2020','Express Sanchéz Norte S.L.','regional_bus_psos_2020'). % [16],[20],[21]
compensation_for_obligation('interim_service_contracts_2020','Servicios Interurbanos Rapidos S.A.','regional_bus_psos_2020'). % [16],[22]
compensation_params_predefined('interim_service_contracts_2020','regional_bus_psos_2020'). % [16],[17],[19]
compensation_params_objective('interim_service_contracts_2020','regional_bus_psos_2020'). % [19],[17]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('interim_service_contracts_2020'). % [17],[19],[23]

% 4_act_of_private_nature
fallback_act_of_economic_nature('interim_service_contracts_2020'). % [6],[7],[13],[16],[30]

% 5_act_of_public_nature
monetary_subsidy('interim_service_contracts_2020'). % [7],[16],[30],[21],[22]

% 6_MEO
tender_used('interim_service_contracts_2020','dec2019_tender'). % [4],[8],[9]
transparent('interim_service_contracts_2020','dec2019_tender'). % [11]
non_discriminatory('interim_service_contracts_2020','dec2019_tender'). % [11]
same_terms_and_conditions('interim_service_contracts_2020','castilla_la_mancha_region','Express Sanchéz Norte S.L.'). % [7],[14]
same_terms_and_conditions('interim_service_contracts_2020','castilla_la_mancha_region','Servicios Interurbanos Rapidos S.A.'). % [7],[14]
measure_financial_terms('interim_service_contracts_2020',589000). % [20],[21]
measure_financial_terms('interim_service_contracts_2020',570000). % [22]
expert_evaluation_on_measure_or_similar_action('cost_estimates_validation','regional_transport_auditors','interim_service_contracts_2020'). % [23]
intervention_carried_at_same_time('interim_service_contracts_2020','castilla_la_mancha_region','Express Sanchéz Norte S.L.'). % [13],[7]
intervention_carried_at_same_time('interim_service_contracts_2020','castilla_la_mancha_region','Servicios Interurbanos Rapidos S.A.'). % [13],[7]

% 7_direct_or_indirect_advantage
direct_targeting('interim_service_contracts_2020', 'Express Sanchéz Norte S.L.'). % [7],[13],[20],[21]
direct_targeting('interim_service_contracts_2020', 'Servicios Interurbanos Rapidos S.A.'). % [7],[13],[22]
secondary_effects('interim_service_contracts_2020', 'Express Sanchéz Norte S.L.', 'retained_passenger_revenue'). % [30],[20]
secondary_effects('interim_service_contracts_2020', 'Servicios Interurbanos Rapidos S.A.', 'retained_passenger_revenue'). % [30],[22]
channeled_to_identifiable_undertaking_s('Express Sanchéz Norte S.L.', 'compensation_589000'). % [21],[30]
channeled_to_identifiable_undertaking_s('Servicios Interurbanos Rapidos S.A.', 'compensation_570000'). % [22],[30]
channeled_to_group_of_undertakings('second_best_bidders', 'awarded_interim_contracts_without_new_tender'). % [8],[9],[13]
channeled_to_group_of_undertakings('second_best_bidders', 'compensation_financed_by_regional_budget'). % [9],[30]

% 8_active_transfer_of_resources
active_resource_flow('interim_service_contracts_2020', 'castilla_la_mancha_regional_budget'). % [30],[16]
resource_of_intrastate_entity('castilla_la_mancha_regional_budget'). % [30]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('interim_service_contracts_2020', 'castilla_la_mancha_regional_budget'). % [16],[30]
active_resource_flow('interim_service_contracts_2020', 'passenger_revenue'). % [30]
resource_of_private_body('passenger_revenue'). % [30]

% 9_foregoing_revenue
selection_process_for_measure('interim_service_contracts_2020', 'dec2019_tender'). % [9],[4]
ex_ante('interim_service_contracts_2020', 'dec2019_tender'). % [10],[4]
transparent('interim_service_contracts_2020', 'dec2019_tender'). % [11]
non_discriminatory('interim_service_contracts_2020', 'dec2019_tender'). % [11]
achieving_policy_objective('interim_service_contracts_2020', 'maintain_basic_public_transport_connectivity'). % [7]
revenue_loss_is_justified_by_policy('maintain_basic_public_transport_connectivity'). % [7],[16]

% 10_imputability
adopted_or_administered_by('interim_service_contracts_2020','castilla_la_mancha_region'). % [6],[7],[13]
public_intra_state_authority('castilla_la_mancha_region','castilla_la_mancha'). % [1]
intrastate_of('castilla_la_mancha','spain'). % [1]
measure_scope_indicates_involvement('castilla_la_mancha_region','interim_service_contracts_2020'). % [6],[7],[12]
