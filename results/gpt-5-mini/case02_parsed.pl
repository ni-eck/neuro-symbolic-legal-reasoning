% 1_financial_activa
parsed_costs_relieved_monetary_obligations('XCA Lda','permit_no_134',7543234). % [2],[3],[7]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
fallback_act_of_economic_nature('permit_no_134'). % [1],[2],[3],[4],[5],[6],[7]

% 5_act_of_public_nature
tax_related('permit_no_134'). % [1],[3]
monetary_subsidy('permit_no_134'). % [3],[7]
granting_access_to_public_domain_resources_special_or_exclusive_rights('permit_no_134'). % [1],[2]

% 6_MEO
measure_financial_terms('permit_no_134', 7543234). % [7]
measure_financial_terms('permit_no_134', 69999999). % [4]

% 7_direct_or_indirect_advantage
direct_targeting('permit_no_134','XCA Lda'). % [2],[3]
secondary_effects('permit_no_134','XCA Lda','corporate_income_tax_exemption'). % [3],[7]
channeled_to_identifiable_undertaking_s('XCA Lda','corporate_income_tax_exemption_7543234'). % [7]

% 8_active_transfer_of_resources
active_resource_flow('permit_no_134','corporate_income_tax_exemption_7543234'). % [1],[2],[3],[7]
resource_of_central_state_entity('corporate_income_tax_exemption_7543234'). % [1],[3],[7]

% 9_foregoing_revenue
exemptions_reductions_taxes('permit_no_134'). % [1],[2],[3]

% 10_imputability
adopted_or_administered_by('permit_no_134','Portuguese_Ministry_of_Economy'). % [1]
public_state_authority('Portuguese_Ministry_of_Economy','Portugal'). % [1]
