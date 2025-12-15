% 1_financial_activa
parsed_money_received('luselec_sa', 'article_12_transitional_energy_measures_act_surcharge', 423840000). % [44],[47]
parsed_money_received('luselec_sa', 'sectoral_adjustment_agreement', 423840000). % [33]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('article_12_transitional_energy_measures_act_surcharge', 'luselec_sa', 'interior_region_gas_turbine_facility'). % [40],[44],[45]
compensation_for_obligation('article_12_transitional_energy_measures_act_surcharge', 'luselec_sa', 'universal_access_programme'). % [40],[44],[45]
public_service_obligation('interior_region_gas_turbine_facility'). % [7],[28]
public_service_obligation('universal_access_programme'). % [9],[28]
clearly_defined('interior_region_gas_turbine_facility'). % [7],[28]
clearly_defined('universal_access_programme'). % [9],[28]
compensation_for_obligation('sectoral_adjustment_agreement', 'luselec_sa', 'interior_region_gas_turbine_facility'). % [33],[34]
compensation_for_obligation('sectoral_adjustment_agreement', 'luselec_sa', 'universal_access_programme'). % [33],[34]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('sectoral_adjustment_agreement'). % [33],[34]
monetary_subsidy('article_12_transitional_energy_measures_act_surcharge'). % [40],[41],[42],[44],[47]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('santos_committee_report', 'professor_helena_santos', 'article_12_transitional_energy_measures_act_surcharge'). % [27]
not_in_favour_of_measure_or_similar_action('santos_committee_report', 'article_12_transitional_energy_measures_act_surcharge'). % [29],[30]
expert_evaluation_on_measure_or_similar_action('santos_committee_report', 'professor_helena_santos', 'sectoral_adjustment_agreement'). % [27]
not_in_favour_of_measure_or_similar_action('santos_committee_report', 'sectoral_adjustment_agreement'). % [29],[30]

% 7_direct_or_indirect_advantage
direct_targeting('sectoral_adjustment_agreement', 'luselec_sa'). % [33],[34],[35]
direct_targeting('article_12_transitional_energy_measures_act_surcharge', 'luselec_sa'). % [44],[45]

% 8_active_transfer_of_resources
active_resource_flow('sectoral_adjustment_agreement', 'distribution_company_payments_to_luselec_sa'). % [33]
active_resource_flow('article_12_transitional_energy_measures_act_surcharge', 'electricity_customer_surcharge'). % [40],[44]
resource_of_body_appointed_by_state_to_administer_measure('electricity_customer_surcharge'). % [44]
resource_of_private_body('distribution_company_payments_to_luselec_sa'). % [33]
resource_of_central_state_entity('electricity_customer_surcharge'). % [40],[44]

% 9_foregoing_revenue
achieving_policy_objective('article_12_transitional_energy_measures_act_surcharge', 'compensation_stranded_costs_state_imposed_obligations'). % [42],[27],[28],[40]
achieving_policy_objective('sectoral_adjustment_agreement', 'compensation_stranded_costs_state_imposed_obligations'). % [33],[34]
actual_price_goods_service('article_12_transitional_energy_measures_act_surcharge', 423840000). % [47]
actual_price_goods_service('sectoral_adjustment_agreement', 423840000). % [33]

% 10_imputability
adopted_or_administered_by('sectoral_adjustment_agreement', 'portuguese_government'). % [32]
adopted_or_administered_by('article_12_transitional_energy_measures_act_surcharge', 'portuguese_legislature'). % [39]
public_state_authority('portuguese_government', 'portugal'). % [32]
public_state_authority('portuguese_legislature', 'portugal'). % [39]
is_public_undertaking('luselec_sa'). % [3]
public_undertaking_of_state('luselec_sa', 'portugal'). % [3]
decision_dependence_on_state_or_intra_state('luselec_sa', 'interior_region_gas_turbine_facility'). % [7]
acted_on_government_directives('luselec_sa', 'universal_access_programme'). % [9]
measure_scope_indicates_involvement('luselec_sa', 'sectoral_adjustment_agreement'). % [36]
measure_scope_indicates_involvement('luselec_sa', 'article_12_transitional_energy_measures_act_surcharge'). % [44]
organic_link_with_state_or_intra_state('luselec_sa'). % [3]
strategic_sector('luselec_sa'). % [1]
not_competing_under_normal_conditions('luselec_sa'). % [14]
