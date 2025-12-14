% 1_financial_activa
parsed_money_received('service_station_operators_near_czech_border', 'temporary_subsidy_petrol_border', 100000). % [7],[8]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_params_predefined('temporary_subsidy_petrol_border', 'maintain_price_competitiveness'). % [1],[3],[4],[5],[7]
compensation_params_objective('temporary_subsidy_petrol_border', 'maintain_price_competitiveness'). % [4],[5],[6]
compensation_params_transparent('temporary_subsidy_petrol_border', 'maintain_price_competitiveness'). % [3],[4],[5],[6],[7]

% 4_act_of_private_nature
fallback_act_of_economic_nature('temporary_subsidy_petrol_border'). % [3],[4],[5],[6],[7],[8]

% 5_act_of_public_nature
monetary_subsidy('temporary_subsidy_petrol_border'). % [3],[4],[5],[6],[7],[8]
tax_related('increase_excise_duties_petrol'). % [1],[2]

% 6_MEO
intervention_carried_at_same_time('temporary_subsidy_petrol_border', 'polish_government', 'oil_companies'). % [2],[11],[12]
measure_financial_terms('temporary_subsidy_petrol_border', 100000). % [7],[8]

% 7_direct_or_indirect_advantage
direct_targeting('temporary_subsidy_petrol_border','service_station_operators_near_czech_border'). % [3],[4],[5],[6]
secondary_effects('temporary_subsidy_petrol_border','service_station_operators_near_czech_border','maintain_price_competitiveness'). % [3]
channeled_to_identifiable_undertaking_s('oil_companies','covered_only_remaining_part_of_discount'). % [11],[12]
channeled_to_group_of_undertakings('service_station_operators_near_czech_border','multiple_payments_for_multiple_stations'). % [6]

% 8_active_transfer_of_resources
active_resource_flow('temporary_subsidy_petrol_border', 'state_budget'). % [3],[8]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('temporary_subsidy_petrol_border', 'state_budget'). % [3],[6],[8]
resource_of_central_state_entity('state_budget'). % [8]

% 9_foregoing_revenue
selection_process_for_measure('temporary_subsidy_petrol_border', 'location_based_eligibility'). % [3],[4],[5],[6]
achieving_policy_objective('temporary_subsidy_petrol_border', 'maintain_price_competitiveness'). % [3]

% 10_imputability
adopted_or_administered_by('increase_excise_duties_petrol','polish_government'). % [1]
adopted_or_administered_by('temporary_subsidy_petrol_border','polish_government'). % [1]
public_state_authority('polish_government','poland'). % [1]
