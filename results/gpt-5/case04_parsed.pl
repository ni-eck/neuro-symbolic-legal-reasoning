% 1_financial_activa
parsed_money_received('Dansk Luftfart A/S', 'payment_2020_11_05', 2600000000). % [3],[4],[5],[6]

% 2_financial_passiva
parsed_money_spent('Dansk Luftfart A/S', 'payment_2020_11_05', 935200000). % [17],[18],[19]
parsed_money_spent('Dansk Luftfart A/S', 'payment_2020_11_05', 211500000). % [20]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('payment_2020_11_05'). % [5],[7]
is_shareholder_of('Danish State', 'Dansk Luftfart A/S'). % [4]

% 5_act_of_public_nature
monetary_subsidy('payment_2020_11_05'). % [5],[6],[11],[12],[13]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('eval_2020_winter_doubts', 'experts', 'payment_2020_11_05'). % [14],[15],[16]
ex_ante_evaluation('eval_2020_winter_doubts', 'payment_2020_11_05'). % [14],[15]
not_in_favour_of_measure_or_similar_action('eval_2020_winter_doubts', 'payment_2020_11_05'). % [14],[15],[16]
textual_evidence_worse_financial_terms('payment_2020_11_05'). % [16]

% 7_direct_or_indirect_advantage
direct_targeting('payment_2020_11_05', 'Dansk Luftfart A/S'). % [3],[5],[6],[11],[12]

% 8_active_transfer_of_resources
active_resource_flow('payment_2020_11_05', 'dk_state_budget_funds'). % [5],[6],[11],[12]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('payment_2020_11_05', 'dk_state_budget_funds'). % [6],[7]
resource_of_central_state_entity('dk_state_budget_funds'). % [11],[12]
active_resource_flow('recovery_2022_11_08', 'dl_repayment_funds_2022_11_08'). % [17],[18],[19]
resource_of_public_undertaking('dl_repayment_funds_2022_11_08'). % [17]
active_resource_flow('recovery_2024_11_20', 'dl_repayment_funds_2024_11_20'). % [20]
resource_of_public_undertaking('dl_repayment_funds_2024_11_20'). % [17],[20]

% 9_foregoing_revenue
achieving_policy_objective('payment_2020_11_05', 'overcome_covid19_liquidity_shortfall'). % [7],[8]

% 10_imputability
adopted_or_administered_by('payment_2020_11_05', 'Danish State'). % [6],[11],[12]
adopted_or_administered_by('payment_2020_11_05', 'Danish Agency for Public Finance and Management'). % [11]
public_state_authority('Danish State', 'Denmark'). % [-]
public_state_authority('Danish Agency for Public Finance and Management', 'Denmark'). % [-]
is_public_undertaking('Dansk Luftfart A/S'). % [4]
public_undertaking_of_state('Dansk Luftfart A/S', 'Denmark'). % [4]
adopted_or_administered_by('recovery_2022_11_08', 'Danish State'). % [17],[18],[19]
adopted_or_administered_by('recovery_2024_11_20', 'Danish State'). % [20]
