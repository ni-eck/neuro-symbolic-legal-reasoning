% 1_financial_activa
parsed_money_received('Trasporti Puglia SRL', 'puglia_pso_compensation_2019_trasporti_puglia', 1237100). % [22]
parsed_money_received('Mobilità Bari S.p.A.', 'puglia_pso_compensation_2019_mobilita_bari', 1085700). % [23]

% 2_financial_passiva
parsed_value_granted_services('Trasporti Puglia SRL', 'puglia_pso_compensation_2019_trasporti_puglia', 1237100). % [22]
parsed_value_granted_services('Mobilità Bari S.p.A.', 'puglia_pso_compensation_2019_mobilita_bari', 1085700). % [23]

% 3_altmark
public_service_obligation('puglia_regional_bus_pso'). % [4]
clearly_defined('puglia_regional_bus_pso'). % [5]
compensation_for_obligation('puglia_pso_compensation_2019_trasporti_puglia', 'Trasporti Puglia SRL', 'puglia_regional_bus_pso'). % [4],[19],[22]
compensation_for_obligation('puglia_pso_compensation_2019_mobilita_bari', 'Mobilità Bari S.p.A.', 'puglia_regional_bus_pso'). % [4],[19],[23]
compensation_params_predefined('puglia_pso_compensation_2019_trasporti_puglia', 'puglia_regional_bus_pso'). % [11],[12],[13],[21]
compensation_params_predefined('puglia_pso_compensation_2019_mobilita_bari', 'puglia_regional_bus_pso'). % [11],[12],[13],[21]
compensation_params_objective('puglia_pso_compensation_2019_trasporti_puglia', 'puglia_regional_bus_pso'). % [8],[9],[10],[12],[21]
compensation_params_objective('puglia_pso_compensation_2019_mobilita_bari', 'puglia_regional_bus_pso'). % [8],[9],[10],[12],[21]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('puglia_pso_compensation_2019_trasporti_puglia'). % [13],[24],[25],[26],[27],[28]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('puglia_pso_compensation_2019_mobilita_bari'). % [13],[24],[25],[26],[27],[28]

% 4_act_of_private_nature
purchase_lease_rent_similar('puglia_pso_compensation_2019_trasporti_puglia'). % [3],[4],[5],[19],[20],[22]
purchase_lease_rent_similar('puglia_pso_compensation_2019_mobilita_bari'). % [3],[4],[5],[19],[20],[23]

% 5_act_of_public_nature
further_option_of_public_authority('puglia_2018_contract_extensions'). % [3],[18]
monetary_subsidy('puglia_pso_compensation_2019_trasporti_puglia'). % [19],[20],[21],[22]
monetary_subsidy('puglia_pso_compensation_2019_mobilita_bari'). % [19],[20],[21],[23]

% 6_MEO
measure_financial_terms('puglia_pso_compensation_2019_trasporti_puglia', 1237100). % [19],[20],[22]
measure_financial_terms('puglia_pso_compensation_2019_mobilita_bari', 1085700). % [19],[20],[23]
expert_evaluation_on_measure_or_similar_action('independent_accounting_expert_validation_2018', 'independent accounting expert', 'puglia_2018_contract_extensions'). % [11],[12],[13]
ex_ante_evaluation('independent_accounting_expert_validation_2018', 'puglia_2018_contract_extensions'). % [11],[12],[13]

% 7_direct_or_indirect_advantage
direct_targeting('puglia_2018_contract_extensions', 'Mobilità Bari S.p.A.'). % [18],[23]
direct_targeting('puglia_2018_contract_extensions', 'Trasporti Puglia SRL'). % [18],[22]
direct_targeting('puglia_pso_compensation_2019_mobilita_bari', 'Mobilità Bari S.p.A.'). % [19],[23]
direct_targeting('puglia_pso_compensation_2019_trasporti_puglia', 'Trasporti Puglia SRL'). % [19],[22]

% 8_active_transfer_of_resources
resource_of_intrastate_entity('puglia_regional_budget'). % [19],[20],[21]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('puglia_2018_contract_extensions', 'puglia_regional_budget'). % [3],[4],[18]
active_resource_flow('puglia_pso_compensation_2019_mobilita_bari', 'puglia_regional_budget'). % [19],[20],[21],[23],[24]
active_resource_flow('puglia_pso_compensation_2019_trasporti_puglia', 'puglia_regional_budget'). % [19],[20],[21],[22],[24]

% 9_foregoing_revenue
actual_price_goods_service('puglia_pso_compensation_2019_trasporti_puglia', 1.39). % [22]
actual_price_goods_service('puglia_pso_compensation_2019_mobilita_bari', 1.54). % [23]
achieving_policy_objective('puglia_2018_contract_extensions', 'ensure_continued_operation_regional_bus_services'). % [1],[3],[4]
achieving_policy_objective('puglia_pso_compensation_2019_mobilita_bari', 'ensure_continued_operation_regional_bus_services'). % [1],[4],[19]
achieving_policy_objective('puglia_pso_compensation_2019_trasporti_puglia', 'ensure_continued_operation_regional_bus_services'). % [1],[4],[19]

% 10_imputability
adopted_or_administered_by('puglia_2018_contract_extensions', 'Puglia Regional Authorities'). % [3],[18]
public_intra_state_authority('Puglia Regional Authorities', 'Puglia'). % [1]
intrastate_of('Puglia', 'Italy'). % [1]
adopted_or_administered_by('puglia_pso_compensation_2019_mobilita_bari', 'Puglia Regional Authorities'). % [19],[20]
adopted_or_administered_by('puglia_pso_compensation_2019_trasporti_puglia', 'Puglia Regional Authorities'). % [19],[20]
