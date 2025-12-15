% 1_financial_activa
parsed_money_received('luselec', 'sectoral_adjustment_agreement', 423840000). % [32],[33],[34],[35],[36]
parsed_money_received('luselec', 'article_12_transitional_energy_measures_act', 423840000). % [39],[40],[41],[42],[43],[44],[45],[47]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('article_12_transitional_energy_measures_act', 'luselec', 'interior_region_gas_turbine'). % [7],[27],[28],[39],[40],[41],[42],[44],[45],[50],[51]
public_service_obligation('interior_region_gas_turbine'). % [27],[28],[7],[4]
clearly_defined('interior_region_gas_turbine'). % [7],[4],[28]
compensation_params_predefined('article_12_transitional_energy_measures_act', 'interior_region_gas_turbine'). % [39],[40],[41],[42],[47]
compensation_params_objective('article_12_transitional_energy_measures_act', 'interior_region_gas_turbine'). % [40],[41],[47]
compensation_params_transparent('article_12_transitional_energy_measures_act', 'interior_region_gas_turbine'). % [39],[40],[51],[52]
compensation_for_obligation('article_12_transitional_energy_measures_act', 'luselec', 'universal_access_programme'). % [9],[27],[28],[39],[40],[41],[42],[44],[45],[50],[51]
public_service_obligation('universal_access_programme'). % [27],[28],[9],[4]
clearly_defined('universal_access_programme'). % [9],[4],[28]
compensation_params_predefined('article_12_transitional_energy_measures_act', 'universal_access_programme'). % [39],[40],[41],[42],[47]
compensation_params_objective('article_12_transitional_energy_measures_act', 'universal_access_programme'). % [40],[41],[47]
compensation_params_transparent('article_12_transitional_energy_measures_act', 'universal_access_programme'). % [39],[40],[51],[52]

% 4_act_of_private_nature
fallback_act_of_economic_nature('article_12_transitional_energy_measures_act'). % [39],[40],[41],[42],[44],[45],[46],[47],[50],[51],[52],[53],[54]
fallback_act_of_economic_nature('sectoral_adjustment_agreement'). % [32],[33],[34],[35],[36],[37]

% 5_act_of_public_nature
monetary_subsidy('article_12_transitional_energy_measures_act'). % [39],[40],[41],[42],[44],[47]
regulatory_capacity('article_12_transitional_energy_measures_act'). % [39],[40],[51],[52]
monetary_subsidy('sectoral_adjustment_agreement'). % [32],[33],[34],[35],[36],[37]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('santos_report','prof_helena_santos','article_12_transitional_energy_measures_act'). % [26],[27],[39]
ex_ante_evaluation('santos_report','article_12_transitional_energy_measures_act'). % [26],[27],[39]
not_in_favour_of_measure_or_similar_action('santos_report','article_12_transitional_energy_measures_act'). % [27],[42],[43],[39]
expert_evaluation_on_measure_or_similar_action('santos_report','prof_helena_santos','sectoral_adjustment_agreement'). % [26],[27],[32],[33]
measure_financial_terms('article_12_transitional_energy_measures_act', 423840000). % [47],[41]
measure_financial_terms('article_12_transitional_energy_measures_act', 0.0000678). % [40]

% 7_direct_or_indirect_advantage
direct_targeting('sectoral_adjustment_agreement', 'luselec'). % [32],[33],[36]
direct_targeting('article_12_transitional_energy_measures_act', 'luselec'). % [39],[40],[44],[45]
secondary_effects('article_12_transitional_energy_measures_act', 'luselec', 'final_customers_burden'). % [40],[44]
channeled_to_identifiable_undertaking_s('luselec', 'payments_from_distribution_companies'). % [32],[33]

% 8_active_transfer_of_resources
active_resource_flow('article_12_transitional_energy_measures_act','surcharge_2007'). % [39],[40],[44],[47]
resource_of_body_appointed_by_state_to_administer_measure('surcharge_2007'). % [44],[45]
active_resource_flow('sectoral_adjustment_agreement','sectoral_payments_423840000_annual'). % [32],[33],[36]

% 9_foregoing_revenue
actual_price_goods_service('article_12_transitional_energy_measures_act', 0.0000678). % [40]
achieving_policy_objective('article_12_transitional_energy_measures_act', 'replicate_sectoral_adjustment_agreement'). % [41],[42]
achieving_policy_objective('sectoral_adjustment_agreement', 'cover_stranded_costs'). % [32],[33],[36]

% 10_imputability
public_state_authority('portuguese_legislature','portugal'). % [39]
adopted_or_administered_by('article_12_transitional_energy_measures_act','portuguese_legislature'). % [39]
was_designated('luselec','article_12_transitional_energy_measures_act','portuguese_legislature'). % [45],[39]
public_state_authority('portuguese_government','portugal'). % [31],[36]
adopted_or_administered_by('sectoral_adjustment_agreement','portuguese_government'). % [31],[32],[36]
is_public_undertaking('luselec'). % [3]
public_undertaking_of_state('luselec','portugal'). % [3]
acted_on_government_directives('luselec','interior_region_gas_turbine'). % [7]
acted_on_government_directives('luselec','universal_access_programme'). % [9],[10]
public_state_authority('ministry_of_energy_and_infrastructure','portugal'). % [15],[49]
organic_link_with_state_or_intra_state('luselec'). % [3],[4]
integrated_into_public_administration('luselec'). % [4],[20]
strategic_sector('luselec'). % [1],[17]
not_competing_under_normal_conditions('luselec'). % [14],[15]
strong_public_supervision('luselec','article_12_transitional_energy_measures_act'). % [50],[51],[52]
measure_scope_indicates_involvement('luselec','article_12_transitional_energy_measures_act'). % [41],[42],[50],[51],[53],[54]
measure_scope_indicates_involvement('luselec','sectoral_adjustment_agreement'). % [32],[33],[34],[36]
public_undertaking_of_state('four_regional_public_undertakings','portugal'). % [2]
