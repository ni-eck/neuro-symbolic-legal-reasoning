% 1_financial_activa
parsed_money_received('Servicios Interurbanos Rapidos S.A.', 'interim_pso_contract_2020_sir', 570000). % [22]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('interim_pso_contract_2020_sir', 'Servicios Interurbanos Rapidos S.A.', 'pso_bus_services_2020_sir'). % [7],[16],[22]
public_service_obligation('pso_bus_services_2020_sir'). % [15],[16]
clearly_defined('pso_bus_services_2020_sir'). % [13],[14],[15]
compensation_params_predefined('interim_pso_contract_2020_sir', 'pso_bus_services_2020_sir'). % [16],[17],[18],[19]
compensation_params_objective('interim_pso_contract_2020_sir', 'pso_bus_services_2020_sir'). % [17],[19]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('interim_pso_contract_2020_sir'). % [17],[18],[24],[25],[27],[28]
compensation_for_obligation('interim_pso_contract_2020_esn', 'Express Sanchéz Norte S.L.', 'pso_bus_services_2020_esn'). % [7],[16],[20]
public_service_obligation('pso_bus_services_2020_esn'). % [15],[16]
clearly_defined('pso_bus_services_2020_esn'). % [13],[14],[15]
compensation_params_predefined('interim_pso_contract_2020_esn', 'pso_bus_services_2020_esn'). % [16],[17],[18],[19]
compensation_params_objective('interim_pso_contract_2020_esn', 'pso_bus_services_2020_esn'). % [17],[19]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('interim_pso_contract_2020_esn'). % [17],[18],[24],[25],[27],[28]

% 4_act_of_private_nature
purchase_lease_rent_similar('interim_pso_contract_2020_esn'). % [7],[13],[16],[20],[21]
purchase_lease_rent_similar('interim_pso_contract_2020_sir'). % [7],[13],[16],[22]

% 5_act_of_public_nature
monetary_subsidy('interim_pso_contract_2020_esn'). % [16],[17],[18],[20],[21],[25],[30]
monetary_subsidy('interim_pso_contract_2020_sir'). % [16],[17],[18],[22],[25],[30]

% 6_MEO
tender_used('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [4],[9]
transparent('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [11]
non_discriminatory('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [11]
tender_used('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [4],[9]
transparent('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [11]
non_discriminatory('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [11]
expert_financial_expectation('interim_pso_contract_2020_esn', 589000). % [20],[21]
measure_financial_terms('interim_pso_contract_2020_sir', 570000). % [22]
expert_evaluation_on_measure_or_similar_action('validation_esn_2020', 'regional_transport_auditors', 'interim_pso_contract_2020_esn'). % [23]
ex_ante_evaluation('validation_esn_2020', 'interim_pso_contract_2020_esn'). % [19],[23]
expert_evaluation_on_measure_or_similar_action('validation_sir_2020', 'regional_transport_auditors', 'interim_pso_contract_2020_sir'). % [23]
ex_ante_evaluation('validation_sir_2020', 'interim_pso_contract_2020_sir'). % [19],[23]

% 7_direct_or_indirect_advantage
direct_targeting('interim_pso_contract_2020_esn', 'Express Sanchéz Norte S.L.'). % [20]
direct_targeting('interim_pso_contract_2020_sir', 'Servicios Interurbanos Rapidos S.A.'). % [22]
secondary_effects('interim_pso_contract_2020_esn', 'Express Sanchéz Norte S.L.', 'retention_of_passenger_revenue'). % [30]
secondary_effects('interim_pso_contract_2020_sir', 'Servicios Interurbanos Rapidos S.A.', 'retention_of_passenger_revenue'). % [30]
channeled_to_identifiable_undertaking_s('Express Sanchéz Norte S.L.', 'retention_of_passenger_revenue'). % [30]
channeled_to_identifiable_undertaking_s('Servicios Interurbanos Rapidos S.A.', 'retention_of_passenger_revenue'). % [30]
secondary_effects('interim_pso_contract_2020_esn', 'Express Sanchéz Norte S.L.', 'claim_unforeseeable_cost_increases_subject_to_approval'). % [28],[29]
secondary_effects('interim_pso_contract_2020_sir', 'Servicios Interurbanos Rapidos S.A.', 'claim_unforeseeable_cost_increases_subject_to_approval'). % [28],[29]
channeled_to_identifiable_undertaking_s('Express Sanchéz Norte S.L.', 'claim_unforeseeable_cost_increases_subject_to_approval'). % [28],[29]
channeled_to_identifiable_undertaking_s('Servicios Interurbanos Rapidos S.A.', 'claim_unforeseeable_cost_increases_subject_to_approval'). % [28],[29]

% 8_active_transfer_of_resources
resource_of_intrastate_entity('castilla_la_mancha_regional_budget'). % [30]
resource_of_private_body('passenger_revenue'). % [30]
active_resource_flow('interim_pso_contract_2020_esn', 'castilla_la_mancha_regional_budget'). % [16],[30]
active_resource_flow('interim_pso_contract_2020_sir', 'castilla_la_mancha_regional_budget'). % [22],[30]
active_resource_flow('interim_pso_contract_2020_esn', 'passenger_revenue'). % [30]
active_resource_flow('interim_pso_contract_2020_sir', 'passenger_revenue'). % [30]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('interim_pso_contract_2020_esn', 'castilla_la_mancha_regional_budget'). % [16],[24],[25],[30]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('interim_pso_contract_2020_sir', 'castilla_la_mancha_regional_budget'). % [16],[24],[25],[30]

% 9_foregoing_revenue
selection_process_for_measure('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [4],[8],[9]
selection_process_for_measure('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [4],[8],[9]
ex_ante('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [10]
ex_ante('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [10]
transparent('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [11]
transparent('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [11]
non_discriminatory('interim_pso_contract_2020_esn', 'tender_2019_bus_services_clm'). % [11]
non_discriminatory('interim_pso_contract_2020_sir', 'tender_2019_bus_services_clm'). % [11]
actual_price_goods_service('interim_pso_contract_2020_esn', 589000). % [20],[21]
actual_price_goods_service('interim_pso_contract_2020_sir', 570000). % [22]
achieving_policy_objective('interim_pso_contract_2020_esn', 'maintain_basic_public_transport_connectivity'). % [7]
achieving_policy_objective('interim_pso_contract_2020_sir', 'maintain_basic_public_transport_connectivity'). % [7]
revenue_loss_is_justified_by_policy('maintain_basic_public_transport_connectivity'). % [7],[16],[17]

% 10_imputability
adopted_or_administered_by('interim_pso_contract_2020_esn', 'castilla_la_mancha_regional_government'). % [7],[13]
adopted_or_administered_by('interim_pso_contract_2020_sir', 'castilla_la_mancha_regional_government'). % [7],[13],[22]
adopted_or_administered_by('tender_2019_bus_services_clm', 'castilla_la_mancha_regional_government'). % [4]
public_intra_state_authority('castilla_la_mancha_regional_government', 'Castilla-La Mancha'). % [1],[7]
intrastate_of('Castilla-La Mancha', 'Spain'). % [1]
