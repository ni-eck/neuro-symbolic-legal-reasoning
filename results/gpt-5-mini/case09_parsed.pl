% 1_financial_activa
parsed_money_received('BElectro S.A.','reimbursement_inspection_charges_2012',3500000). % [1],[14],[15]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
fallback_act_of_economic_nature('reimbursement_inspection_charges_2012'). % [14],[15]

% 5_act_of_public_nature
reimbursement_of_illegally_levied_charges_or_dues('reimbursement_inspection_charges_2012'). % [1],[11],[12],[13],[14],[15]

% 6_MEO
measure_financial_terms('reimbursement_inspection_charges_2012', 3500000). % [1],[14]

% 7_direct_or_indirect_advantage
direct_targeting('reimbursement_inspection_charges_2012', 'BElectro S.A.'). % [13],[14]

% 8_active_transfer_of_resources
active_resource_flow('reimbursement_inspection_charges_2012','central_state_budget'). % [14],[15]
resource_of_central_state_entity('central_state_budget'). % [15]

% 9_foregoing_revenue
% Nothing

% 10_imputability
adopted_or_administered_by('reimbursement_inspection_charges_2012','Belgian_Ministry_of_Finances'). % [14],[15]
public_state_authority('Belgian_Ministry_of_Finances','Belgium'). % [14],[15]
