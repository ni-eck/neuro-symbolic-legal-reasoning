% 1_financial_activa
parsed_money_received('station_ops_within_20km_cz_border', 'subsidy_border_petrol_2021', 0.08). % [2],[4]
parsed_money_received('station_ops_20to40km_cz_border', 'subsidy_border_petrol_2021', 0.04). % [2],[5]
textual_evidence_of_improved_financial_situation('oil_companies_with_price_management_clauses', 'subsidy_border_petrol_2021'). % [9],[11],[12]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
economic_objective_similar_to_private_investor('subsidy_border_petrol_2021'). % [3]

% 5_act_of_public_nature
monetary_subsidy('subsidy_border_petrol_2021'). % [2],[4],[5],[6],[7],[8]
tax_related('excise_increase_petrol_2021'). % [1],[2]
regulatory_capacity('excise_increase_petrol_2021'). % [1],[2]

% 6_MEO
intervention_carried_at_same_time('subsidy_border_petrol_2021', 'Polish Government', 'oil_companies_with_price_management_clauses'). % [2],[12]
measure_financial_terms('subsidy_border_petrol_2021', 100000). % [7]

% 7_direct_or_indirect_advantage
direct_targeting('subsidy_border_petrol_2021', 'station_ops_within_20km_cz_border'). % [2],[4],[5]
direct_targeting('subsidy_border_petrol_2021', 'station_ops_20to40km_cz_border'). % [2],[4],[6]
secondary_effects('subsidy_border_petrol_2021', 'oil_companies_with_price_management_clauses', 'reduced_cost_of_forecourt_discounts'). % [9],[10],[11],[12]
channeled_to_group_of_undertakings('oil_companies_with_price_management_clauses', 'reduced_cost_of_forecourt_discounts'). % [9],[10],[11],[12]

% 8_active_transfer_of_resources
active_resource_flow('subsidy_border_petrol_2021', 'state_budget_funds'). % [3],[8]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('subsidy_border_petrol_2021', 'state_budget_funds'). % [3],[7],[8]
resource_of_central_state_entity('state_budget_funds'). % [8]
active_resource_flow('excise_increase_petrol_2021', 'excise_tax_revenue'). % [1],[2]

% 9_foregoing_revenue
achieving_policy_objective('subsidy_border_petrol_2021', 'maintain_price_competitiveness'). % [3]

% 10_imputability
adopted_or_administered_by('excise_increase_petrol_2021', 'Polish Government'). % [1],[2]
adopted_or_administered_by('subsidy_border_petrol_2021', 'Polish Government'). % [1],[3]
public_state_authority('Polish Government', 'Poland'). % [-]
