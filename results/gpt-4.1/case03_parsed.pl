% 1_financial_activa
parsed_money_received('uad', 'incorporation_2009', 9000000). % [15]
parsed_money_received('uad', 'incorporation_2009', 12000000). % [3]
parsed_value_received_rights_licenses('uad', 'exclusive_option_contract_2009', 9000000). % [21],[32]

% 2_financial_passiva
parsed_money_spent('uad', 'exclusive_option_contract_2009', 9000000). % [22],[23],[26]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('incorporation_2009'). % [3],[15]
is_shareholder_of('region_of_upper_austria', 'uad'). % [7]
is_shareholder_of('other_public_shareholders', 'uad'). % [7]
is_shareholder_of('private_investors', 'uad'). % [7]
purchase_lease_rent_similar('exclusive_option_contract_2009'). % [21]
sell_lease_rent_similar('exclusive_option_contract_2009'). % [21]
economic_objective_similar_to_private_investor('incorporation_2009'). % [10],[11],[12]
economic_objective_similar_to_private_investor('exclusive_option_contract_2009'). % [10],[11],[12],[25]
follows_shareholder_objectives('uad', 'exclusive_option_contract_2009'). % [25]
follows_shareholder_objectives('uad', 'incorporation_2009'). % [17],[19]

% 5_act_of_public_nature
further_option_of_public_authority('incorporation_2009'). % [5],[8]
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_option_contract_2009'). % [21]

% 6_MEO
intervention_decided_at_same_time(incorporation_2009, region_of_upper_austria, private_investors). % [8],[9],[14]
intervention_carried_at_same_time(incorporation_2009, region_of_upper_austria, private_investors). % [14]
same_terms_and_conditions(incorporation_2009, region_of_upper_austria, private_investors). % [10],[11],[14]
intervention_is_significant(private_investors). % [7]
expert_evaluation_on_measure_or_similar_action('land_valuation_june_2009', 'certified_property_consultancy', exclusive_option_contract_2009). % [31],[32]
ex_ante_evaluation('land_valuation_june_2009', exclusive_option_contract_2009). % [31]
expert_financial_expectation(exclusive_option_contract_2009, 9000000). % [32]
measure_financial_terms(exclusive_option_contract_2009, 9000000). % [22],[23]

% 7_direct_or_indirect_advantage
direct_targeting(incorporation_2009, 'uad'). % [1],[5],[8],[14]
direct_targeting(exclusive_option_contract_2009, 'uad'). % [21],[24]

% 8_active_transfer_of_resources
active_resource_flow(incorporation_2009, region_of_upper_austria). % [15]
active_resource_flow(incorporation_2009, other_public_shareholders). % [7],[14]
active_resource_flow(incorporation_2009, private_investors). % [7],[14]
active_resource_flow(exclusive_option_contract_2009, uad). % [22],[23],[26]
resource_of_intrastate_entity(region_of_upper_austria). % [16]
resource_of_private_body(private_investors). % [7]
resource_of_public_undertaking(other_public_shareholders). % [7]
resource_of_public_undertaking(uad). % [26]

% 9_foregoing_revenue
actual_price_goods_service(exclusive_option_contract_2009, 9000000). % [22]
market_price_goods_service(exclusive_option_contract_2009, 9000000). % [32]

% 10_imputability
adopted_or_administered_by(incorporation_2009, region_of_upper_austria). % [5],[8]
adopted_or_administered_by(incorporation_2009, private_investors). % [8]
adopted_or_administered_by(incorporation_2009, other_public_shareholders). % [7],[8]
adopted_or_administered_by(exclusive_option_contract_2009, uad). % [20],[24]
public_intra_state_authority(region_of_upper_austria, 'upper_austria'). % [2],[3]
intrastate_of('upper_austria', austria). % [2]
is_public_undertaking(uad). % [7],[14]
public_undertaking_of_intra_state(uad, 'upper_austria'). % [7]
organic_link_with_state_or_intra_state(uad). % [7]
measure_scope_indicates_involvement(uad, exclusive_option_contract_2009). % [21],[22]
other_indicators_of_public_involvement(region_of_upper_austria, incorporation_2009). % [3],[5],[7]
