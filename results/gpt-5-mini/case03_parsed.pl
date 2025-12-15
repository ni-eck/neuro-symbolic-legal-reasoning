% 1_financial_activa
parsed_money_received('upper_austria_development_gmbh','equity_injection_from_region',12000000). % [3]
parsed_money_received('upper_austria_development_gmbh','equity_contribution_from_region_on_incorporation',9000000). % [15]
parsed_money_received('upper_austria_airport_gmbh','option_payment_total_from_uad',9000000). % [20],[22],[23],[26]
parsed_money_received('upper_austria_airport_gmbh','option_payment_2009_from_uad',5100000). % [22],[23],[26]
parsed_money_received('upper_austria_airport_gmbh','option_payment_2010_from_uad',3900000). % [22],[23],[26]
parsed_value_received_rights_licenses('upper_austria_development_gmbh','exclusive_option_purchase_rights',9000000). % [20],[22],[31],[32],[33]

% 2_financial_passiva
parsed_money_spent('upper_austria_development_gmbh', 'option_payment_2009_from_uad', 5100000). % [23],[26]
parsed_money_spent('upper_austria_development_gmbh', 'option_payment_2010_from_uad', 3900000). % [23],[26]
parsed_money_spent('upper_austria_development_gmbh', 'option_payment_total_from_uad', 9000000). % [22],[23],[26]
parsed_value_granted_rights_licenses('upper_austria_airport_gmbh', 'exclusive_option_purchase_rights', 9000000). % [21],[22],[31],[32],[33]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('equity_injection_from_region'). % [3],[4],[6]
capital_injection('equity_contribution_from_region_on_incorporation'). % [14],[15],[16]
purchase_lease_rent_similar('exclusive_option_purchase_rights'). % [20],[21],[22],[23]
follows_shareholder_objectives('upper_austria_development_gmbh','exclusive_option_purchase_rights'). % [17],[18],[19],[24],[25]
economic_objective_similar_to_private_investor('equity_contribution_from_region_on_incorporation'). % [9],[10],[11],[12],[13]
is_shareholder_of('region_of_upper_austria','upper_austria_development_gmbh'). % [7],[8]

% 5_act_of_public_nature
monetary_subsidy('equity_injection_from_region'). % [3]
monetary_subsidy('equity_contribution_from_region_on_incorporation'). % [15],[16]
granting_access_to_public_domain_resources_special_or_exclusive_rights('exclusive_option_purchase_rights'). % [20],[21],[22]

% 6_MEO
same_terms_and_conditions('equity_contribution_from_region_on_incorporation','region_of_upper_austria','private_investors'). % [8],[9],[10],[11]
intervention_decided_at_same_time('equity_contribution_from_region_on_incorporation','region_of_upper_austria','private_investors'). % [8],[9],[14]
intervention_carried_at_same_time('equity_contribution_from_region_on_incorporation','region_of_upper_austria','private_investors'). % [14],[15]
intervention_is_significant('private_investors'). % [7]
measure_financial_terms('equity_injection_from_region', 12000000). % [3]
measure_financial_terms('equity_contribution_from_region_on_incorporation', 9000000). % [15]
measure_financial_terms('option_payment_2009_from_uad', 5100000). % [22],[23]
measure_financial_terms('option_payment_2010_from_uad', 3900000). % [22],[23]
measure_financial_terms('option_payment_total_from_uad', 9000000). % [22],[23],[31],[32]
expert_financial_expectation('exclusive_option_purchase_rights', 9000000). % [31],[32],[33]
expert_evaluation_on_measure_or_similar_action('valuation_june2009','certified_property_consultancy','exclusive_option_purchase_rights'). % [31],[32],[33]
textual_evidence_liquidation_or_reduction_more_economic('exclusive_option_purchase_rights'). % [27],[28],[29],[30]

% 7_direct_or_indirect_advantage
direct_targeting('equity_injection_from_region','upper_austria_development_gmbh'). % [1],[2],[3]
direct_targeting('equity_contribution_from_region_on_incorporation','upper_austria_development_gmbh'). % [14],[15],[16]
direct_targeting('exclusive_option_purchase_rights','upper_austria_development_gmbh'). % [20],[21]
direct_targeting('option_payment_total_from_uad','upper_austria_airport_gmbh'). % [22],[23]
direct_targeting('option_payment_2009_from_uad','upper_austria_airport_gmbh'). % [23],[26]
direct_targeting('option_payment_2010_from_uad','upper_austria_airport_gmbh'). % [23],[26]
secondary_effects('equity_injection_from_region','upper_austria_airport_gmbh','acquisition_and_marketing_of_airport_linked_land_benefit'). % [1],[2],[4]
secondary_effects('equity_contribution_from_region_on_incorporation','upper_austria_airport_gmbh','acquisition_and_marketing_of_airport_linked_land_benefit'). % [14],[15],[16],[2]
channeled_to_identifiable_undertaking_s('upper_austria_airport_gmbh','option_payments_received'). % [22],[23],[26]
channeled_to_group_of_undertakings('upper_austria_development_gmbh','shared_risks_and_returns_with_shareholders'). % [8],[9],[10],[11],[17],[18]

% 8_active_transfer_of_resources
active_resource_flow(equity_injection_from_region, 'region_of_upper_austria'). % [3]
active_resource_flow(equity_contribution_from_region_on_incorporation, 'region_of_upper_austria'). % [14],[15],[16]
resource_of_intrastate_entity('region_of_upper_austria'). % [15],[16]
resource_of_private_body('private_investors'). % [7],[8]
resource_of_public_undertaking('upper_austria_development_gmbh'). % [1],[7]
active_resource_flow(option_payment_2009_from_uad, 'upper_austria_development_gmbh'). % [23],[26],[22]
active_resource_flow(option_payment_2010_from_uad, 'upper_austria_development_gmbh'). % [23],[26],[22]
active_resource_flow(option_payment_total_from_uad, 'upper_austria_development_gmbh'). % [22],[23],[26]
active_resource_flow(exclusive_option_purchase_rights, 'upper_austria_development_gmbh'). % [20],[21],[22],[23],[26]

% 9_foregoing_revenue
access_domain_resources_rights('exclusive_option_purchase_rights', 9000000). % [20],[21],[22]
access_domain_resources_rights('option_payment_total_from_uad', 9000000). % [22]
access_domain_resources_rights('option_payment_2009_from_uad', 5100000). % [23],[26]
access_domain_resources_rights('option_payment_2010_from_uad', 3900000). % [23],[26]
market_value_domain_resources_rights('exclusive_option_purchase_rights', 9000000). % [31],[32],[33]

% 10_imputability
adopted_or_administered_by('equity_injection_from_region','region_of_upper_austria'). % [3]
adopted_or_administered_by('equity_contribution_from_region_on_incorporation','region_of_upper_austria'). % [14],[15],[16]
adopted_or_administered_by('exclusive_option_purchase_rights','upper_austria_development_gmbh'). % [20],[21]
adopted_or_administered_by('option_payment_2009_from_uad','upper_austria_development_gmbh'). % [23],[26]
adopted_or_administered_by('option_payment_2010_from_uad','upper_austria_development_gmbh'). % [23],[26]
adopted_or_administered_by('option_payment_total_from_uad','upper_austria_development_gmbh'). % [22],[23],[26]
public_intra_state_authority('region_of_upper_austria','upper_austria'). % [1],[16]
intrastate_of('upper_austria','austria'). % [1],[5]
is_public_undertaking('upper_austria_development_gmbh'). % [7],[1]
public_undertaking_of_intra_state('upper_austria_development_gmbh','upper_austria'). % [7],[15]
organic_link_with_state_or_intra_state('upper_austria_development_gmbh'). % [7],[15],[16]
measure_scope_indicates_involvement('upper_austria_development_gmbh','exclusive_option_purchase_rights'). % [2],[10],[11],[20],[21]
