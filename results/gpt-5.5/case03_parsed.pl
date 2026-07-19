% 1_financial_activa
parsed_money_received('upper austria development gmbh', 'regional_capital_contribution', 9000000). % [14],[15],[16]
parsed_money_received('upper austria airport gmbh', 'exclusive_option_contract', 9000000). % [20],[21],[22],[23],[26]
parsed_value_received_rights_licenses('upper austria development gmbh', 'exclusive_option_contract', 9000000). % [20],[21],[31],[32],[33]

% 2_financial_passiva
parsed_money_spent('upper austria development gmbh', 'exclusive_option_contract', 9000000). % [20],[22],[23],[26]
parsed_value_granted_rights_licenses('upper austria airport gmbh', 'exclusive_option_contract', 9000000). % [20],[21],[31],[32]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('regional_capital_contribution'). % [3],[15]
purchase_lease_rent_similar('exclusive_option_contract'). % [20],[21],[22]
follows_shareholder_objectives('region of upper austria', 'regional_capital_contribution'). % [8],[10],[11],[12],[14],[15]
is_shareholder_of('region of upper austria', 'upper austria development gmbh'). % [7]
is_shareholder_of('other public shareholders', 'upper austria development gmbh'). % [7]
is_shareholder_of('private investors', 'upper austria development gmbh'). % [7]
economic_objective_similar_to_private_investor('regional_capital_contribution'). % [10],[11],[12]
economic_objective_similar_to_private_investor('exclusive_option_contract'). % [24],[25],[31],[32],[33]

% 5_act_of_public_nature
monetary_subsidy('regional_capital_contribution'). % [15],[16]
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_option_contract'). % [20],[21],[22]

% 6_MEO
intervention_decided_at_same_time('regional_capital_contribution', 'region of upper austria', 'private investors'). % [8],[9],[10]
intervention_carried_at_same_time('regional_capital_contribution', 'region of upper austria', 'private investors'). % [14]
same_terms_and_conditions('regional_capital_contribution', 'region of upper austria', 'private investors'). % [10],[11]
intervention_is_significant('private investors'). % [7]
measure_financial_terms('exclusive_option_contract', 9000000). % [22],[23]
expert_financial_expectation('exclusive_option_contract', 9000000). % [31],[32]
expert_evaluation_on_measure_or_similar_action('june_2009_land_valuation_report', 'certified_property_consultancy', 'exclusive_option_contract'). % [31],[32],[33]

% 7_direct_or_indirect_advantage
direct_targeting('regional_capital_contribution', 'upper austria development gmbh'). % [14],[15],[16]
direct_targeting('exclusive_option_contract', 'upper austria development gmbh'). % [20],[21]
direct_targeting('exclusive_option_contract', 'upper austria airport gmbh'). % [20],[22],[23]

% 8_active_transfer_of_resources
active_resource_flow('regional_capital_contribution', 'regional_budget_funds'). % [14],[15],[16]
resource_of_intrastate_entity('regional_budget_funds'). % [16]
active_resource_flow('exclusive_option_contract', 'uad_budget_funds'). % [20],[22],[23],[26]
resource_of_public_undertaking('uad_budget_funds'). % [5],[7],[26]
active_resource_flow('exclusive_option_contract', 'exclusive_option_rights'). % [20],[21],[31],[32]
active_resource_flow('private_capital_contribution', 'private_investor_funds'). % [7],[14]
resource_of_private_body('private_investor_funds'). % [7]

% 9_foregoing_revenue
access_domain_resources_rights('exclusive_option_contract', 9000000). % [20],[21],[22],[23]
market_value_domain_resources_rights('exclusive_option_contract', 9000000). % [31],[32],[33]

% 10_imputability
intrastate_of('upper austria', 'austria'). % [-]
public_intra_state_authority('region of upper austria', 'upper austria'). % [1],[7],[15]
public_intra_state_authority('upper austria ministry of economic affairs', 'upper austria'). % [8]
adopted_or_administered_by('regional_capital_contribution', 'region of upper austria'). % [14],[15],[16]
adopted_or_administered_by('private_capital_contribution', 'private investors'). % [7],[14]
adopted_or_administered_by('exclusive_option_contract', 'upper austria development gmbh'). % [20],[24],[26]
adopted_or_administered_by('exclusive_option_contract', 'upper austria airport gmbh'). % [20],[21]
is_public_undertaking('upper austria development gmbh'). % [1],[7]
public_undertaking_of_intra_state('upper austria development gmbh', 'upper austria'). % [1],[7]
organic_link_with_state_or_intra_state('upper austria development gmbh'). % [7],[17],[18]
other_indicators_of_public_involvement('upper austria development gmbh', 'exclusive_option_contract'). % [17],[18],[24],[25]
