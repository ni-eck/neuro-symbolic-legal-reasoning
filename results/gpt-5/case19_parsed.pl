% 1_financial_activa
parsed_value_received_rights_licenses('AgroBaltic UAB', 'lease_2013_panevezys_land', 2240000). % [2],[15],[18]

% 2_financial_passiva
parsed_other_liabilities_incurred('AgroBaltic UAB', 'lease_2013_panevezys_land', 336000). % [2],[10],[15],[16],[17]

% 3_altmark
public_procurement_procedure_used('lease_2013_panevezys_land', 'restricted_tender_2013'). % [2],[5]

% 4_act_of_private_nature
sell_lease_rent_similar('lease_2013_panevezys_land'). % [2],[15]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('lease_2013_panevezys_land'). % [2],[3],[15],[21]

% 6_MEO
tender_used('lease_2013_panevezys_land', 'restricted_tender_2013'). % [2],[5]
measure_financial_terms('lease_2013_panevezys_land', 16800). % [2],[10]
textual_evidence_worse_financial_terms('lease_2013_panevezys_land'). % [10],[18]
comparable_type('lease_2013_panevezys_land', 'lithuanian_land_fund_farmland_leases'). % [18]
comparable_type('lease_2013_panevezys_land', 'regional_land_auctions_farmland_leases'). % [18]
textual_evidence_worse_nonfinancial_terms('lease_2013_panevezys_land'). % [19],[20]

% 7_direct_or_indirect_advantage
direct_targeting('lease_2013_panevezys_land', 'AgroBaltic UAB'). % [15]
secondary_effects('lease_2013_panevezys_land', 'AgroBaltic UAB', 'below_market_rent'). % [10],[15],[18]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'below_market_rent'). % [10],[18]
secondary_effects('lease_2013_panevezys_land', 'AgroBaltic UAB', 'rent_deduction_for_maintenance'). % [19],[20]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'rent_deduction_for_maintenance'). % [19]
secondary_effects('lease_2013_panevezys_land', 'AgroBaltic UAB', 'no_rent_adjustment_clause'). % [16],[17]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'no_rent_adjustment_clause'). % [16],[17]

% 8_active_transfer_of_resources
active_resource_flow('lease_2013_panevezys_land', 'panevezys_state_agricultural_land_2800ha'). % [2],[3],[15],[21]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('lease_2013_panevezys_land', 'panevezys_state_agricultural_land_2800ha'). % [15]
resource_of_central_state_entity('panevezys_state_agricultural_land_2800ha'). % [1],[3],[21]

% 9_foregoing_revenue
access_domain_resources_rights('lease_2013_panevezys_land', 16800). % [2],[10]
market_value_domain_resources_rights('lease_2013_panevezys_land', 112000). % [2],[18]
selection_process_for_measure('lease_2013_panevezys_land', 'restricted_tender_2013'). % [2],[5]
qualitative_selection_criteria('restricted_tender_2013'). % [6],[12]
ex_ante('activity_type_restriction', 'restricted_tender_2013'). % [6],[7]
transparent('activity_type_restriction', 'restricted_tender_2013'). % [5],[6],[7]

% 10_imputability
adopted_or_administered_by('restricted_tender_2013', 'Ministry of Agriculture of Lithuania'). % [1],[2],[5]
adopted_or_administered_by('lease_2013_panevezys_land', 'Ministry of Agriculture of Lithuania'). % [1],[15],[22]
public_state_authority('Ministry of Agriculture of Lithuania', 'Lithuania'). % [1]
intrastate_of('Panevėžys region', 'Lithuania'). % [2]
