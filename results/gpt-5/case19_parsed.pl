% 1_financial_activa
parsed_value_received_rights_licenses('agrobaltic uab', 'lease_panevezys_2013', 2240000). % [2],[15],[18]

% 2_financial_passiva
parsed_other_liabilities_incurred('agrobaltic uab', 'lease_panevezys_2013', 336000). % [2],[10],[15]

% 3_altmark
public_procurement_procedure_used('lease_panevezys_2013', 'restricted_tender_2013'). % [2],[5],[12],[15]

% 4_act_of_private_nature
sell_lease_rent_similar('lease_panevezys_2013'). % [2],[15]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('lease_panevezys_2013'). % [2],[3],[15],[21]

% 6_MEO
tender_used('lease_panevezys_2013', 'restricted_tender_2013'). % [2]
measure_financial_terms('lease_panevezys_2013', 16800). % [2],[10]
textual_evidence_worse_financial_terms('lease_panevezys_2013'). % [10],[18]
comparable_type('lease_panevezys_2013', 'regional_farmland_leases'). % [18]
comparable_situation('lease_panevezys_2013', 'regional_farmland_leases'). % [18]

% 7_direct_or_indirect_advantage
direct_targeting('lease_panevezys_2013', 'agrobaltic uab'). % [15]
secondary_effects('restricted_tender_2013', 'agrobaltic uab', 'reduced_competition'). % [6],[7],[8],[12]
channeled_to_identifiable_undertaking_s('agrobaltic uab', 'reduced_competition'). % [6],[7],[8],[12]

% 8_active_transfer_of_resources
active_resource_flow('lease_panevezys_2013', 'state_land_panevezys'). % [2],[3],[15],[21]
resource_of_central_state_entity('state_land_panevezys'). % [1],[3],[21]

% 9_foregoing_revenue
access_domain_resources_rights('lease_panevezys_2013', 16800). % [10],[2]
market_value_domain_resources_rights('lease_panevezys_2013', 112000). % [18],[2]
selection_process_for_measure('lease_panevezys_2013', 'restricted_tender_2013'). % [2],[15]
qualitative_selection_criteria('restricted_tender_2013'). % [6],[12]
ex_ante('activity_restriction', 'restricted_tender_2013'). % [5],[6],[7]
transparent('activity_restriction', 'restricted_tender_2013'). % [5],[6],[7]

% 10_imputability
adopted_or_administered_by('restricted_tender_2013', 'ministry_of_agriculture_of_lithuania'). % [1],[2]
adopted_or_administered_by('lease_panevezys_2013', 'ministry_of_agriculture_of_lithuania'). % [15],[22]
public_state_authority('ministry_of_agriculture_of_lithuania', 'lithuania'). % [1]
public_state_authority('land_administration_division', 'lithuania'). % [3]
