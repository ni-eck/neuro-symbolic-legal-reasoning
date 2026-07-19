% 1_financial_activa
parsed_value_received_rights_licenses('agrobaltic uab', 'state_land_lease', 2240000). % [2],[15],[18]

% 2_financial_passiva
parsed_money_spent('agrobaltic uab', 'state_land_lease', 336000). % [2],[10],[15]

% 3_altmark
public_procurement_procedure_used('state_land_lease', 'restricted_tender_procedure'). % [2],[15]

% 4_act_of_private_nature
sell_lease_rent_similar('state_land_lease'). % [2],[15]
economic_objective_similar_to_private_investor('state_land_lease'). % [10],[15]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('state_land_lease'). % [2],[3],[15],[21]

% 6_MEO
tender_used('state_land_lease', 'restricted_tender_procedure'). % [2]
competitive('state_land_lease', 'restricted_tender_procedure'). % [9]
measure_financial_terms('state_land_lease', 336000). % [2],[10],[15]
textual_evidence_worse_financial_terms('state_land_lease'). % [10],[18],[19]
comparable_type('state_land_lease', 'comparable_farmland_leases'). % [18]

% 7_direct_or_indirect_advantage
direct_targeting('state_land_lease', 'agrobaltic uab'). % [15]

% 8_active_transfer_of_resources
active_resource_flow('state_land_lease', 'state_owned_agricultural_land'). % [2],[15]
resource_of_central_state_entity('state_owned_agricultural_land'). % [1],[3],[21],[22]

% 9_foregoing_revenue
access_domain_resources_rights('state_land_lease', 336000). % [2],[10],[15]
market_value_domain_resources_rights('state_land_lease', 2240000). % [2],[15],[18]
selection_process_for_measure('state_land_lease', 'restricted_tender_procedure'). % [1],[2],[15]
qualitative_selection_criteria('restricted_tender_procedure'). % [6],[7],[12]
ex_ante('activity_continuity_criterion', 'restricted_tender_procedure'). % [5],[6],[7]

% 10_imputability
adopted_or_administered_by('state_land_lease', 'ministry_of_agriculture_of_lithuania'). % [1],[2],[15],[22]
public_state_authority('ministry_of_agriculture_of_lithuania', 'lithuania'). % [1]
