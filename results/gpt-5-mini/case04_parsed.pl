% 1_financial_activa
parsed_money_received('dansk_luftfart_as', 'capital_injection_2020_11_05', 250000000). % [3],[5],[6],[11],[12]

% 2_financial_passiva
parsed_money_spent('dansk_luftfart_as','capital_injection_2020_11_05', 935200000). % [17],[18],[19]
parsed_money_spent('dansk_luftfart_as','capital_injection_2020_11_05', 211500000). % [20]

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('capital_injection_2020_11_05'). % [5],[6],[11],[12]
is_shareholder_of('danish_state', 'dansk_luftfart_as'). % [4]
follows_shareholder_objectives('danish_state', 'capital_injection_2020_11_05'). % [6],[7]

% 5_act_of_public_nature
monetary_subsidy('capital_injection_2020_11_05'). % [3],[5],[6],[11],[12]

% 6_MEO
measure_financial_terms('capital_injection_2020_11_05', 250000000). % [5],[6]
expert_evaluation_on_measure_or_similar_action('expert_assessment_covid', 'experts', 'capital_injection_2020_11_05'). % [13],[14],[15],[16]
ex_ante_evaluation('expert_assessment_covid', 'capital_injection_2020_11_05'). % [13],[14],[15],[16]
not_in_favour_of_measure_or_similar_action('expert_assessment_covid', 'capital_injection_2020_11_05'). % [13],[14],[15],[16]
textual_evidence_worse_financial_terms('capital_injection_2020_11_05'). % [15],[16]
textual_evidence_liquidation_or_reduction_more_economic('capital_injection_2020_11_05'). % [14],[15],[16]

% 7_direct_or_indirect_advantage
direct_targeting('capital_injection_2020_11_05','dansk_luftfart_as'). % [3],[5],[6],[7],[11]

% 8_active_transfer_of_resources
active_resource_flow('capital_injection_2020_11_05','general_budget_of_danish_state'). % [5],[6],[12]
resource_of_central_state_entity('general_budget_of_danish_state'). % [12]
resource_of_body_appointed_by_state_to_administer_measure('statens_administration'). % [11]
resource_of_central_state_entity('statens_administration'). % [11]

% 9_foregoing_revenue
achieving_policy_objective('capital_injection_2020_11_05', 'overcome_liquidity_shortfall_covid'). % [6],[7],[8]

% 10_imputability
adopted_or_administered_by('capital_injection_2020_11_05','statens_administration'). % [11]
public_state_authority('statens_administration','denmark'). % [11]
public_state_authority('danish_state','denmark'). % [3],[12]
is_public_undertaking('dansk_luftfart_as'). % [4]
public_undertaking_of_state('dansk_luftfart_as','denmark'). % [4]
decision_dependence_on_state_or_intra_state('dansk_luftfart_as','capital_injection_2020_11_05'). % [6],[7]
organic_link_with_state_or_intra_state('dansk_luftfart_as'). % [4]
was_designated('statens_administration','capital_injection_2020_11_05','danish_state'). % [11],[6]
