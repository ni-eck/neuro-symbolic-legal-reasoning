% 1_financial_activa
parsed_money_received('KritiNet S.A.','grant_27_2025',42000000). % [1],[6],[7],[10]
parsed_assets_gained('KritiNet S.A.','grant_27_2025',42000000). % [5],[11],[10]
textual_evidence_of_improved_financial_situation('KritiNet S.A.','grant_27_2025'). % [10],[6],[7]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('grant_27_2025'). % [1],[10],[6],[7]
economic_objective_similar_to_private_investor('grant_27_2025'). % [11],[10],[13],[14]

% 5_act_of_public_nature
monetary_subsidy('grant_27_2025'). % [1],[2],[5],[6],[7],[10]
granting_access_to_public_domain_resources_special_or_exclusive_rights('grant_27_2025'). % [11],[13]

% 6_MEO
measure_financial_terms('grant_27_2025', 42000000). % [5],[6],[7],[10]
measure_nonfinancial_terms('grant_27_2025', 10). % [11]

% 7_direct_or_indirect_advantage
direct_targeting('grant_27_2025','KritiNet S.A.'). % [1],[2]
channeled_to_identifiable_undertaking_s('KritiNet S.A.','non_repayable_capital_grant_42000000'). % [5],[6],[7],[10]
secondary_effects('grant_27_2025','KritiNet S.A.','ownership_and_commercial_operation_for_10_years'). % [10],[11]
secondary_effects('grant_27_2025','KritiNet S.A.','no_clawback_and_no_wholesale_access_obligations'). % [12],[13],[14]

% 8_active_transfer_of_resources
active_resource_flow('grant_27_2025','erdf_30000000'). % [6]
active_resource_flow('grant_27_2025','greek_state_budget_12000000'). % [7]
active_resource_flow('grant_27_2025','non_repayable_capital_grant_42000000'). % [10],[5]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('grant_27_2025','erdf_30000000'). % [1],[6]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('grant_27_2025','greek_state_budget_12000000'). % [1],[7]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('grant_27_2025','non_repayable_capital_grant_42000000'). % [1],[10],[5]
resource_from_international_or_union_fund('erdf_30000000','ERDF'). % [6]
resource_of_central_state_entity('greek_state_budget_12000000'). % [7]

% 9_foregoing_revenue
selection_process_for_measure('grant_27_2025','direct_administrative_designation'). % [8]
qualitative_selection_criteria('direct_administrative_designation'). % [8],[9]
achieving_policy_objective('grant_27_2025','digital_development_and_regional_cohesion'). % [3],[4]

% 10_imputability
adopted_or_administered_by('grant_27_2025', 'Greek Ministry of Digital Governance'). % [1],[8]
was_designated('KritiNet S.A.', 'grant_27_2025', 'Greek Ministry of Digital Governance'). % [8],[2]
public_state_authority('Greek Ministry of Digital Governance', 'Greece'). % [1]
measure_scope_indicates_involvement('KritiNet S.A.', 'grant_27_2025'). % [3],[4]
