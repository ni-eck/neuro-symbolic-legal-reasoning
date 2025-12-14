% 1_financial_activa
parsed_money_received('Dansk Luftfart A/S', 'capital_injection_5_nov_2020', 2600000000). % [3],[5],[6],[11],[12]
parsed_money_received('Denmark', 'recovery_8_nov_2022', 935200000). % [17],[18],[19]
parsed_money_received('Denmark', 'recovery_20_nov_2024', 211500000). % [20]

% 2_financial_passiva
parsed_money_spent('Dansk Luftfart A/S', 'recovery_8_nov_2022', 935200000). % [17],[18],[19]
parsed_money_spent('Dansk Luftfart A/S', 'recovery_20_nov_2024', 211500000). % [20]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('capital_injection_5_nov_2020'). % [5],[6],[11]
is_shareholder_of('Denmark','Dansk Luftfart A/S'). % [4]
follows_shareholder_objectives('Denmark','capital_injection_5_nov_2020'). % [3],[7]
fallback_act_of_economic_nature('recovery_8_nov_2022'). % [17],[18],[19]
fallback_act_of_economic_nature('recovery_20_nov_2024'). % [20]

% 5_act_of_public_nature
monetary_subsidy('capital_injection_5_nov_2020'). % [3],[5],[6],[11],[12]
further_option_of_public_authority('recovery_8_nov_2022'). % [17],[18],[19]
further_option_of_public_authority('recovery_20_nov_2024'). % [20]

% 6_MEO
measure_financial_terms('capital_injection_5_nov_2020', 2600000000). % [5],[6],[11],[12]
measure_financial_terms('recovery_8_nov_2022', 935200000). % [17],[18],[19]
measure_financial_terms('recovery_20_nov_2024', 211500000). % [20]
expert_evaluation_on_measure_or_similar_action('experts_doubt', 'experts', 'capital_injection_5_nov_2020'). % [13],[14],[15],[16]
ex_ante_evaluation('experts_doubt', 'capital_injection_5_nov_2020'). % [13],[14],[15],[16]
not_in_favour_of_measure_or_similar_action('experts_doubt', 'capital_injection_5_nov_2020'). % [13],[14],[15],[16]
textual_evidence_worse_financial_terms('capital_injection_5_nov_2020'). % [15],[16]

% 7_direct_or_indirect_advantage
direct_targeting('capital_injection_5_nov_2020','Dansk Luftfart A/S'). % [3],[5],[6],[11]
direct_targeting('recovery_8_nov_2022','Dansk Luftfart A/S'). % [17],[18],[19]
direct_targeting('recovery_20_nov_2024','Dansk Luftfart A/S'). % [20]

% 8_active_transfer_of_resources
active_resource_flow('capital_injection_5_nov_2020','Danish_general_budget'). % [5],[6],[11],[12]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('capital_injection_5_nov_2020','Danish_general_budget'). % [6],[11],[12]
resource_of_central_state_entity('Danish_general_budget'). % [12]
resource_of_body_appointed_by_state_to_administer_measure('Statens_Administration'). % [11]
active_resource_flow('recovery_8_nov_2022','Dansk Luftfart A/S'). % [17],[18],[19]
resource_of_public_undertaking('Dansk Luftfart A/S'). % [4]
active_resource_flow('recovery_20_nov_2024','Dansk Luftfart A/S'). % [20]

% 9_foregoing_revenue
achieving_policy_objective('capital_injection_5_nov_2020', 'overcome_liquidity_shortfall_due_to_covid19'). % [5],[6],[7],[8]

% 10_imputability
adopted_or_administered_by('capital_injection_5_nov_2020','Statens_Administration'). % [6],[11],[12],[5]
was_designated('Statens_Administration','capital_injection_5_nov_2020','Denmark'). % [6],[11],[12]
public_state_authority('Denmark','Denmark'). % [6],[12]
public_state_authority('Statens_Administration','Denmark'). % [11]
public_undertaking_of_state('Dansk Luftfart A/S','Denmark'). % [4]
organic_link_with_state_or_intra_state('Dansk Luftfart A/S'). % [4]
measure_scope_indicates_involvement('Dansk Luftfart A/S','capital_injection_5_nov_2020'). % [7],[8],[9],[10]
adopted_or_administered_by('recovery_8_nov_2022','Denmark'). % [17],[18],[19]
adopted_or_administered_by('recovery_20_nov_2024','Denmark'). % [20]
