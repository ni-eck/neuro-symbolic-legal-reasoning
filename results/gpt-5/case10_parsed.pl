% 1_financial_activa
parsed_money_received('Trasporti Puglia SRL', 'puglia_bus_psc_compensation_2019', 1237100). % [19],[20],[22],[23]
parsed_money_received('Mobilità Bari S.p.A.', 'puglia_bus_psc_compensation_2019', 1085700). % [19],[20],[22],[23]

% 2_financial_passiva
parsed_value_granted_services('Trasporti Puglia SRL', 'puglia_bus_psc_compensation_2019', 1237100). % [19],[22]
parsed_value_granted_services('Mobilità Bari S.p.A.', 'puglia_bus_psc_compensation_2019', 1085700). % [19],[23]

% 3_altmark
compensation_for_obligation('puglia_bus_psc_compensation_2019', 'Trasporti Puglia SRL', 'regional_bus_pso_puglia'). % [4],[19],[22]
compensation_for_obligation('puglia_bus_psc_compensation_2019', 'Mobilità Bari S.p.A.', 'regional_bus_pso_puglia'). % [4],[19],[23]
public_service_obligation('regional_bus_pso_puglia'). % [4]
clearly_defined('regional_bus_pso_puglia'). % [5]
compensation_params_predefined('puglia_bus_psc_compensation_2019', 'regional_bus_pso_puglia'). % [11],[12],[13],[21]
compensation_params_objective('puglia_bus_psc_compensation_2019', 'regional_bus_pso_puglia'). % [9],[21],[22],[23]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('puglia_bus_psc_compensation_2019'). % [9],[10],[13],[14],[15],[16],[24],[25],[26],[27],[28]

% 4_act_of_private_nature
purchase_lease_rent_similar('puglia_bus_psc_compensation_2019'). % [3],[4],[18],[19],[20],[21]

% 5_act_of_public_nature
monetary_subsidy('puglia_bus_psc_compensation_2019'). % [4],[19],[20],[21]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('loss_estimates_documentation_2019', 'independent_accounting_expert', 'puglia_bus_psc_compensation_2019'). % [11],[12]
ex_ante_evaluation('loss_estimates_documentation_2019', 'puglia_bus_psc_compensation_2019'). % [11]

% 7_direct_or_indirect_advantage
direct_targeting('puglia_bus_psc_compensation_2019', 'Trasporti Puglia SRL'). % [19],[22]
direct_targeting('puglia_bus_psc_compensation_2019', 'Mobilità Bari S.p.A.'). % [19],[23]

% 8_active_transfer_of_resources
active_resource_flow('puglia_bus_psc_compensation_2019', 'puglia_regional_budget'). % [19],[20]
resource_of_intrastate_entity('puglia_regional_budget'). % [19],[20]

% 9_foregoing_revenue
achieving_policy_objective('puglia_bus_psc_compensation_2019', 'regional_bus_pso_puglia'). % [1],[2],[4],[6]
actual_price_goods_service('puglia_bus_psc_compensation_2019', 1.39). % [22],[23]
actual_price_goods_service('puglia_bus_psc_compensation_2019', 1.54). % [23]

% 10_imputability
adopted_or_administered_by('puglia_bus_psc_compensation_2019', 'Puglia Regional Authorities'). % [18],[20]
public_intra_state_authority('Puglia Regional Authorities', 'Puglia Region'). % [1]
intrastate_of('Puglia Region', 'Italy'). % [1]
