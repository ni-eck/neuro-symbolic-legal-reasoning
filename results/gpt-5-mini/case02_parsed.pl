% 1_financial_activa
parsed_costs_relieved_monetary_obligations('XCA','permit_NO_134',7543234). % [1],[2],[3],[7]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_params_predefined('permit_NO_134','corporate_income_tax_exemption'). % [1],[3],[4]
compensation_params_transparent('permit_NO_134','corporate_income_tax_exemption'). % [4],[6],[7]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('permit_NO_134'). % [3],[7]
tax_related('permit_NO_134'). % [3]

% 6_MEO
measure_financial_terms('permit_NO_134', 7543234). % [7]
measure_nonfinancial_terms('permit_NO_134', 69999999). % [4]

% 7_direct_or_indirect_advantage
direct_targeting('permit_NO_134','XCA'). % [1],[2],[3]

% 8_active_transfer_of_resources
firm_and_concrete_commitment_to_make_resources_available_at_later_point('permit_NO_134', 'corporate_income_tax_exemption'). % [1],[2],[3]
resource_of_central_state_entity('corporate_income_tax_exemption'). % [1],[3]

% 9_foregoing_revenue
exemptions_reductions_taxes('permit_NO_134'). % [1],[3]

% 10_imputability
adopted_or_administered_by('permit_NO_134','Portuguese_Ministry_of_Economy'). % [1]
public_state_authority('Portuguese_Ministry_of_Economy','Portugal'). % [1]
