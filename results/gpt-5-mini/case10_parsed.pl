% 1_financial_activa
parsed_money_received('trasporti_puglia_srl','puglia_compensation_scheme_2019',1237100). % [22]
parsed_money_received('mobilita_bari_spa','puglia_compensation_scheme_2019',1085700). % [23]

% 2_financial_passiva
parsed_value_granted_services('trasporti_puglia_srl','puglia_compensation_scheme_2019',1237100). % [22]
parsed_value_granted_services('mobilita_bari_spa','puglia_compensation_scheme_2019',1085700). % [23]

% 3_altmark
compensation_for_obligation('puglia_compensation_scheme_2019', 'trasporti_puglia_srl', regional_bus_service_obligation). % [3],[4],[18],[22]
compensation_for_obligation('puglia_compensation_scheme_2019', 'mobilita_bari_spa', regional_bus_service_obligation). % [3],[4],[18],[23]
public_service_obligation(regional_bus_service_obligation). % [4]
clearly_defined(regional_bus_service_obligation). % [5]
compensation_params_predefined('puglia_compensation_scheme_2019', regional_bus_service_obligation). % [21],[11],[9]
compensation_params_objective('puglia_compensation_scheme_2019', regional_bus_service_obligation). % [9],[10],[22],[23]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('puglia_compensation_scheme_2019'). % [8],[9],[10]

% 4_act_of_private_nature
fallback_act_of_economic_nature('puglia_compensation_scheme_2019'). % [1],[3],[4],[7],[19],[22]

% 5_act_of_public_nature
monetary_subsidy('puglia_compensation_scheme_2019'). % [3],[4],[19],[20],[22],[23]

% 6_MEO
intervention_decided_at_same_time('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'trasporti_puglia_srl'). % [3],[18],[22]
intervention_decided_at_same_time('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'mobilita_bari_spa'). % [3],[18],[23]
intervention_carried_at_same_time('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'trasporti_puglia_srl'). % [19],[20],[22]
intervention_carried_at_same_time('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'mobilita_bari_spa'). % [19],[20],[23]
same_terms_and_conditions('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'trasporti_puglia_srl'). % [4],[5],[11],[13],[22]
same_terms_and_conditions('puglia_compensation_scheme_2019', 'puglia_regional_authorities', 'mobilita_bari_spa'). % [4],[5],[11],[13],[23]
expert_evaluation_on_measure_or_similar_action('independent_accounting_report', 'independent_accounting_expert', 'puglia_compensation_scheme_2019'). % [11],[12]
ex_ante_evaluation('independent_accounting_report', 'puglia_compensation_scheme_2019'). % [11],[12]

% 7_direct_or_indirect_advantage
direct_targeting('puglia_compensation_scheme_2019', 'trasporti_puglia_srl'). % [3],[4],[18],[19],[22]
direct_targeting('puglia_compensation_scheme_2019', 'mobilita_bari_spa'). % [3],[4],[18],[19],[23]

% 8_active_transfer_of_resources
active_resource_flow('puglia_compensation_scheme_2019','puglia_regional_budget'). % [19],[20],[21]
resource_of_intrastate_entity('puglia_regional_budget'). % [1],[19],[20]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('puglia_compensation_scheme_2019','puglia_regional_budget'). % [3],[4],[8],[21]

% 9_foregoing_revenue
actual_price_goods_service('puglia_compensation_scheme_2019', 1.39). % [21],[22]
actual_price_goods_service('puglia_compensation_scheme_2019', 1.54). % [21],[23]
achieving_policy_objective('puglia_compensation_scheme_2019', regional_bus_service_obligation). % [1],[4],[18]
revenue_loss_is_justified_by_policy(regional_bus_service_obligation). % [6],[8],[9]

% 10_imputability
adopted_or_administered_by('puglia_compensation_scheme_2019', 'puglia_regional_authorities'). % [3],[4],[18],[19],[20]
public_intra_state_authority('puglia_regional_authorities', 'puglia_region'). % [1]
intrastate_of('puglia_region', 'italy'). % [1]
measure_scope_indicates_involvement('puglia_regional_authorities', 'puglia_compensation_scheme_2019'). % [4],[5],[6],[21]
strong_public_supervision('puglia_regional_authorities', 'puglia_compensation_scheme_2019'). % [11],[12],[13],[17],[24],[25]
