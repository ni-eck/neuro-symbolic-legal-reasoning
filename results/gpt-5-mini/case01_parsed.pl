% 1_financial_activa
parsed_money_received('xca_lda','direct_grant_sines_2015',15983927.91). % [1],[2],[4]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('direct_grant_sines_2015'). % [1],[2],[4]

% 6_MEO
measure_financial_terms('direct_grant_sines_2015', 15983927.91). % [1]

% 7_direct_or_indirect_advantage
direct_targeting('direct_grant_sines_2015', 'xca_lda'). % [1],[2]

% 8_active_transfer_of_resources
active_resource_flow('direct_grant_sines_2015', 'portuguese_general_state_budget'). % [1],[4]
resource_of_central_state_entity('portuguese_general_state_budget'). % [4]

% 9_foregoing_revenue
% Nothing

% 10_imputability
adopted_or_administered_by('direct_grant_sines_2015','portuguese_ministry_of_economy'). % [1]
public_state_authority('portuguese_ministry_of_economy','portugal'). % [1]
