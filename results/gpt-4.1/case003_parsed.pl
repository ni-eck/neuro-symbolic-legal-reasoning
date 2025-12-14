% 1_financial_activa
parsed_money_received('upper_austria_development_gmbh', 'region_equity_injection_2009', 12000000). % [3]
parsed_money_received('upper_austria_development_gmbh', 'region_capital_contribution_2009', 9000000). % [15]
parsed_value_received_rights_licenses('upper_austria_development_gmbh', 'uaa_exclusive_option_contract_2009', 9000000). % [32]

% 2_financial_passiva
parsed_money_spent('upper_austria_development_gmbh', 'uaa_exclusive_option_contract_2009', 9000000). % [22],[23],[26]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('region_equity_injection_2009'). % [3]
is_shareholder_of('region_of_upper_austria', 'upper_austria_development_gmbh'). % [7]
is_shareholder_of('other_public_shareholders', 'upper_austria_development_gmbh'). % [7]
is_shareholder_of('private_investors', 'upper_austria_development_gmbh'). % [7]
purchase_lease_rent_similar('uaa_exclusive_option_contract_2009'). % [21]
sell_lease_rent_similar('uaa_exclusive_option_contract_2009'). % [21]
economic_objective_similar_to_private_investor('uaa_exclusive_option_contract_2009'). % [10],[11],[12]
follows_shareholder_objectives('region_of_upper_austria', 'region_equity_injection_2009'). % [11],[12]
follows_shareholder_objectives('private_investors', 'region_equity_injection_2009'). % [11],[12]

% 5_act_of_public_nature
% Nothing

% 6_MEO
intervention_decided_at_same_time('region_capital_contribution_2009', 'region_of_upper_austria', 'private_investors'). % [14]
intervention_carried_at_same_time('region_capital_contribution_2009', 'region_of_upper_austria', 'private_investors'). % [14]
same_terms_and_conditions('region_capital_contribution_2009', 'region_of_upper_austria', 'private_investors'). % [10],[11],[14],[19]
intervention_is_significant('private_investors'). % [7]
expert_evaluation_on_measure_or_similar_action('land_valuation_report_2009', 'certified_property_consultancy', 'uaa_exclusive_option_contract_2009'). % [31],[32]
expert_financial_expectation('uaa_exclusive_option_contract_2009', 9000000). % [32]
measure_financial_terms('uaa_exclusive_option_contract_2009', 9000000). % [22]

% 7_direct_or_indirect_advantage
direct_targeting('region_equity_injection_2009', 'upper_austria_development_gmbh'). % [3]
direct_targeting('region_capital_contribution_2009', 'upper_austria_development_gmbh'). % [15]
direct_targeting('uaa_exclusive_option_contract_2009', 'upper_austria_development_gmbh'). % [21]

% 8_active_transfer_of_resources
active_resource_flow('region_equity_injection_2009', 'region_of_upper_austria'). % [3],[15]
resource_of_intrastate_entity('region_of_upper_austria'). % [3],[15],[16]
active_resource_flow('uaa_exclusive_option_contract_2009', 'upper_austria_development_gmbh'). % [22],[23],[26]
resource_of_public_undertaking('upper_austria_development_gmbh'). % [7],[14]

% 9_foregoing_revenue
actual_price_goods_service('uaa_exclusive_option_contract_2009', 9000000). % [22]
market_price_goods_service('uaa_exclusive_option_contract_2009', 9000000). % [32]

% 10_imputability
adopted_or_administered_by('region_equity_injection_2009', 'region_of_upper_austria'). % [3]
adopted_or_administered_by('region_capital_contribution_2009', 'region_of_upper_austria'). % [15]
adopted_or_administered_by('uaa_exclusive_option_contract_2009', 'upper_austria_development_gmbh'). % [21],[24]
public_intra_state_authority('region_of_upper_austria', 'upper_austria'). % [1]
intrastate_of('upper_austria', 'austria'). % [1]
is_public_undertaking('upper_austria_development_gmbh'). % [7]
public_undertaking_of_intra_state('upper_austria_development_gmbh', 'upper_austria'). % [7]
organic_link_with_state_or_intra_state('upper_austria_development_gmbh'). % [7]
measure_scope_indicates_involvement('upper_austria_development_gmbh', 'uaa_exclusive_option_contract_2009'). % [2],[10]
