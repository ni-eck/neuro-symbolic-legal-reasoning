% 1_financial_activa
parsed_money_received('belectro s.a.', 'reimbursement_of_inspection_charges', 3500000). % [14]

% 2_financial_passiva
parsed_money_spent('belectro s.a.', 'reimbursement_of_inspection_charges', 3500000). % [1],[14]

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
reimbursement_of_illegally_levied_charges_or_dues('reimbursement_of_inspection_charges'). % [12],[13],[14]

% 6_MEO
measure_financial_terms('reimbursement_of_inspection_charges', 3500000). % [14]

% 7_direct_or_indirect_advantage
direct_targeting('reimbursement_of_inspection_charges', 'belectro s.a.'). % [13],[14]

% 8_active_transfer_of_resources
active_resource_flow('reimbursement_of_inspection_charges', 'central_state_budget_funds'). % [14],[15]
resource_of_central_state_entity('central_state_budget_funds'). % [14],[15]

% 9_foregoing_revenue
% Nothing

% 10_imputability
adopted_or_administered_by('reimbursement_of_inspection_charges', 'belgian ministry of finances'). % [14]
public_state_authority('belgian ministry of finances', 'belgium'). % [14],[15]
is_implementation_of('reimbursement_of_inspection_charges', 'eu_law_repayment_obligation'). % [10],[11],[12],[13]
no_member_state_discretion('eu_law_repayment_obligation'). % [13]
