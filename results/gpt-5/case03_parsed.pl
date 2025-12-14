% 1_financial_activa
parsed_money_received('Upper Austria Development GmbH', 'region_uad_equity_2009', 9000000). % [15],[16]
parsed_money_received('Upper Austria Airport GmbH', 'uad_uaa_option_payment_2009', 5100000). % [20],[21],[22],[23],[26]
parsed_money_received('Upper Austria Airport GmbH', 'uad_uaa_option_payment_2010', 3900000). % [20],[21],[22],[23],[26]
parsed_value_received_rights_licenses('Upper Austria Development GmbH', 'uad_uaa_option_2009', 9000000). % [21],[32]

% 2_financial_passiva
parsed_value_granted_rights_licenses('Upper Austria Airport GmbH', 'uad_uaa_option_2009', 9000000). % [20],[21],[22],[32]
parsed_other_liabilities_incurred('Upper Austria Development GmbH', 'uad_uaa_option_2009', 9000000). % [20],[21],[22],[23]
parsed_money_spent('Upper Austria Development GmbH', 'uad_uaa_option_payment_2009', 5100000). % [22],[23],[26]
parsed_money_spent('Upper Austria Development GmbH', 'uad_uaa_option_payment_2010', 3900000). % [22],[23],[26]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('region_uad_equity_2009'). % [3],[15]
follows_shareholder_objectives('Region of Upper Austria', 'region_uad_equity_2009'). % [10],[11],[18],[19]
economic_objective_similar_to_private_investor('region_uad_equity_2009'). % [9],[10],[11],[12],[13]
is_shareholder_of('Region of Upper Austria', 'Upper Austria Development GmbH'). % [7]
is_shareholder_of('other public shareholders', 'Upper Austria Development GmbH'). % [7]
is_shareholder_of('private investors', 'Upper Austria Development GmbH'). % [7]
purchase_lease_rent_similar('uad_uaa_option_2009'). % [20],[21],[22]
sell_lease_rent_similar('uad_uaa_option_2009'). % [20],[21],[22]
economic_objective_similar_to_private_investor('uad_uaa_option_2009'). % [24],[25],[31],[32],[33]
purchase_lease_rent_similar('uad_uaa_option_payment_2009'). % [22],[23],[26]
purchase_lease_rent_similar('uad_uaa_option_payment_2010'). % [22],[23],[26]
follows_shareholder_objectives('Upper Austria Development GmbH', 'uad_uaa_option_2009'). % [19],[24],[25]

% 5_act_of_public_nature
monetary_subsidy('region_uad_equity_2009'). % [3],[15],[16]
granting_access_to_public_domain_resources_special_or_exclusive_rights('uad_uaa_option_2009'). % [20],[21]

% 6_MEO
measure_financial_terms('region_uad_equity_2009', 9000000). % [15]
intervention_decided_at_same_time('region_uad_equity_2009', 'Region of Upper Austria', 'private investors'). % [8],[9],[10],[11]
intervention_carried_at_same_time('region_uad_equity_2009', 'Region of Upper Austria', 'private investors'). % [14]
same_terms_and_conditions('region_uad_equity_2009', 'Region of Upper Austria', 'private investors'). % [10],[11]
intervention_is_significant('private investors'). % [7]
expert_evaluation_on_measure_or_similar_action('june_2009_valuation', 'certified property consultancy', 'uad_uaa_option_2009'). % [31],[33]
expert_financial_expectation('uad_uaa_option_2009', 9000000). % [32]
measure_financial_terms('uad_uaa_option_2009', 9000000). % [22]
measure_financial_terms('uad_uaa_option_payment_2009', 5100000). % [23],[26]
measure_financial_terms('uad_uaa_option_payment_2010', 3900000). % [23],[26]

% 7_direct_or_indirect_advantage
direct_targeting('region_uad_equity_2009', 'Upper Austria Development GmbH'). % [3],[15],[16]
secondary_effects('region_uad_equity_2009', 'Upper Austria Airport GmbH', 'airport_linked_land_development'). % [2],[3]
channeled_to_identifiable_undertaking_s('Upper Austria Airport GmbH', 'airport_linked_land_development'). % [2]
direct_targeting('uad_uaa_option_2009', 'Upper Austria Development GmbH'). % [20],[21]
secondary_effects('uad_uaa_option_2009', 'Upper Austria Airport GmbH', 'option_fee_payments_2009_2010'). % [22],[23],[26]
channeled_to_identifiable_undertaking_s('Upper Austria Airport GmbH', 'option_fee_payments_2009_2010'). % [22],[23],[26]
direct_targeting('uad_uaa_option_payment_2009', 'Upper Austria Airport GmbH'). % [23],[26]
direct_targeting('uad_uaa_option_payment_2010', 'Upper Austria Airport GmbH'). % [23],[26]

% 8_active_transfer_of_resources
active_resource_flow('region_uad_equity_2009', 'regional_budget_funds'). % [15],[16]
resource_of_intrastate_entity('regional_budget_funds'). % [16]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('uad_uaa_option_2009', 'uad_budget_funds'). % [20],[22],[23]
active_resource_flow('uad_uaa_option_payment_2009', 'uad_budget_funds'). % [23],[26]
active_resource_flow('uad_uaa_option_payment_2010', 'uad_budget_funds'). % [23],[26]
resource_of_public_undertaking('uad_budget_funds'). % [7],[26]
active_resource_flow('private_investor_uad_equity_2009', 'private_investor_funds'). % [14],[7]
resource_of_private_body('private_investor_funds'). % [7]

% 9_foregoing_revenue
access_domain_resources_rights('uad_uaa_option_2009', 9000000). % [20],[21],[22],[23]
market_value_domain_resources_rights('uad_uaa_option_2009', 9000000). % [32]
access_domain_resources_rights('uad_uaa_option_payment_2009', 5100000). % [23],[26]
access_domain_resources_rights('uad_uaa_option_payment_2010', 3900000). % [23],[26]
achieving_policy_objective('region_uad_equity_2009', 'airport_linked_land_development'). % [2],[15],[16]
achieving_policy_objective('uad_uaa_option_2009', 'airport_linked_land_development'). % [2],[20],[21]

% 10_imputability
adopted_or_administered_by('region_uad_equity_2009', 'Region of Upper Austria'). % [14],[15],[16]
adopted_or_administered_by('private_investor_uad_equity_2009', 'private investors'). % [14],[8]
adopted_or_administered_by('uad_uaa_option_2009', 'Upper Austria Development GmbH'). % [20],[21],[24],[25]
adopted_or_administered_by('uad_uaa_option_payment_2009', 'Upper Austria Development GmbH'). % [23],[26]
adopted_or_administered_by('uad_uaa_option_payment_2010', 'Upper Austria Development GmbH'). % [23],[26]
public_intra_state_authority('Region of Upper Austria', 'Upper Austria'). % [1],[5]
intrastate_of('Upper Austria', 'Austria'). % [1],[5]
is_public_undertaking('Upper Austria Development GmbH'). % [7]
public_undertaking_of_intra_state('Upper Austria Development GmbH', 'Upper Austria'). % [7],[1]
