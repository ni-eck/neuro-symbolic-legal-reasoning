% 1_financial_activa
parsed_money_received('dansk_luftfart_a_s', 'capital_injection_2020', 250000000). % [3],[5],[6],[7],[11],[12]

% 2_financial_passiva
parsed_money_spent('dansk_luftfart_a_s', 'capital_injection_2020', 1146700000). % [17],[18],[19],[20]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('capital_injection_2020'). % [5],[7]
is_shareholder_of('danish_state', 'dansk_luftfart_a_s'). % [4]

% 5_act_of_public_nature
monetary_subsidy('capital_injection_2020'). % [5],[6],[7],[11],[12]

% 6_MEO
measure_financial_terms('capital_injection_2020', 250000000). % [5]
textual_evidence_worse_financial_terms('capital_injection_2020'). % [14],[15],[16]
expert_evaluation_on_measure_or_similar_action('expert_evaluation_capital_injection_2020', 'experts', 'capital_injection_2020'). % [14],[15],[16]
not_in_favour_of_measure_or_similar_action('expert_evaluation_capital_injection_2020', 'capital_injection_2020'). % [14],[15],[16]

% 7_direct_or_indirect_advantage
direct_targeting('capital_injection_2020', 'dansk_luftfart_a_s'). % [3],[5],[7],[11]

% 8_active_transfer_of_resources
active_resource_flow('capital_injection_2020', 'danish_state_budget_funds'). % [5],[6],[11],[12]
resource_of_central_state_entity('danish_state_budget_funds'). % [11],[12]

% 9_foregoing_revenue
achieving_policy_objective('capital_injection_2020', 'overcome_liquidity_shortfall_due_to_covid_19'). % [7],[8]

% 10_imputability
adopted_or_administered_by('capital_injection_2020', 'danish_state'). % [3],[5],[6]
adopted_or_administered_by('capital_injection_2020', 'danish_government'). % [6],[7]
adopted_or_administered_by('capital_injection_2020', 'danish_agency_for_public_finance_and_management'). % [11]
public_state_authority('danish_state', 'denmark'). % [3],[12]
public_state_authority('danish_government', 'denmark'). % [6],[7]
public_state_authority('danish_agency_for_public_finance_and_management', 'denmark'). % [11]
is_public_undertaking('dansk_luftfart_a_s'). % [4]
public_undertaking_of_state('dansk_luftfart_a_s', 'denmark'). % [4]
organic_link_with_state_or_intra_state('dansk_luftfart_a_s'). % [4]
strategic_sector('dansk_luftfart_a_s'). % [4]
