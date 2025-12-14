% 1_financial_activa
parsed_money_received('belectro s.a.', 'reimbursement_belgian_ministry_2012', 3500000). % [14],[15]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
regulatory_capacity('inspection_charges_legislation'). % [2],[3]
reimbursement_of_illegally_levied_charges_or_dues('reimbursement_belgian_ministry_2012'). % [12],[13],[14],[15]

% 6_MEO
measure_financial_terms('reimbursement_belgian_ministry_2012', 3500000). % [14],[15]
expert_evaluation_on_measure_or_similar_action('belgian_court_ruling', 'belgian_court', 'inspection_charges_legislation'). % [10],[11],[12],[13]
not_in_favour_of_measure_or_similar_action('belgian_court_ruling', 'inspection_charges_legislation'). % [10],[11],[12],[13]

% 7_direct_or_indirect_advantage
direct_targeting('reimbursement_belgian_ministry_2012', 'belectro s.a.'). % [14],[15]

% 8_active_transfer_of_resources
active_resource_flow('inspection_charges_legislation', 'belectro_payments_2004_2009'). % [1],[2]
resource_of_private_body('belectro_payments_2004_2009'). % [1]
active_resource_flow('reimbursement_belgian_ministry_2012', 'belgian_central_state_budget'). % [14],[15]
resource_of_central_state_entity('belgian_central_state_budget'). % [15]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('reimbursement_belgian_ministry_2012', 'belgian_central_state_budget'). % [13],[15]

% 9_foregoing_revenue
achieving_policy_objective('inspection_charges_legislation', 'customs_related_technical_inspections'). % [2],[3]
general_waiving_revenue_public_or_criminal_law('reimbursement_belgian_ministry_2012'). % [14],[15]

% 10_imputability
adopted_or_administered_by('reimbursement_belgian_ministry_2012', 'belgian_ministry_of_finances'). % [14],[15]
public_state_authority('belgian_ministry_of_finances', 'belgium'). % [-]
adopted_or_administered_by('inspection_charges_legislation', 'belgian_state'). % [2]
public_state_authority('belgian_state', 'belgium'). % [-]
adopted_or_administered_by('belgian_court_ruling', 'belgian_court'). % [10],[12],[13]
public_state_authority('belgian_court', 'belgium'). % [-]
