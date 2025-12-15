% 1_financial_activa
parsed_money_received('Trasporti Puglia SRL', 'puglia_compensation_scheme_2019', 1237100). % [19],[20],[22]
parsed_money_received('Mobilità Bari S.p.A.', 'puglia_compensation_scheme_2019', 1085700). % [19],[20],[23]

% 2_financial_passiva
parsed_value_granted_services('Trasporti Puglia SRL', 'puglia_compensation_scheme_2019', 1237100). % [22]
parsed_value_granted_services('Mobilità Bari S.p.A.', 'puglia_compensation_scheme_2019', 1085700). % [23]

% 3_altmark
compensation_for_obligation('puglia_compensation_scheme_2019', 'Trasporti Puglia SRL', 'regional_bus_service_obligation'). % [3],[4],[22],[19],[20]
compensation_for_obligation('puglia_compensation_scheme_2019', 'Mobilità Bari S.p.A.', 'regional_bus_service_obligation'). % [3],[4],[23],[19],[20]
public_service_obligation('regional_bus_service_obligation'). % [4]
clearly_defined('regional_bus_service_obligation'). % [5]
compensation_params_predefined('puglia_compensation_scheme_2019', 'regional_bus_service_obligation'). % [21],[11],[12],[13],[22],[23]
compensation_params_objective('puglia_compensation_scheme_2019', 'regional_bus_service_obligation'). % [21],[10]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('puglia_compensation_scheme_2019'). % [8],[9],[10],[25],[26],[27]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('puglia_compensation_scheme_2019'). % [9],[10],[8]

% 4_act_of_private_nature
fallback_act_of_economic_nature('puglia_compensation_scheme_2019'). % [4],[19],[20],[21],[22],[23]

% 5_act_of_public_nature
monetary_subsidy('puglia_compensation_scheme_2019'). % [4],[8],[19],[20],[22],[23]

% 6_MEO
intervention_decided_at_same_time('puglia_compensation_scheme_2019','puglia_regional_authorities','Trasporti Puglia SRL'). % [3],[18]
intervention_decided_at_same_time('puglia_compensation_scheme_2019','puglia_regional_authorities','Mobilità Bari S.p.A.'). % [3],[18],[23]
intervention_carried_at_same_time('puglia_compensation_scheme_2019','puglia_regional_authorities','Trasporti Puglia SRL'). % [18],[19],[22]
intervention_carried_at_same_time('puglia_compensation_scheme_2019','puglia_regional_authorities','Mobilità Bari S.p.A.'). % [18],[19],[23]
expert_evaluation_on_measure_or_similar_action('advance_loss_estimates','independent_accounting_expert','puglia_compensation_scheme_2019'). % [11],[12],[13]
ex_ante_evaluation('advance_loss_estimates','puglia_compensation_scheme_2019'). % [11],[12]

% 7_direct_or_indirect_advantage
direct_targeting('puglia_compensation_scheme_2019', 'Trasporti Puglia SRL'). % [3],[4],[22]
direct_targeting('puglia_compensation_scheme_2019', 'Mobilità Bari S.p.A.'). % [3],[4],[23]

% 8_active_transfer_of_resources
active_resource_flow('puglia_compensation_scheme_2019','regional_budget'). % [19],[20]
resource_of_intrastate_entity('regional_budget'). % [19],[20]

% 9_foregoing_revenue
achieving_policy_objective('puglia_compensation_scheme_2019', 'ensure_continued_operation_of_regional_bus_services'). % [1]
revenue_loss_is_justified_by_policy('ensure_continued_operation_of_regional_bus_services'). % [6],[1]
ex_ante('advance_loss_estimates', 'puglia_compensation_scheme_2019'). % [11],[13]
actual_price_goods_service('puglia_compensation_scheme_2019', 1.39). % [22]
actual_price_goods_service('puglia_compensation_scheme_2019', 1.54). % [23]

% 10_imputability
adopted_or_administered_by('puglia_compensation_scheme_2019','puglia_regional_authorities'). % [1],[3],[18],[19]
public_intra_state_authority('puglia_regional_authorities','puglia'). % [1]
intrastate_of('puglia','Italy'). % [1]
measure_scope_indicates_involvement('puglia_regional_authorities','puglia_compensation_scheme_2019'). % [4],[5],[21]
