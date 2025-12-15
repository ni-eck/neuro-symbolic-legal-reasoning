% 1_financial_activa
parsed_money_received('upper austria development gmbh', 'uad_initial_capital_contribution_2009', 9000000). % [14],[15],[16]
parsed_value_received_rights_licenses('upper austria development gmbh', 'exclusive_option_uad_uaa_2009', 9000000). % [20],[21],[31],[32]
parsed_money_received('upper austria airport gmbh', 'exclusive_option_uad_uaa_2009', 9000000). % [22],[23],[26]

% 2_financial_passiva
parsed_money_spent('upper austria development gmbh', 'exclusive_option_uad_uaa_2009', 9000000). % [22],[23],[24],[26]
parsed_value_granted_rights_licenses('upper austria airport gmbh', 'exclusive_option_uad_uaa_2009', 9000000). % [21],[32]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('uad_initial_capital_contribution_2009'). % [14],[15],[16]
follows_shareholder_objectives('region of upper austria','uad_initial_capital_contribution_2009'). % [8],[9],[10],[11]
economic_objective_similar_to_private_investor('uad_initial_capital_contribution_2009'). % [9],[10],[11],[12],[13]
is_shareholder_of('region of upper austria','upper austria development gmbh'). % [7]
is_shareholder_of('other public shareholders','upper austria development gmbh'). % [7]
is_shareholder_of('private investors','upper austria development gmbh'). % [7]
purchase_lease_rent_similar('exclusive_option_uad_uaa_2009'). % [20],[21],[22],[23]
sell_lease_rent_similar('exclusive_option_uad_uaa_2009'). % [20],[21],[22],[23]
follows_shareholder_objectives('upper austria development gmbh','exclusive_option_uad_uaa_2009'). % [18],[19],[24],[25],[26]
economic_objective_similar_to_private_investor('exclusive_option_uad_uaa_2009'). % [22],[23],[31],[32],[33]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_option_uad_uaa_2009'). % [20],[21]

% 6_MEO
intervention_decided_at_same_time('uad_initial_capital_contribution_2009', 'region of upper austria', 'private investors'). % [8],[9],[14]
intervention_carried_at_same_time('uad_initial_capital_contribution_2009', 'region of upper austria', 'private investors'). % [14],[15]
same_terms_and_conditions('uad_initial_capital_contribution_2009', 'region of upper austria', 'private investors'). % [10],[11]
intervention_is_significant('private investors'). % [7]
expert_evaluation_on_measure_or_similar_action('independent_valuation_june_2009', 'certified_property_consultancy', 'exclusive_option_uad_uaa_2009'). % [31],[32],[33]
expert_financial_expectation('exclusive_option_uad_uaa_2009', 9000000). % [31],[32],[33]
measure_financial_terms('exclusive_option_uad_uaa_2009', 9000000). % [22]
measure_financial_terms('uad_initial_capital_contribution_2009', 9000000). % [14],[15]

% 7_direct_or_indirect_advantage
direct_targeting('uad_initial_capital_contribution_2009', 'upper austria development gmbh'). % [14],[15],[16]
direct_targeting('exclusive_option_uad_uaa_2009', 'upper austria development gmbh'). % [20],[21]
secondary_effects('uad_initial_capital_contribution_2009', 'upper austria airport gmbh', 'land_development_benefit'). % [2]
channeled_to_identifiable_undertaking_s('upper austria airport gmbh', 'land_development_benefit'). % [2]

% 8_active_transfer_of_resources
active_resource_flow('uad_initial_capital_contribution_2009', 'region_budget_capital_2009'). % [14],[15],[16]
resource_of_intrastate_entity('region_budget_capital_2009'). % [16]
active_resource_flow('uad_initial_capital_contribution_2009', 'private_investor_capital_2009'). % [7],[14]
resource_of_private_body('private_investor_capital_2009'). % [7]
active_resource_flow('uad_initial_capital_contribution_2009', 'other_public_shareholder_capital_2009'). % [7],[14]
active_resource_flow('exclusive_option_uad_uaa_2009', 'uad_option_payment_2009'). % [22],[23],[26]
resource_of_public_undertaking('uad_option_payment_2009'). % [7],[26]
active_resource_flow('exclusive_option_uad_uaa_2009', 'uad_option_payment_2010'). % [22],[23],[26]
resource_of_public_undertaking('uad_option_payment_2010'). % [7],[26]

% 9_foregoing_revenue
access_domain_resources_rights('exclusive_option_uad_uaa_2009', 9000000). % [20],[21],[22],[23]
market_value_domain_resources_rights('exclusive_option_uad_uaa_2009', 9000000). % [31],[32],[33]

% 10_imputability
adopted_or_administered_by('uad_initial_capital_contribution_2009', 'region of upper austria'). % [14],[15],[16]
adopted_or_administered_by('uad_initial_capital_contribution_2009', 'other public shareholders'). % [7],[14]
adopted_or_administered_by('uad_initial_capital_contribution_2009', 'private investors'). % [7],[14]
adopted_or_administered_by('exclusive_option_uad_uaa_2009', 'upper austria development gmbh'). % [20],[24],[26]
adopted_or_administered_by('exclusive_option_uad_uaa_2009', 'upper austria airport gmbh'). % [20],[21]
public_intra_state_authority('region of upper austria', 'upper austria'). % [7]
intrastate_of('upper austria', 'austria'). % [5]
is_public_undertaking('upper austria development gmbh'). % [7],[14]
public_undertaking_of_intra_state('upper austria development gmbh', 'upper austria'). % [7]
organic_link_with_state_or_intra_state('upper austria development gmbh'). % [7],[8],[14]
