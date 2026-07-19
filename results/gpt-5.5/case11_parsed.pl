% 1_financial_activa
parsed_money_received('express_sanchez_norte_s.l.', 'temporary_interim_bus_service_contracts', 589000). % [16],[20],[21]
parsed_money_received('servicios_interurbanos_rapidos_s.a.', 'temporary_interim_bus_service_contracts', 570000). % [22]

% 2_financial_passiva
parsed_value_granted_services('express_sanchez_norte_s.l.', 'temporary_interim_bus_service_contracts', 1240000). % [20]

% 3_altmark
compensation_for_obligation('temporary_interim_bus_service_contracts', 'express_sanchez_norte_s.l.', 'interim_regional_bus_service_obligation'). % [16],[20],[21]
compensation_for_obligation('temporary_interim_bus_service_contracts', 'servicios_interurbanos_rapidos_s.a.', 'interim_regional_bus_service_obligation'). % [16],[22]
public_service_obligation('interim_regional_bus_service_obligation'). % [2],[7],[16]
clearly_defined('interim_regional_bus_service_obligation'). % [13],[15]
compensation_params_predefined('temporary_interim_bus_service_contracts', 'interim_regional_bus_service_obligation'). % [16],[17],[19]
compensation_params_objective('temporary_interim_bus_service_contracts', 'interim_regional_bus_service_obligation'). % [17],[19],[23]
public_procurement_procedure_used('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [4],[8],[9]
designed_to_minimise_cost_to_community('december_2019_bus_services_procurement'). % [10],[11]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('temporary_interim_bus_service_contracts'). % [24],[25],[26],[27]

% 4_act_of_private_nature
purchase_lease_rent_similar('temporary_interim_bus_service_contracts'). % [7],[13],[14],[15],[16]

% 5_act_of_public_nature
monetary_subsidy('temporary_interim_bus_service_contracts'). % [16],[22],[30]

% 6_MEO
tender_used('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [4],[8],[9]
competitive('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [9],[10],[11]
transparent('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [11]
non_discriminatory('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [11]
expert_evaluation_on_measure_or_similar_action('loss_estimate_validation', 'regional_transport_auditors', 'temporary_interim_bus_service_contracts'). % [19],[23]
ex_ante_evaluation('loss_estimate_validation', 'temporary_interim_bus_service_contracts'). % [19],[23]
expert_financial_expectation('temporary_interim_bus_service_contracts', 589000). % [19],[20],[21],[23]
expert_financial_expectation('temporary_interim_bus_service_contracts', 570000). % [19],[22],[23]
measure_financial_terms('temporary_interim_bus_service_contracts', 570000). % [22]

% 7_direct_or_indirect_advantage
direct_targeting('temporary_interim_bus_service_contracts', 'express_sanchez_norte_s.l.'). % [20],[21]
direct_targeting('temporary_interim_bus_service_contracts', 'servicios_interurbanos_rapidos_s.a.'). % [22]

% 8_active_transfer_of_resources
active_resource_flow('temporary_interim_bus_service_contracts', 'castilla_la_mancha_regional_budget_funds'). % [16],[22],[24],[30]
resource_of_intrastate_entity('castilla_la_mancha_regional_budget_funds'). % [30]

% 9_foregoing_revenue
selection_process_for_measure('temporary_interim_bus_service_contracts', 'december_2019_bus_services_procurement'). % [4],[8],[9]
ex_ante('price_per_kilometre_award_criterion', 'december_2019_bus_services_procurement'). % [10]
transparent('price_per_kilometre_award_criterion', 'december_2019_bus_services_procurement'). % [10],[11]
non_discriminatory('price_per_kilometre_award_criterion', 'december_2019_bus_services_procurement'). % [10],[11]
achieving_policy_objective('temporary_interim_bus_service_contracts', 'maintain_basic_public_transport_connectivity'). % [7]

% 10_imputability
adopted_or_administered_by('temporary_interim_bus_service_contracts', 'castilla_la_mancha_regional_government'). % [7]
public_intra_state_authority('castilla_la_mancha_regional_government', 'castilla_la_mancha'). % [1],[7]
intrastate_of('castilla_la_mancha', 'spain'). % [1]
