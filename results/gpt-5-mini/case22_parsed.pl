% 1_financial_activa
parsed_value_received_rights_licenses('eligible_large_industrial_companies','romanian_freshwater_extraction_certificates',0). % [7],[8],[10],[11],[12]

% 2_financial_passiva
% Nothing

% 3_altmark
clearly_defined('keep_within_assigned_extraction_ceiling'). % [5],[7],[8],[10],[11],[12],[17],[18],[19],[20]

% 4_act_of_private_nature
purchase_lease_rent_similar('romanian_freshwater_extraction_certificates'). % [19]
sell_lease_rent_similar('romanian_freshwater_extraction_certificates'). % [18]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('romanian_freshwater_extraction_certificates'). % [7],[12],[10],[5]
regulatory_capacity('romanian_freshwater_extraction_certificates'). % [3],[5],[7],[21]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('expert_committee_report','expert_committee','romanian_freshwater_extraction_certificates'). % [13],[14],[15]
measure_financial_terms('romanian_freshwater_extraction_certificates', 0). % [12]
textual_evidence_worse_financial_terms('romanian_freshwater_extraction_certificates'). % [14],[15]

% 7_direct_or_indirect_advantage
direct_targeting('romanian_freshwater_extraction_certificates','eligible_large_industrial_companies'). % [7],[8],[9],[22]
secondary_effects('romanian_freshwater_extraction_certificates','eligible_large_industrial_companies','ability_to_sell_surplus_certificates'). % [18]
channeled_to_group_of_undertakings('eligible_large_industrial_companies','ability_to_sell_surplus_certificates'). % [18],[22]
secondary_effects('romanian_freshwater_extraction_certificates','eligible_large_industrial_companies','ability_to_buy_additional_certificates'). % [19],[20]
channeled_to_group_of_undertakings('eligible_large_industrial_companies','ability_to_buy_additional_certificates'). % [19],[20]

% 8_active_transfer_of_resources
active_resource_flow('romanian_freshwater_extraction_certificates', 'extraction_certificates'). % [7],[12],[18],[19]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('romanian_freshwater_extraction_certificates', 'extraction_certificates'). % [12],[10]
resource_of_central_state_entity('extraction_certificates'). % [3],[12]

% 9_foregoing_revenue
access_domain_resources_rights('romanian_freshwater_extraction_certificates', 0). % [12]
selection_process_for_measure('romanian_freshwater_extraction_certificates', 'eligibility_threshold_selection'). % [8],[22]
ex_ante('installation_capacity_above_15000_m3_per_day', 'eligibility_threshold_selection'). % [8]
achieving_policy_objective('romanian_freshwater_extraction_certificates', 'environmental_protection_and_water_efficiency'). % [3],[4]

% 10_imputability
adopted_or_administered_by('romanian_freshwater_extraction_certificates','romanian_government'). % [3]
public_state_authority('romanian_government','Romania'). % [3],[25]
is_implementation_of('romanian_freshwater_extraction_certificates','Directive_EU_2020_1743'). % [1],[3]
