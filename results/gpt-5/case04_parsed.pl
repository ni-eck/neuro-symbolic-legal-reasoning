% 1_financial_activa
parsed_money_received('Dansk Luftfart A/S', 'payment_5nov2020', 2600000000). % [3],[5]

% 2_financial_passiva
parsed_money_spent('Dansk Luftfart A/S', 'payment_5nov2020', 935200000). % [17],[18],[19]
parsed_money_spent('Dansk Luftfart A/S', 'payment_5nov2020', 211500000). % [20]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('payment_5nov2020'). % [7]
is_shareholder_of('Danish State', 'Dansk Luftfart A/S'). % [4]

% 5_act_of_public_nature
monetary_subsidy('payment_5nov2020'). % [5],[11],[13]

% 6_MEO
measure_financial_terms('payment_5nov2020', 250000000). % [5]
textual_evidence_worse_financial_terms('payment_5nov2020'). % [14],[15],[16]
expert_evaluation_on_measure_or_similar_action('eval_experts_2020', 'experts', 'payment_5nov2020'). % [14],[15]
ex_ante_evaluation('eval_experts_2020', 'payment_5nov2020'). % [13],[14]
not_in_favour_of_measure_or_similar_action('eval_experts_2020', 'payment_5nov2020'). % [14],[15],[16]

% 7_direct_or_indirect_advantage
direct_targeting('payment_5nov2020', 'Dansk Luftfart A/S'). % [3],[5],[6]

% 8_active_transfer_of_resources
active_resource_flow('payment_5nov2020', 'dk_state_budget'). % [5],[6]
resource_of_central_state_entity('dk_state_budget'). % [11],[12]

% 9_foregoing_revenue
achieving_policy_objective('payment_5nov2020', 'covid19_liquidity_shortfall'). % [7],[8],[9]

% 10_imputability
adopted_or_administered_by('payment_5nov2020', 'Danish State'). % [6],[7],[11],[12]
public_state_authority('Danish State', 'Denmark'). % [11],[12]
adopted_or_administered_by('payment_5nov2020', 'Danish Agency for Public Finance and Management'). % [11]
public_state_authority('Danish Agency for Public Finance and Management', 'Denmark'). % [11]
adopted_or_administered_by('payment_5nov2020', 'Danish Government'). % [6],[7]
public_state_authority('Danish Government', 'Denmark'). % [6],[7]
is_public_undertaking('Dansk Luftfart A/S'). % [4]
public_undertaking_of_state('Dansk Luftfart A/S', 'Denmark'). % [4]
