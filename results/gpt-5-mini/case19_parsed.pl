% 1_financial_activa
parsed_value_received_rights_licenses('AgroBaltic UAB','lease_panevezys_2800ha_2013',2240000). % [2],[10],[15],[18]
parsed_money_received('AgroBaltic UAB','lease_panevezys_2800ha_2013',1904000). % [2],[10],[15],[18]

% 2_financial_passiva
parsed_money_spent('AgroBaltic UAB', 'lease_panevezys_2800ha_2013', 336000). % [2],[10],[15]

% 3_altmark
public_procurement_procedure_used('lease_panevezys_2800ha_2013','restricted_tender'). % [1],[2]
compensation_for_obligation('lease_panevezys_2800ha_2013','AgroBaltic UAB','basic_drainage_and_soil_maintenance'). % [11],[19]
clearly_defined('maintain_dairy_and_cereal_farming'). % [6],[7]
clearly_defined('basic_drainage_and_soil_maintenance'). % [11]

% 4_act_of_private_nature
sell_lease_rent_similar('lease_panevezys_2800ha_2013'). % [1],[2],[15],[21]

% 5_act_of_public_nature
monetary_subsidy('lease_panevezys_2800ha_2013'). % [10],[15],[18],[19]
granting_access_to_public_domain_resources_special_or_exclusive_rights('lease_panevezys_2800ha_2013'). % [2],[3],[21]

% 6_MEO
tender_used('lease_panevezys_2800ha_2013', 'restricted_tender'). % [2],[5]
competitive('lease_panevezys_2800ha_2013', 'restricted_tender'). % [9],[12],[2]
not_comparable_starting_position('lease_panevezys_2800ha_2013', 'ministry_of_agriculture', 'AgroBaltic UAB'). % [1],[6],[8]
measure_financial_terms('lease_panevezys_2800ha_2013', 16800). % [10],[2]
textual_evidence_worse_financial_terms('lease_panevezys_2800ha_2013'). % [10],[18]
comparable_type('lease_panevezys_2800ha_2013', 'regional_farmland_leases'). % [18]
comparable_situation('lease_panevezys_2800ha_2013', 'regional_farmland_leases'). % [18]

% 7_direct_or_indirect_advantage
direct_targeting('lease_panevezys_2800ha_2013', 'AgroBaltic UAB'). % [2],[15]
secondary_effects('lease_panevezys_2800ha_2013', 'AgroBaltic UAB', 'low_rent'). % [10],[18],[15]
secondary_effects('lease_panevezys_2800ha_2013', 'AgroBaltic UAB', 'deduct_maintenance_costs'). % [19],[20],[15]
secondary_effects('lease_panevezys_2800ha_2013', 'AgroBaltic UAB', 'restrictive_clause_maintain_same_activities'). % [6],[8],[15]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'low_rent'). % [10],[18]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'deduct_maintenance_costs'). % [19],[20]
channeled_to_identifiable_undertaking_s('AgroBaltic UAB', 'restrictive_clause_maintain_same_activities'). % [6],[8]

% 8_active_transfer_of_resources
active_resource_flow('lease_panevezys_2800ha_2013', 'state_owned_agricultural_land_panevezys'). % [2],[15],[21]
resource_of_central_state_entity('state_owned_agricultural_land_panevezys'). % [1],[3],[21]
resource_of_body_appointed_by_state_to_administer_measure('state_owned_agricultural_land_panevezys'). % [3]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('lease_panevezys_2800ha_2013', 'state_owned_agricultural_land_panevezys'). % [15]

% 9_foregoing_revenue
access_domain_resources_rights('lease_panevezys_2800ha_2013', 16800). % [2],[10],[15]
market_value_domain_resources_rights('lease_panevezys_2800ha_2013', 112000). % [18],[2],[15]
selection_process_for_measure('lease_panevezys_2800ha_2013', 'restricted_tender'). % [2],[5]
qualitative_selection_criteria('restricted_tender'). % [6]
ex_ante('maintain_dairy_and_cereal_farming', 'restricted_tender'). % [6]

% 10_imputability
adopted_or_administered_by('lease_panevezys_2800ha_2013','ministry_of_agriculture'). % [1],[22]
public_state_authority('ministry_of_agriculture','lithuania'). % [1]
intrastate_of('panevezys_region','lithuania'). % [2]
