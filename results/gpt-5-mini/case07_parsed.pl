% 1_financial_activa
parsed_costs_relieved_monetary_obligations('cargo_person_rail_sro', 'tax_settlement_2013', 175000000). % [8],[15]
textual_evidence_of_improved_financial_situation('cargo_person_rail_sro', 'tax_settlement_2013'). % [12],[13],[14]

% 2_financial_passiva
parsed_other_liabilities_incurred('cargo_person_rail_sro','tax_settlement_2013',75000000). % [9]

% 3_altmark
% Nothing

% 4_act_of_private_nature
waiver_private_law_claims('tax_settlement_2013'). % [8],[15]
converting_private_law_claims('tax_settlement_2013'). % [9]
is_shareholder_of('slovak_republic', 'cargo_person_rail_sro'). % [2]
economic_objective_similar_to_private_investor('tax_settlement_2013'). % [11],[12],[13],[14]

% 5_act_of_public_nature
monetary_subsidy('tax_settlement_2013'). % [1],[8],[15]
tax_related('tax_settlement_2013'). % [1],[8],[9]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('bank1_report','investment_bank_1','tax_settlement_2013'). % [12],[13],[14]
expert_evaluation_on_measure_or_similar_action('bank2_report','investment_bank_2','tax_settlement_2013'). % [12],[13],[14]
ex_ante_evaluation('bank1_report','tax_settlement_2013'). % [12],[13],[14]
ex_ante_evaluation('bank2_report','tax_settlement_2013'). % [12],[13],[14]
measure_financial_terms('tax_settlement_2013',175000000). % [8],[15]

% 7_direct_or_indirect_advantage
direct_targeting('tax_settlement_2013','cargo_person_rail_sro'). % [1],[8],[9],[10],[11]
secondary_effects('tax_settlement_2013','cargo_person_rail_sro','preserve_viability'). % [10],[11]
secondary_effects('tax_settlement_2013','cargo_person_rail_sro','return_to_sustained_profitability_within_two_years'). % [12],[13],[14]
channeled_to_identifiable_undertaking_s('cargo_person_rail_sro','write_off_175000000'). % [8],[15]
channeled_to_identifiable_undertaking_s('cargo_person_rail_sro','debt_repayment_deferral_75000000_over_5_years'). % [9]

% 8_active_transfer_of_resources
active_resource_flow('tax_settlement_2013', 'write_off_175000000'). % [8],[15]
resource_of_central_state_entity('write_off_175000000'). % [15]

% 9_foregoing_revenue
exemptions_reductions_taxes('tax_settlement_2013'). % [8],[15]
achieving_policy_objective('tax_settlement_2013','preserve_viability'). % [11],[10],[12]
revenue_loss_is_justified_by_policy('return_to_sustained_profitability_within_two_years'). % [11],[12],[13],[14],[15]

% 10_imputability
adopted_or_administered_by('tax_settlement_2013','slovak_republic'). % [1],[8]
public_state_authority('slovak_republic','slovakia'). % [1]
public_undertaking_of_state('cargo_person_rail_sro','slovakia'). % [2]
is_public_undertaking('cargo_person_rail_sro'). % [2]
organic_link_with_state_or_intra_state('cargo_person_rail_sro'). % [2]
measure_scope_indicates_involvement('cargo_person_rail_sro','tax_settlement_2013'). % [10],[11]
