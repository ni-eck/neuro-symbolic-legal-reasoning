% 1_financial_activa
parsed_value_received_rights_licenses('AgroBaltic_UAB','lease_2800ha_panevezys_2013',1904000). % [2],[10],[15],[18]

% 2_financial_passiva
parsed_money_spent('AgroBaltic_UAB','lease_2800ha_panevezys_2013',16800). % [2],[10]
parsed_money_spent('AgroBaltic_UAB','lease_2800ha_panevezys_2013',336000). % [2],[10],[15]

% 3_altmark
compensation_for_obligation('lease_2800ha_panevezys_2013','AgroBaltic_UAB','maintain_dairy_cereal_activities'). % [6],[10],[15],[19]
clearly_defined('maintain_dairy_cereal_activities'). % [6],[7]
compensation_params_predefined('lease_2800ha_panevezys_2013','maintain_dairy_cereal_activities'). % [10],[16],[17]
public_procurement_procedure_used('lease_2800ha_panevezys_2013','restricted_tender'). % [2],[5]

% 4_act_of_private_nature
sell_lease_rent_similar('lease_2800ha_panevezys_2013'). % [1],[2],[15],[21],[22]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('lease_2800ha_panevezys_2013'). % [2],[15],[21],[10],[18]

% 6_MEO
tender_used('lease_2800ha_panevezys_2013', 'restricted_tender'). % [2],[5]
competitive('lease_2800ha_panevezys_2013', 'restricted_tender'). % [9],[2]
not_comparable_starting_position('lease_2800ha_panevezys_2013', 'Ministry_of_Agriculture_of_Lithuania', 'AgroBaltic_UAB'). % [1],[8],[13],[6]
textual_evidence_worse_financial_terms('lease_2800ha_panevezys_2013'). % [10],[18]
textual_evidence_worse_nonfinancial_terms('lease_2800ha_panevezys_2013'). % [6],[19],[20]
comparable_type('lease_2800ha_panevezys_2013', 'regional_land_auctions'). % [18]
comparable_situation('lease_2800ha_panevezys_2013', 'regional_land_auctions'). % [18]
measure_financial_terms('lease_2800ha_panevezys_2013', 6). % [10],[15]

% 7_direct_or_indirect_advantage
direct_targeting('lease_2800ha_panevezys_2013','AgroBaltic_UAB'). % [6],[8],[15]
secondary_effects('lease_2800ha_panevezys_2013','AgroBaltic_UAB','deduction_of_maintenance_costs_from_rent'). % [19],[20]
channeled_to_identifiable_undertaking_s('AgroBaltic_UAB','deduction_of_maintenance_costs_from_rent'). % [19],[20]
channeled_to_identifiable_undertaking_s('AgroBaltic_UAB','below_market_rent_6_eur_per_ha'). % [10],[18],[15]

% 8_active_transfer_of_resources
active_resource_flow('lease_2800ha_panevezys_2013', 'state_owned_land_2800ha_panevezys'). % [2],[15],[21]
resource_of_central_state_entity('state_owned_land_2800ha_panevezys'). % [3],[21]
resource_of_body_appointed_by_state_to_administer_measure('state_owned_land_2800ha_panevezys'). % [3],[2]

% 9_foregoing_revenue
access_domain_resources_rights('lease_2800ha_panevezys_2013', 6). % [10],[15]
market_value_domain_resources_rights('lease_2800ha_panevezys_2013', 40). % [18]
selection_process_for_measure('lease_2800ha_panevezys_2013','restricted_tender'). % [2],[5]
qualitative_selection_criteria('restricted_tender'). % [6]
ex_ante('maintain_dairy_cereal_activities','restricted_tender'). % [6],[7]
transparent('maintain_dairy_cereal_activities','restricted_tender'). % [5],[6]

% 10_imputability
adopted_or_administered_by('lease_2800ha_panevezys_2013', 'Ministry_of_Agriculture_of_Lithuania'). % [1],[2],[15],[22]
public_state_authority('Ministry_of_Agriculture_of_Lithuania', 'Lithuania'). % [1]
