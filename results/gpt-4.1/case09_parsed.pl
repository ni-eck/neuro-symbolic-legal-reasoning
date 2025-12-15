% 1_financial_activa
parsed_money_received('belectro s.a.', 'reimbursement_belgian_inspection_charges', 3500000). % [14]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
reimbursement_of_illegally_levied_charges_or_dues('reimbursement_belgian_inspection_charges'). % [14]
monetary_subsidy('reimbursement_belgian_inspection_charges'). % [14]

% 6_MEO
measure_financial_terms('reimbursement_belgian_inspection_charges', 3500000). % [1],[14]

% 7_direct_or_indirect_advantage
direct_targeting('reimbursement_belgian_inspection_charges', 'belectro s.a.'). % [13],[14]

% 8_active_transfer_of_resources
active_resource_flow('reimbursement_belgian_inspection_charges', 'belgian_central_state_budget'). % [14],[15]
resource_of_central_state_entity('belgian_central_state_budget'). % [15]

% 9_foregoing_revenue
general_waiving_revenue_public_or_criminal_law('reimbursement_belgian_inspection_charges'). % [14]

% 10_imputability
adopted_or_administered_by('reimbursement_belgian_inspection_charges', 'belgian_ministry_of_finances'). % [14]
public_state_authority('belgian_ministry_of_finances', 'belgium'). % [14],[15]
