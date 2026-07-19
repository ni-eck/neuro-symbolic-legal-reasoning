% 1_financial_activa
parsed_costs_relieved_monetary_obligations('cargo_person_rail_sro', 'tax_debt_write_off', 175000000). % [3],[8]
textual_evidence_of_improved_financial_situation('cargo_person_rail_sro', 'tax_debt_write_off_and_restructuring'). % [11],[13],[14]

% 2_financial_passiva
parsed_money_spent('cargo_person_rail_sro', 'tax_debt_write_off', 75000000). % [9]

% 3_altmark
% Nothing

% 4_act_of_private_nature
is_shareholder_of('slovak_republic', 'cargo_person_rail_sro'). % [1],[2]
parent_is_shareholder_of('slovak_tax_authority', 'slovak_republic', 'cargo_person_rail_sro'). % [1],[2]
economic_objective_similar_to_private_investor('tax_debt_write_off_and_restructuring'). % [10],[11],[12],[13],[14]

% 5_act_of_public_nature
tax_related('tax_debt_write_off'). % [1],[3],[8],[9],[15]

% 6_MEO
measure_financial_terms('tax_debt_write_off', 175000000). % [8],[15]
expert_evaluation_on_measure_or_similar_action('viability_assessment', 'independent_investment_banks', 'tax_debt_write_off_and_restructuring'). % [12],[13],[14]

% 7_direct_or_indirect_advantage
direct_targeting('tax_debt_write_off', 'cargo_person_rail_sro'). % [8]
direct_targeting('tax_debt_write_off_and_restructuring', 'cargo_person_rail_sro'). % [10],[11]

% 8_active_transfer_of_resources
active_resource_flow('tax_debt_write_off', 'slovak_central_budget_resources'). % [8],[15]
resource_of_central_state_entity('slovak_central_budget_resources'). % [1],[15]

% 9_foregoing_revenue
exemptions_reductions_taxes('tax_debt_write_off'). % [8]
achieving_policy_objective('tax_debt_write_off_and_restructuring', 'preserve_company_viability'). % [10],[11]
revenue_loss_is_justified_by_policy('preserve_company_viability'). % [11],[13],[14],[15]

% 10_imputability
adopted_or_administered_by('tax_debt_write_off', 'slovak_tax_authority'). % [1],[8]
adopted_or_administered_by('tax_debt_write_off_and_restructuring', 'slovak_tax_authority'). % [1],[8],[10],[11]
public_state_authority('slovak_tax_authority', 'slovak_republic'). % [1]
is_public_undertaking('cargo_person_rail_sro'). % [2]
public_undertaking_of_state('cargo_person_rail_sro', 'slovak_republic'). % [2]
organic_link_with_state_or_intra_state('cargo_person_rail_sro'). % [2]
strategic_sector('cargo_person_rail_sro'). % [2]
