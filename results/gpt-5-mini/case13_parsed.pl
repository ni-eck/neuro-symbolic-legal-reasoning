% 1_financial_activa
parsed_money_received('luselec_sa', 'sectoral_adjustment_agreement', 423840000). % [32],[33],[36]
parsed_money_received('luselec_sa', 'article_12_transitional_energy_measures_act', 423840000). % [39],[40],[44],[47]

% 2_financial_passiva
% Nothing

% 3_altmark
public_service_obligation('interior_region_gas_turbine'). % [7],[28]
clearly_defined('interior_region_gas_turbine'). % [7]
public_service_obligation('universal_access_programme'). % [9],[28]
clearly_defined('universal_access_programme'). % [9]
compensation_for_obligation('article_12_transitional_energy_measures_act','luselec_sa','interior_region_gas_turbine'). % [28],[39],[41],[42],[44]
compensation_for_obligation('article_12_transitional_energy_measures_act','luselec_sa','universal_access_programme'). % [28],[39],[41],[42],[44]
compensation_for_obligation('sectoral_adjustment_agreement','luselec_sa','interior_region_gas_turbine'). % [32],[33],[34],[28]
compensation_for_obligation('sectoral_adjustment_agreement','luselec_sa','universal_access_programme'). % [32],[33],[34],[28]
compensation_params_predefined('sectoral_adjustment_agreement','interior_region_gas_turbine'). % [32],[33]
compensation_params_objective('sectoral_adjustment_agreement','interior_region_gas_turbine'). % [33]
compensation_params_transparent('sectoral_adjustment_agreement','interior_region_gas_turbine'). % [33],[36]
compensation_params_predefined('sectoral_adjustment_agreement','universal_access_programme'). % [32],[33]
compensation_params_objective('sectoral_adjustment_agreement','universal_access_programme'). % [33]
compensation_params_transparent('sectoral_adjustment_agreement','universal_access_programme'). % [32],[33]
compensation_params_objective('article_12_transitional_energy_measures_act','interior_region_gas_turbine'). % [39],[40],[41]
compensation_params_transparent('article_12_transitional_energy_measures_act','interior_region_gas_turbine'). % [39],[40],[41]
compensation_params_objective('article_12_transitional_energy_measures_act','universal_access_programme'). % [39],[40],[41]
compensation_params_transparent('article_12_transitional_energy_measures_act','universal_access_programme'). % [39],[40],[41]

% 4_act_of_private_nature
is_shareholder_of('four_regional_public_undertakings', 'luselec_sa'). % [2],[3]
fallback_act_of_economic_nature('sectoral_adjustment_agreement'). % [32],[33],[36]

% 5_act_of_public_nature
monetary_subsidy('article_12_transitional_energy_measures_act'). % [39],[40],[41],[42],[44],[47]
regulatory_capacity('article_12_transitional_energy_measures_act'). % [39],[40],[41],[42],[44],[47],[50],[51],[53]

% 6_MEO
measure_financial_terms('article_12_transitional_energy_measures_act', 423840000). % [40],[47]
comparable_type('article_12_transitional_energy_measures_act','sectoral_adjustment_agreement'). % [32],[33],[39],[41],[42]
comparable_situation('article_12_transitional_energy_measures_act','sectoral_adjustment_agreement'). % [33],[39],[41],[42]
comparable_operators('article_12_transitional_energy_measures_act','sectoral_adjustment_agreement'). % [33],[44],[45]
expert_evaluation_on_measure_or_similar_action('santos_committee_report','professor_helena_santos','article_12_transitional_energy_measures_act'). % [26],[27],[28],[39],[42],[43]
ex_ante_evaluation('santos_committee_report','article_12_transitional_energy_measures_act'). % [26],[27],[39]
not_in_favour_of_measure_or_similar_action('santos_committee_report','article_12_transitional_energy_measures_act'). % [27],[29],[42],[43]

% 7_direct_or_indirect_advantage
direct_targeting(article_12_transitional_energy_measures_act, luselec_sa). % [39],[44],[45]
direct_targeting(sectoral_adjustment_agreement, luselec_sa). % [32],[33]
secondary_effects(article_12_transitional_energy_measures_act, luselec_sa, 'collection_of_surcharge_funds'). % [40],[41],[44]
secondary_effects(sectoral_adjustment_agreement, luselec_sa, 'annual_payments_for_stranded_costs'). % [32],[33],[36]
channeled_to_identifiable_undertaking_s(luselec_sa, 'surcharge_transfers_from_suppliers'). % [44],[45]
channeled_to_identifiable_undertaking_s(luselec_sa, 'annual_distribution_company_payments'). % [33],[36]

% 8_active_transfer_of_resources
active_resource_flow('sectoral_adjustment_agreement','annual_distribution_company_payments'). % [32],[33],[34],[35],[36]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('sectoral_adjustment_agreement','annual_distribution_company_payments'). % [32],[33],[36]
active_resource_flow('article_12_transitional_energy_measures_act','collection_of_surcharge_funds'). % [39],[40],[41],[44],[45]
active_resource_flow('article_12_transitional_energy_measures_act','surcharge_transfers_from_suppliers'). % [44],[45],[46]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('article_12_transitional_energy_measures_act','surcharge_transfers_from_suppliers'). % [39],[44],[46],[47]
resource_of_body_appointed_by_state_to_administer_measure('surcharge_transfers_from_suppliers'). % [44]
resource_of_body_appointed_by_state_to_administer_measure('collection_of_surcharge_funds'). % [44],[45]
resource_of_private_body('collection_of_surcharge_funds'). % [40],[44]
resource_of_public_undertaking('annual_payments_for_stranded_costs'). % [23],[24],[25]

% 9_foregoing_revenue
actual_price_goods_service('article_12_transitional_energy_measures_act', 0.0000678). % [40],[41]
achieving_policy_objective('article_12_transitional_energy_measures_act', 'cover_stranded_costs'). % [41],[42]
actual_price_goods_service('sectoral_adjustment_agreement', 423840000). % [33]
achieving_policy_objective('sectoral_adjustment_agreement', 'sectoral_cost_sharing'). % [32],[36]

% 10_imputability
is_public_undertaking('four_regional_public_undertakings'). % [2]
is_public_undertaking('luselec_sa'). % [3]
public_undertaking_of_state('four_regional_public_undertakings','Portugal'). % [2],[1]
public_undertaking_of_state('luselec_sa','Portugal'). % [3],[1]
organic_link_with_state_or_intra_state('luselec_sa'). % [3]
organic_link_with_state_or_intra_state('four_regional_public_undertakings'). % [2]
adopted_or_administered_by('article_12_transitional_energy_measures_act','portuguese_legislature'). % [39]
was_designated('luselec_sa','article_12_transitional_energy_measures_act','portuguese_legislature'). % [44],[45],[39]
public_state_authority('portuguese_legislature','Portugal'). % [39]
public_state_authority('ministry_of_energy_and_infrastructure','Portugal'). % [15],[49]
acted_on_government_directives('luselec_sa','interior_region_gas_turbine'). % [7]
acted_on_government_directives('luselec_sa','universal_access_programme'). % [9]
decision_dependence_on_state_or_intra_state('luselec_sa','interior_region_gas_turbine'). % [7]
decision_dependence_on_state_or_intra_state('luselec_sa','universal_access_programme'). % [9]
measure_scope_indicates_involvement('luselec_sa','interior_region_gas_turbine'). % [4],[7]
measure_scope_indicates_involvement('luselec_sa','universal_access_programme'). % [4],[9]
other_indicators_of_public_involvement('luselec_sa','sectoral_adjustment_agreement'). % [32],[36]
strong_public_supervision('luselec_sa','article_12_transitional_energy_measures_act'). % [50],[51],[52]
strategic_sector('luselec_sa'). % [1]
strategic_sector('four_regional_public_undertakings'). % [1],[2]
not_competing_under_normal_conditions('luselec_sa'). % [14],[15]
not_competing_under_normal_conditions('four_regional_public_undertakings'). % [14],[15],[2]
