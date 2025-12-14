% 1_financial_activa
parsed_money_received('KritiNet S.A.', 'grant_27_2025_erdf_component', 30000000). % [1],[6],[10]
parsed_money_received('KritiNet S.A.', 'grant_27_2025_state_budget_component', 12000000). % [1],[7],[10]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('grant_27_2025_erdf_component'). % [6],[10]
monetary_subsidy('grant_27_2025_state_budget_component'). % [7],[10]

% 6_MEO
textual_evidence_worse_financial_terms('grant_27_2025_erdf_component'). % [10],[12]
textual_evidence_worse_financial_terms('grant_27_2025_state_budget_component'). % [10],[12]
textual_evidence_worse_nonfinancial_terms('grant_27_2025_erdf_component'). % [13],[14],[15]
textual_evidence_worse_nonfinancial_terms('grant_27_2025_state_budget_component'). % [13],[14],[15]

% 7_direct_or_indirect_advantage
direct_targeting('grant_27_2025_erdf_component', 'KritiNet S.A.'). % [2],[6],[7],[8],[10]
direct_targeting('grant_27_2025_state_budget_component', 'KritiNet S.A.'). % [2],[6],[7],[8],[10]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'ownership_of_infrastructure'). % [11]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'ownership_of_infrastructure'). % [11]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'authorization_to_operate_for_minimum_10_years'). % [11]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'authorization_to_operate_for_minimum_10_years'). % [11]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'no_clawback_mechanism'). % [12]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'no_clawback_mechanism'). % [12]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'no_wholesale_access_obligation'). % [13]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'no_wholesale_access_obligation'). % [13]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'unspecified_pricing_access_terms_and_performance_benchmarks'). % [14]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'unspecified_pricing_access_terms_and_performance_benchmarks'). % [14]
secondary_effects('grant_27_2025_erdf_component', 'KritiNet S.A.', 'no_monitoring_structure_or_public_service_obligations'). % [15]
secondary_effects('grant_27_2025_state_budget_component', 'KritiNet S.A.', 'no_monitoring_structure_or_public_service_obligations'). % [15]

% 8_active_transfer_of_resources
active_resource_flow('grant_27_2025_erdf_component', erdf_funds_grant27_2025). % [6],[10]
resource_from_international_or_union_fund(erdf_funds_grant27_2025, 'ERDF'). % [6]
usage_discretion_by_national_authorities(erdf_funds_grant27_2025, 'ERDF'). % [6],[8]
active_resource_flow('grant_27_2025_state_budget_component', state_budget_funds_grant27_2025). % [7],[10]
resource_of_central_state_entity(state_budget_funds_grant27_2025). % [7]

% 9_foregoing_revenue
selection_process_for_measure('grant_27_2025_erdf_component', 'direct_administrative_designation'). % [8]
selection_process_for_measure('grant_27_2025_state_budget_component', 'direct_administrative_designation'). % [8]
qualitative_selection_criteria('direct_administrative_designation'). % [9]
achieving_policy_objective('grant_27_2025_erdf_component', 'digital_development'). % [4]
achieving_policy_objective('grant_27_2025_state_budget_component', 'digital_development'). % [4]
achieving_policy_objective('grant_27_2025_erdf_component', 'regional_cohesion'). % [4]
achieving_policy_objective('grant_27_2025_state_budget_component', 'regional_cohesion'). % [4]
achieving_policy_objective('grant_27_2025_erdf_component', 'connectivity_in_underserved_rural_and_mountainous_areas'). % [3]
achieving_policy_objective('grant_27_2025_state_budget_component', 'connectivity_in_underserved_rural_and_mountainous_areas'). % [3]

% 10_imputability
adopted_or_administered_by('grant_27_2025_erdf_component', 'Greek Ministry of Digital Governance'). % [1],[6]
adopted_or_administered_by('grant_27_2025_state_budget_component', 'Greek Ministry of Digital Governance'). % [1],[7]
public_state_authority('Greek Ministry of Digital Governance', 'Greece'). % [1]
was_designated('KritiNet S.A.', 'grant_27_2025_erdf_component', 'Greek Ministry of Digital Governance'). % [8]
was_designated('KritiNet S.A.', 'grant_27_2025_state_budget_component', 'Greek Ministry of Digital Governance'). % [8]
