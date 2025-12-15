% 1_financial_activa
parsed_money_received('belectro_s.a.','reimbursement_2012',3500000). % [1],[14],[15]

% 2_financial_passiva
parsed_money_spent('belectro_s.a.','reimbursement_2012',3500000). % [1]

% 3_altmark
% Nothing

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
reimbursement_of_illegally_levied_charges_or_dues('reimbursement_2012'). % [1],[12],[13],[14],[15]
monetary_subsidy('reimbursement_2012'). % [14],[15]

% 6_MEO
measure_financial_terms('reimbursement_2012', 3500000). % [14]

% 7_direct_or_indirect_advantage
direct_targeting('reimbursement_2012','belectro_s.a.'). % [13],[14]
secondary_effects('reimbursement_2012','belectro_s.a.','unjust_enrichment'). % [8]
channeled_to_identifiable_undertaking_s('belectro_s.a.','unjust_enrichment'). % [8]

% 8_active_transfer_of_resources
active_resource_flow('reimbursement_2012','central_state_budget'). % [14],[15]
resource_of_central_state_entity('central_state_budget'). % [15]
resource_of_central_state_entity('belgian_ministry_of_finances'). % [14]

% 9_foregoing_revenue
actual_price_goods_service('reimbursement_2012', 3500000). % [1],[14],[15]

% 10_imputability
adopted_or_administered_by('reimbursement_2012','belgian_ministry_of_finances'). % [14],[15]
public_state_authority('belgian_ministry_of_finances','Belgium'). % [14],[15]
