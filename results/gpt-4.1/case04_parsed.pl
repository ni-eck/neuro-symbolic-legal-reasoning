% 1_financial_activa
parsed_money_received('dansk_luftfart_a_s', 'danish_state_payment_2020', 250000000). % [5]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('danish_state_payment_2020'). % [7]
is_shareholder_of('danish_state', 'dansk_luftfart_a_s'). % [4]

% 5_act_of_public_nature
monetary_subsidy('danish_state_payment_2020'). % [5],[6],[11],[12]

% 6_MEO
measure_financial_terms('danish_state_payment_2020', 250000000). % [5]
textual_evidence_worse_financial_terms('danish_state_payment_2020'). % [16]
expert_evaluation_on_measure_or_similar_action('liquidity_remedy_expert_eval', 'experts', 'danish_state_payment_2020'). % [14]
ex_ante_evaluation('liquidity_remedy_expert_eval', 'danish_state_payment_2020'). % [14]
not_in_favour_of_measure_or_similar_action('liquidity_remedy_expert_eval', 'danish_state_payment_2020'). % [14]
expected_return('danish_state_payment_2020', 0). % [14]
textual_evidence_liquidation_or_reduction_more_economic('danish_state_payment_2020'). % [16]

% 7_direct_or_indirect_advantage
direct_targeting('danish_state_payment_2020', 'dansk_luftfart_a_s'). % [3],[5]

% 8_active_transfer_of_resources
active_resource_flow('danish_state_payment_2020', 'danish_state_budget'). % [5],[6],[11],[12]
resource_of_central_state_entity('danish_state_budget'). % [12]

% 9_foregoing_revenue
% Nothing

% 10_imputability
adopted_or_administered_by('danish_state_payment_2020', 'danish_state'). % [6],[11]
public_state_authority('danish_state', 'denmark'). % [12]
is_public_undertaking('dansk_luftfart_a_s'). % [4]
public_undertaking_of_state('dansk_luftfart_a_s', 'denmark'). % [4]
decision_dependence_on_state_or_intra_state('dansk_luftfart_a_s', 'danish_state_payment_2020'). % [4],[6],[7]
measure_scope_indicates_involvement('danish_state', 'danish_state_payment_2020'). % [8],[12]
organic_link_with_state_or_intra_state('dansk_luftfart_a_s'). % [4]
integrated_into_public_administration('dansk_luftfart_a_s'). % [4]
strategic_sector('dansk_luftfart_a_s'). % [4]
not_competing_under_normal_conditions('dansk_luftfart_a_s'). % [16]
