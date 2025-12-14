% 1_financial_activa
parsed_money_received('upper_austria_development_gmbh','equity_injection_by_region_alleged_12_million_2009',12000000). % [3]
parsed_money_received('upper_austria_development_gmbh','capital_contribution_by_region_9_million_7_may_2009',9000000). % [15],[16]
parsed_value_received_rights_licenses('upper_austria_development_gmbh','exclusive_option_on_upper_austria_airport_land_2009',9000000). % [21],[22],[31],[32],[33]

% 2_financial_passiva
parsed_money_spent('upper_austria_development_gmbh','exclusive_option_on_upper_austria_airport_land_2009',9000000). % [21],[22],[23],[26]
parsed_assets_lost('upper_austria_development_gmbh','exclusive_option_on_upper_austria_airport_land_2009',9000000). % [27],[31],[32],[33]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('equity_injection_by_region_alleged_12_million_2009'). % [3]
capital_injection('capital_contribution_by_region_9_million_7_may_2009'). % [5],[15],[16]
is_shareholder_of('region_of_upper_austria','upper_austria_development_gmbh'). % [7]
is_shareholder_of('other_public_shareholders','upper_austria_development_gmbh'). % [7]
is_shareholder_of('private_investors','upper_austria_development_gmbh'). % [7]
purchase_lease_rent_similar('exclusive_option_on_upper_austria_airport_land_2009'). % [20],[21],[22],[23],[26]
follows_shareholder_objectives('upper_austria_development_gmbh','exclusive_option_on_upper_austria_airport_land_2009'). % [9],[10],[11],[24],[25]
economic_objective_similar_to_private_investor('capital_contribution_by_region_9_million_7_may_2009'). % [9],[10],[11],[12],[13],[14],[15]

% 5_act_of_public_nature
monetary_subsidy('capital_contribution_by_region_9_million_7_may_2009'). % [5],[14],[15],[16]
monetary_subsidy('equity_injection_by_region_alleged_12_million_2009'). % [1],[3]
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_option_on_upper_austria_airport_land_2009'). % [20],[21],[22],[23],[26]

% 6_MEO
measure_financial_terms('capital_contribution_by_region_9_million_7_may_2009', 9000000). % [15],[6],[14]
measure_financial_terms('equity_injection_by_region_alleged_12_million_2009', 12000000). % [3]
measure_financial_terms('exclusive_option_on_upper_austria_airport_land_2009', 9000000). % [22],[23],[26]
expert_evaluation_on_measure_or_similar_action('independent_land_valuation_june_2009','certified_property_consultancy','exclusive_option_on_upper_austria_airport_land_2009'). % [31],[32],[33]
expert_financial_expectation('exclusive_option_on_upper_austria_airport_land_2009', 9000000). % [31],[32],[33]
same_terms_and_conditions('capital_contribution_by_region_9_million_7_may_2009','region_of_upper_austria','private_investors'). % [8],[9],[10],[11],[14]
intervention_decided_at_same_time('capital_contribution_by_region_9_million_7_may_2009','region_of_upper_austria','private_investors'). % [8],[9],[14]
intervention_carried_at_same_time('capital_contribution_by_region_9_million_7_may_2009','region_of_upper_austria','private_investors'). % [14],[15]
intervention_is_significant('private_investors'). % [7]

% 7_direct_or_indirect_advantage
direct_targeting('capital_contribution_by_region_9_million_7_may_2009','upper_austria_development_gmbh'). % [5],[14],[15]
direct_targeting('equity_injection_by_region_alleged_12_million_2009','upper_austria_development_gmbh'). % [1],[3]
direct_targeting('exclusive_option_on_upper_austria_airport_land_2009','upper_austria_development_gmbh'). % [20],[21],[22],[23],[26]

% 8_active_transfer_of_resources
active_resource_flow('capital_contribution_by_region_9_million_7_may_2009', regional_budget). % [5],[14],[15],[16]
resource_of_intrastate_entity(regional_budget). % [15],[16]
active_resource_flow('equity_injection_by_region_alleged_12_million_2009', region_equity_injection_12_million). % [1],[3]
resource_of_intrastate_entity(region_equity_injection_12_million). % [3]
active_resource_flow('exclusive_option_on_upper_austria_airport_land_2009', upper_austria_development_gmbh_budget). % [20],[21],[22],[23],[26]
resource_of_public_undertaking(upper_austria_development_gmbh_budget). % [7],[26]
resource_of_private_body(private_investors_funds). % [7],[14]

% 9_foregoing_revenue
sell_price_domain_resources_rights('exclusive_option_on_upper_austria_airport_land_2009', 9000000). % [21],[22],[23]
market_value_domain_resources_rights('exclusive_option_on_upper_austria_airport_land_2009', 9000000). % [31],[32],[33]
access_domain_resources_rights('exclusive_option_on_upper_austria_airport_land_2009', 9000000). % [21],[22],[23],[26]

% 10_imputability
adopted_or_administered_by('upper_austria_development_gmbh', 'region_of_upper_austria'). % [1],[5]
adopted_or_administered_by('capital_contribution_by_region_9_million_7_may_2009', 'region_of_upper_austria'). % [14],[15],[16]
adopted_or_administered_by('equity_injection_by_region_alleged_12_million_2009', 'region_of_upper_austria'). % [1],[3]
adopted_or_administered_by('exclusive_option_on_upper_austria_airport_land_2009', 'upper_austria_development_gmbh'). % [20],[21],[24],[26]
public_intra_state_authority('region_of_upper_austria', 'upper_austria'). % [1]
intrastate_of('upper_austria', 'austria'). % [6]
is_public_undertaking('upper_austria_development_gmbh'). % [1],[7]
public_undertaking_of_intra_state('upper_austria_development_gmbh', 'upper_austria'). % [1],[7]
decision_dependence_on_state_or_intra_state('upper_austria_development_gmbh', 'exclusive_option_on_upper_austria_airport_land_2009'). % [17],[18],[24],[25]
measure_scope_indicates_involvement('upper_austria_development_gmbh', 'exclusive_option_on_upper_austria_airport_land_2009'). % [2],[20],[21]
organic_link_with_state_or_intra_state('upper_austria_development_gmbh'). % [1],[7]
