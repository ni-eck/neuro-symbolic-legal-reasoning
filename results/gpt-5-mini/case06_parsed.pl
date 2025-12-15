% 1_financial_activa
parsed_money_received('operators_within_20km','temporary_petrol_subsidy_near_czech_border',0.08). % [2],[4]
parsed_money_received('operators_20_40km','temporary_petrol_subsidy_near_czech_border',0.04). % [2],[5]
parsed_money_received('service_stations_near_czech_border','temporary_petrol_subsidy_near_czech_border',100000). % [7],[8]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('temporary_petrol_subsidy_near_czech_border', 'operators_within_20km', 'maintain_price_competitiveness'). % [2],[3],[4],[6]
compensation_for_obligation('temporary_petrol_subsidy_near_czech_border', 'operators_20_40km', 'maintain_price_competitiveness'). % [2],[3],[5],[6]
compensation_for_obligation('temporary_petrol_subsidy_near_czech_border', 'service_stations_near_czech_border', 'maintain_price_competitiveness'). % [2],[3],[6],[7]
compensation_params_predefined('temporary_petrol_subsidy_near_czech_border', 'maintain_price_competitiveness'). % [2],[3],[4],[5],[6],[7]
compensation_params_objective('temporary_petrol_subsidy_near_czech_border', 'maintain_price_competitiveness'). % [4],[5],[6],[7]
clearly_defined('maintain_price_competitiveness'). % [3],[4],[5],[6],[7]

% 4_act_of_private_nature
economic_objective_similar_to_private_investor('temporary_petrol_subsidy_near_czech_border'). % [2],[3],[4],[5],[6],[7],[8]

% 5_act_of_public_nature
monetary_subsidy('temporary_petrol_subsidy_near_czech_border'). % [2],[3],[4],[5],[6],[7],[8]
tax_related('increase_excise_duties_on_petrol'). % [1],[2]

% 6_MEO
measure_financial_terms('temporary_petrol_subsidy_near_czech_border', 100000). % [7],[8]

% 7_direct_or_indirect_advantage
direct_targeting('temporary_petrol_subsidy_near_czech_border','service_stations_near_czech_border'). % [3]
direct_targeting('temporary_petrol_subsidy_near_czech_border','operators_within_20km'). % [4]
direct_targeting('temporary_petrol_subsidy_near_czech_border','operators_20_40km'). % [5]
secondary_effects('temporary_petrol_subsidy_near_czech_border','operators_within_20km','multiple_payments_for_multiple_stations'). % [6]
secondary_effects('temporary_petrol_subsidy_near_czech_border','operators_20_40km','multiple_payments_for_multiple_stations'). % [6]
channeled_to_group_of_undertakings('service_stations_near_czech_border','oil_companies_paid_only_remaining_part_of_discount'). % [12],[9],[11]
channeled_to_group_of_undertakings('operators_within_20km','oil_companies_paid_only_remaining_part_of_discount'). % [4],[12],[11]
channeled_to_group_of_undertakings('operators_20_40km','oil_companies_paid_only_remaining_part_of_discount'). % [5],[12],[11]

% 8_active_transfer_of_resources
active_resource_flow('temporary_petrol_subsidy_near_czech_border','state_budget'). % [3],[6],[8],[12]
resource_of_central_state_entity('state_budget'). % [8]
resource_of_private_body('oil_companies'). % [9],[11],[12]

% 9_foregoing_revenue
achieving_policy_objective('temporary_petrol_subsidy_near_czech_border', 'maintain_price_competitiveness'). % [3]

% 10_imputability
adopted_or_administered_by('increase_excise_duties_on_petrol', 'Polish_Government'). % [1]
adopted_or_administered_by('temporary_petrol_subsidy_near_czech_border', 'Polish_Government'). % [2],[3],[8]
public_state_authority('Polish_Government', 'Poland'). % [1]
