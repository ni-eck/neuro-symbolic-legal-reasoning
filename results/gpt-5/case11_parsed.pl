% 1_financial_activa
parsed_money_received('Servicios Interurbanos Rapidos S.A.', 'clm_interim_bus_2020', 570000). % [22]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('clm_interim_bus_2020', 'Servicios Interurbanos Rapidos S.A.', 'clm_bus_pso_2020'). % [7],[16],[22]
public_service_obligation('clm_bus_pso_2020'). % [16]
clearly_defined('clm_bus_pso_2020'). % [13],[14],[15]
compensation_params_predefined('clm_interim_bus_2020', 'clm_bus_pso_2020'). % [16],[17],[18],[19],[25]
compensation_params_objective('clm_interim_bus_2020', 'clm_bus_pso_2020'). % [17],[18],[19]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('clm_interim_bus_2020'). % [18],[25],[26],[27]

% 4_act_of_private_nature
purchase_lease_rent_similar('clm_interim_bus_2020'). % [7],[13],[15]

% 5_act_of_public_nature
monetary_subsidy('clm_interim_bus_2020'). % [16],[20],[22],[30]

% 6_MEO
comparable_type('clm_interim_bus_2020', 'clm_bus_tender_2019'). % [4]
tender_used('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [4]
transparent('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [11]
non_discriminatory('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [11]
competitive('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [11]
expert_evaluation_on_measure_or_similar_action('clm_auditor_validation_2020', 'regional_transport_auditors_castilla_la_mancha', 'clm_interim_bus_2020'). % [23]
ex_ante_evaluation('clm_auditor_validation_2020', 'clm_interim_bus_2020'). % [19],[23]

% 7_direct_or_indirect_advantage
direct_targeting('clm_interim_bus_2020', 'Servicios Interurbanos Rapidos S.A.'). % [7],[13],[22]
direct_targeting('clm_interim_bus_2020', 'Express Sanchéz Norte S.L.'). % [7],[13],[20],[21]

% 8_active_transfer_of_resources
active_resource_flow('clm_interim_bus_2020', 'clm_regional_budget'). % [16],[22],[23],[30]
resource_of_intrastate_entity('clm_regional_budget'). % [30]

% 9_foregoing_revenue
selection_process_for_measure('clm_interim_bus_2020', 'clm_bus_tender_2019_proc'). % [8],[9]
ex_ante('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [10]
transparent('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [11]
non_discriminatory('clm_bus_tender_2019', 'clm_bus_tender_2019_proc'). % [11]
achieving_policy_objective('clm_interim_bus_2020', 'maintain_basic_public_transport_connectivity'). % [7]
revenue_loss_is_justified_by_policy('maintain_basic_public_transport_connectivity'). % [7],[16],[17],[18],[25]

% 10_imputability
adopted_or_administered_by('clm_interim_bus_2020', 'castilla_la_mancha_regional_government'). % [6],[7],[8],[30]
adopted_or_administered_by('clm_bus_tender_2019', 'castilla_la_mancha_regional_government'). % [4]
public_intra_state_authority('castilla_la_mancha_regional_government', 'castilla_la_mancha'). % [1]
intrastate_of('castilla_la_mancha', 'spain'). % [1]
