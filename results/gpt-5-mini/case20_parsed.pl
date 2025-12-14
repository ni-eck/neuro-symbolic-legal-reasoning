% 1_financial_activa
textual_evidence_of_improved_financial_situation('commercial_shipping_operators','marine_fuel_excise_exemption'). % [1],[3],[10]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
fallback_act_of_economic_nature('marine_fuel_excise_exemption'). % [1],[3]

% 5_act_of_public_nature
tax_related('marine_fuel_excise_exemption'). % [1],[3]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('marine_fuel_excise_exemption', 'commercial_shipping_operators'). % [1],[3]
secondary_effects('marine_fuel_excise_exemption', 'commercial_shipping_operators', 'reduced_marine_fuel_cost'). % [3],[10]
channeled_to_group_of_undertakings('commercial_shipping_operators', 'reduced_marine_fuel_cost'). % [10]

% 8_active_transfer_of_resources
resource_of_central_state_entity('marine_fuel_excise_revenue'). % [1],[3]

% 9_foregoing_revenue
exemptions_reductions_taxes('marine_fuel_excise_exemption'). % [1],[2],[3]
achieving_policy_objective('marine_fuel_excise_exemption','transposition_of_directive_2003_96_ec'). % [4],[5]
achieving_policy_objective('marine_fuel_excise_exemption','compliance_with_international_maritime_obligations'). % [8],[9]

% 10_imputability
adopted_or_administered_by('marine_fuel_excise_exemption','hungarian_national_assembly'). % [1],[2],[3]
public_state_authority('hungarian_national_assembly','hungary'). % [1]
is_implementation_of('marine_fuel_excise_exemption','transposition_of_directive_2003_96_ec'). % [4]
no_member_state_discretion('transposition_of_directive_2003_96_ec'). % [6]
