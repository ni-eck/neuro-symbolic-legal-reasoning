% 1_financial_activa
parsed_money_received('operators_within_20km_czech_border', 'temporary_petrol_subsidy', 0.08). % [2],[4]
parsed_money_received('operators_20_40km_czech_border', 'temporary_petrol_subsidy', 0.04). % [2],[5]
parsed_costs_relieved_monetary_obligations('oil_companies_serving_stations_within_20km_czech_border', 'temporary_petrol_subsidy', 0.08). % [4],[9],[10],[11],[12]
parsed_costs_relieved_monetary_obligations('oil_companies_serving_stations_20_40km_czech_border', 'temporary_petrol_subsidy', 0.04). % [5],[9],[10],[11],[12]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('temporary_petrol_subsidy'). % [2],[4],[5],[7],[8]
tax_related('petrol_excise_duty_increase'). % [1]

% 6_MEO
intervention_carried_at_same_time('temporary_petrol_subsidy', 'polish_government', 'oil_companies_serving_stations_within_20km_czech_border'). % [2],[4],[11],[12]
intervention_carried_at_same_time('temporary_petrol_subsidy', 'polish_government', 'oil_companies_serving_stations_20_40km_czech_border'). % [2],[5],[11],[12]
not_comparable_starting_position('temporary_petrol_subsidy', 'polish_government', 'oil_companies_serving_stations_within_20km_czech_border'). % [8],[9],[10],[11]
not_comparable_starting_position('temporary_petrol_subsidy', 'polish_government', 'oil_companies_serving_stations_20_40km_czech_border'). % [8],[9],[10],[11]
measure_financial_terms('temporary_petrol_subsidy', 100000). % [7]

% 7_direct_or_indirect_advantage
direct_targeting('temporary_petrol_subsidy', 'operators_within_20km_czech_border'). % [2],[4]
direct_targeting('temporary_petrol_subsidy', 'operators_20_40km_czech_border'). % [2],[5]
secondary_effects('temporary_petrol_subsidy', 'oil_companies_serving_stations_within_20km_czech_border', 'reduced_forecourt_discount_costs'). % [9],[10],[11],[12]
secondary_effects('temporary_petrol_subsidy', 'oil_companies_serving_stations_20_40km_czech_border', 'reduced_forecourt_discount_costs'). % [9],[10],[11],[12]
channeled_to_group_of_undertakings('oil_companies_serving_stations_within_20km_czech_border', 'reduced_forecourt_discount_costs'). % [9],[12]
channeled_to_group_of_undertakings('oil_companies_serving_stations_20_40km_czech_border', 'reduced_forecourt_discount_costs'). % [9],[12]

% 8_active_transfer_of_resources
active_resource_flow('temporary_petrol_subsidy', 'state_budget_funds'). % [2],[4],[5],[8]
resource_of_central_state_entity('state_budget_funds'). % [1],[8]

% 9_foregoing_revenue
achieving_policy_objective('temporary_petrol_subsidy', 'maintaining_price_competitiveness'). % [2],[3]

% 10_imputability
adopted_or_administered_by('petrol_excise_duty_increase', 'polish_government'). % [1]
adopted_or_administered_by('temporary_petrol_subsidy', 'polish_government'). % [2]
public_state_authority('polish_government', 'poland'). % [1]
