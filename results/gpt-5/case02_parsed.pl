% 1_financial_activa
parsed_costs_relieved_monetary_obligations('XCA Lda', 'permit_134_cit_exemption', 7543234). % [1],[2],[3],[7]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
tax_related('permit_134_cit_exemption'). % [3],[6],[7]
regulatory_capacity('permit_134_cit_exemption'). % [1],[2]

% 6_MEO
measure_financial_terms('permit_134_cit_exemption', 7543234). % [6],[7]

% 7_direct_or_indirect_advantage
direct_targeting('permit_134_cit_exemption', 'XCA Lda'). % [2],[3]
direct_targeting('permit_134_sez_operation', 'XCA Lda'). % [2]

% 8_active_transfer_of_resources
firm_and_concrete_commitment_to_make_resources_available_at_later_point('permit_134_cit_exemption', 'pt_cit_revenue'). % [3],[6],[7]
resource_of_central_state_entity('pt_cit_revenue'). % [1],[3]

% 9_foregoing_revenue
exemptions_reductions_taxes('permit_134_cit_exemption'). % [3],[7]

% 10_imputability
adopted_or_administered_by('permit_134_sez_operation', 'Portuguese Ministry of Economy'). % [1],[2]
adopted_or_administered_by('permit_134_cit_exemption', 'Portuguese Ministry of Economy'). % [1],[3]
public_state_authority('Portuguese Ministry of Economy', 'Portugal'). % [-]
