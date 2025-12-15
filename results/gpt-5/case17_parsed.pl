% 1_financial_activa
parsed_money_received('KritiNet', 'grant_no_27_2025', 42000000). % [1],[6],[7],[10]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('grant_no_27_2025'). % [1],[10]

% 6_MEO
textual_evidence_worse_financial_terms('grant_no_27_2025'). % [10],[12]
textual_evidence_worse_nonfinancial_terms('grant_no_27_2025'). % [13],[14],[15]

% 7_direct_or_indirect_advantage
direct_targeting('grant_no_27_2025', 'KritiNet'). % [1],[2],[8],[10]

% 8_active_transfer_of_resources
active_resource_flow('grant_no_27_2025', 'erdf_contribution'). % [10],[6]
active_resource_flow('grant_no_27_2025', 'greek_state_budget_contribution'). % [10],[7]
resource_from_international_or_union_fund('erdf_contribution', 'ERDF'). % [6]
resource_of_central_state_entity('greek_state_budget_contribution'). % [7]
usage_discretion_by_national_authorities('erdf_contribution', 'ERDF'). % [6]

% 9_foregoing_revenue
selection_process_for_measure('grant_no_27_2025', 'direct_administrative_designation'). % [8]
qualitative_selection_criteria('direct_administrative_designation'). % [9]
achieving_policy_objective('grant_no_27_2025', 'digital_development_and_regional_cohesion'). % [4]
achieving_policy_objective('grant_no_27_2025', 'connectivity_underserved_rural_mountainous_areas'). % [3]

% 10_imputability
adopted_or_administered_by('grant_no_27_2025', 'greek_ministry_of_digital_governance'). % [1]
public_state_authority('greek_ministry_of_digital_governance', 'greece'). % [1]
was_designated('KritiNet', 'grant_no_27_2025', 'greek_ministry_of_digital_governance'). % [8]
