% 1_financial_activa
parsed_money_received('kritinet s.a.', 'grant_no_27_2025', 42000000). % [5],[6],[7],[10]
parsed_assets_gained('kritinet s.a.', 'grant_no_27_2025', 42000000). % [5],[11]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('grant_no_27_2025'). % [10]

% 5_act_of_public_nature
monetary_subsidy('grant_no_27_2025'). % [1],[5],[6],[7],[10]

% 6_MEO
measure_financial_terms('grant_no_27_2025', 42000000). % [5],[6],[7],[10]

% 7_direct_or_indirect_advantage
direct_targeting('grant_no_27_2025', 'kritinet s.a.'). % [1],[2],[8],[10]

% 8_active_transfer_of_resources
active_resource_flow('grant_no_27_2025', 'erdf_contribution'). % [6],[10]
active_resource_flow('grant_no_27_2025', 'greek_state_budget_contribution'). % [7],[10]
resource_from_international_or_union_fund('erdf_contribution', 'erdf'). % [6]
usage_discretion_by_national_authorities('erdf_contribution', 'erdf'). % [4],[6]
resource_of_central_state_entity('greek_state_budget_contribution'). % [7]

% 9_foregoing_revenue
selection_process_for_measure('grant_no_27_2025', 'direct_administrative_designation'). % [8],[9]
qualitative_selection_criteria('direct_administrative_designation'). % [9]
achieving_policy_objective('grant_no_27_2025', 'digital_development_and_regional_cohesion'). % [3],[4]

% 10_imputability
adopted_or_administered_by('grant_no_27_2025', 'greek_ministry_of_digital_governance'). % [1],[8]
public_state_authority('greek_ministry_of_digital_governance', 'greece'). % [1]
