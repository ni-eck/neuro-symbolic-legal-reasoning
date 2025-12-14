% 1_financial_activa
parsed_money_received('luselec sa', 'sectoral_adjustment_agreement_2004_2007', 423840000). % [33]

% 2_financial_passiva
% Nothing

% 3_altmark
public_service_obligation('interior_region_gas_turbine_facility'). % [7],[27],[28]
clearly_defined('interior_region_gas_turbine_facility'). % [7]
public_service_obligation('universal_access_programme_rural_grid_extensions'). % [9],[10],[27],[28]
clearly_defined('universal_access_programme_rural_grid_extensions'). % [9],[10]

% 4_act_of_private_nature
is_shareholder_of('four_regional_public_undertakings', 'luselec sa'). % [2],[3]
purchase_lease_rent_similar('long_term_import_contracts'). % [12]
economic_objective_similar_to_private_investor('long_term_import_contracts'). % [12],[30]
economic_objective_similar_to_private_investor('biomass_gasification_rnd_ventures'). % [13],[29]
fallback_act_of_economic_nature('sectoral_adjustment_agreement_2004_2007'). % [32],[33],[36]

% 5_act_of_public_nature
regulatory_capacity('interior_region_gas_turbine_facility'). % [7]
regulatory_capacity('universal_access_programme_rural_grid_extensions'). % [10]
regulatory_capacity('sectoral_adjustment_agreement_2004_2007'). % [32],[36]
monetary_subsidy('sectoral_adjustment_agreement_2004_2007'). % [33]
regulatory_capacity('electricity_sector_reform_act_2007'). % [18],[19],[20]
tax_related('article_12_surcharge_2007'). % [40]
regulatory_capacity('article_12_surcharge_2007'). % [39],[40]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('santos_committee_report_2007', 'santos_committee', 'interior_region_gas_turbine_facility'). % [26],[27],[28]
expert_evaluation_on_measure_or_similar_action('santos_committee_report_2007', 'santos_committee', 'universal_access_programme_rural_grid_extensions'). % [26],[27],[28]
expert_evaluation_on_measure_or_similar_action('santos_committee_report_2007', 'santos_committee', 'biomass_gasification_rnd_ventures'). % [26],[29],[30]
expert_evaluation_on_measure_or_similar_action('santos_committee_report_2007', 'santos_committee', 'long_term_import_contracts'). % [26],[29],[30]
not_in_favour_of_measure_or_similar_action('santos_committee_report_2007', 'biomass_gasification_rnd_ventures'). % [29],[30]
not_in_favour_of_measure_or_similar_action('santos_committee_report_2007', 'long_term_import_contracts'). % [29],[30]
ex_ante_evaluation('santos_committee_report_2007', 'article_12_surcharge_2007'). % [26],[27],[39]
measure_financial_terms('sectoral_adjustment_agreement_2004_2007', 423840000). % [33]
measure_financial_terms('article_12_surcharge_2007', 423840000). % [47]
comparable_type('article_12_surcharge_2007', 'sectoral_adjustment_agreement_2004_2007'). % [41]
comparable_situation('article_12_surcharge_2007', 'sectoral_adjustment_agreement_2004_2007'). % [33],[40],[41]

% 7_direct_or_indirect_advantage
direct_targeting('interior_region_gas_turbine_facility', 'luselec sa'). % [7]
direct_targeting('universal_access_programme_rural_grid_extensions', 'luselec sa'). % [9]
direct_targeting('sectoral_adjustment_agreement_2004_2007', 'luselec sa'). % [33]
direct_targeting('article_12_surcharge_2007', 'luselec sa'). % [45]
secondary_effects('sectoral_adjustment_agreement_2004_2007', 'luselec sa', 'transition_stranded_costs_coverage'). % [33],[34]
channeled_to_group_of_undertakings('luselec sa', 'transition_stranded_costs_coverage'). % [23],[24],[33],[34]
secondary_effects('article_12_surcharge_2007', 'luselec sa', 'stranded_costs_2007_pool_funding'). % [41],[42],[43],[47]
channeled_to_group_of_undertakings('luselec sa', 'stranded_costs_2007_pool_funding'). % [23],[24],[41],[42],[43]

% 8_active_transfer_of_resources
active_resource_flow('sectoral_adjustment_agreement_2004_2007', 'payments_from_distribution_companies_423_84m_annually'). % [32],[33],[34],[35]
active_resource_flow('article_12_surcharge_2007', 'surcharge_proceeds_1jul_31dec_2007'). % [39],[40],[44],[45],[46]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('article_12_surcharge_2007', 'surcharge_proceeds_1jul_31dec_2007'). % [39],[40],[44],[46]
active_resource_flow('article_12_surcharge_2007', 'surplus_remittance_to_ministry_of_energy_and_infrastructure'). % [47],[48],[49]
active_resource_flow('biomass_gasification_rnd_ventures', 'luselec_internal_funding_for_biomass_gasification_rnd'). % [13]
active_resource_flow('interior_region_gas_turbine_facility', 'capital_expenditure_for_backup_gas_turbine'). % [7]
active_resource_flow('universal_access_programme_rural_grid_extensions', 'financing_rural_grid_extensions'). % [9]

% 9_foregoing_revenue
achieving_policy_objective('interior_region_gas_turbine_facility', 'ensure_supply_stability_during_summer_peaks'). % [7]
achieving_policy_objective('universal_access_programme_rural_grid_extensions', 'universal_access_to_electricity'). % [9],[10]
achieving_policy_objective('sectoral_adjustment_agreement_2004_2007', 'transition_stranded_costs_coverage'). % [32],[33],[34]
achieving_policy_objective('article_12_surcharge_2007', 'stranded_costs_2007_pool_funding'). % [41],[42],[43]
achieving_policy_objective('electricity_sector_reform_act_2007', 'electricity_market_liberalisation'). % [16],[17],[18],[20]

% 10_imputability
is_public_undertaking('four_regional_public_undertakings'). % [2]
adopted_or_administered_by('interior_region_gas_turbine_facility', 'government_of_portugal'). % [7]
acted_on_government_directives('luselec sa', 'interior_region_gas_turbine_facility'). % [7],[8]
decision_dependence_on_state_or_intra_state('luselec sa', 'interior_region_gas_turbine_facility'). % [7],[8]
adopted_or_administered_by('universal_access_programme_rural_grid_extensions', 'government_of_portugal'). % [9]
acted_on_government_directives('luselec sa', 'universal_access_programme_rural_grid_extensions'). % [9],[10]
decision_dependence_on_state_or_intra_state('luselec sa', 'universal_access_programme_rural_grid_extensions'). % [9],[10]
public_state_authority('portuguese_legislature', 'portugal'). % [18],[19],[39]
adopted_or_administered_by('electricity_sector_reform_act_2007', 'portuguese_legislature'). % [18],[19]
adopted_or_administered_by('article_12_surcharge_2007', 'portuguese_legislature'). % [39],[40],[41]
public_state_authority('ministry_of_energy_and_infrastructure', 'portugal'). % [15],[49]
public_state_authority('government_of_portugal', 'portugal'). % [7],[32]
adopted_or_administered_by('sectoral_adjustment_agreement_2004_2007', 'government_of_portugal'). % [32],[36]
adopted_or_administered_by('article_12_surcharge_2007', 'licensed_network_operators_and_suppliers'). % [44],[46]
was_designated('luselec sa', 'article_12_surcharge_2007', 'portuguese_legislature'). % [45]
was_designated('licensed_network_operators_and_suppliers', 'article_12_surcharge_2007', 'portuguese_legislature'). % [44]
strong_public_supervision('luselec sa', 'article_12_surcharge_2007'). % [50],[51],[52],[53]
strategic_sector('four_regional_public_undertakings'). % [1],[2]
not_competing_under_normal_conditions('four_regional_public_undertakings'). % [1],[14],[15]
