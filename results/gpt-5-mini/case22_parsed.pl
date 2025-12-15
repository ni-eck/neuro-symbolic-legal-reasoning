% 1_financial_activa
% Nothing

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
sell_lease_rent_similar('romanian_freshwater_certificate_scheme'). % [18],[12]
purchase_lease_rent_similar('romanian_freshwater_certificate_scheme'). % [19],[12]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('romanian_freshwater_certificate_scheme'). % [5],[7],[10],[12],[17]
regulatory_capacity('romanian_freshwater_certificate_scheme'). % [1],[2],[3]

% 6_MEO
expert_evaluation_on_measure_or_similar_action('expert_committee_review','expert_committee','romanian_freshwater_certificate_scheme'). % [13],[14],[15]
not_in_favour_of_measure_or_similar_action('expert_committee_review','romanian_freshwater_certificate_scheme'). % [14],[15]
textual_evidence_worse_financial_terms('romanian_freshwater_certificate_scheme'). % [14],[15]
measure_financial_terms('romanian_freshwater_certificate_scheme', 0). % [12]

% 7_direct_or_indirect_advantage
direct_targeting('romanian_freshwater_certificate_scheme','large_industrial_operators'). % [7],[8],[9],[22]
secondary_effects('romanian_freshwater_certificate_scheme','large_industrial_operators','free_allocation_of_tradeable_certificates'). % [12],[18],[8],[9]
channeled_to_group_of_undertakings('large_industrial_operators','ability_to_sell_surplus_certificates'). % [18],[12]

% 8_active_transfer_of_resources
active_resource_flow('romanian_freshwater_certificate_scheme','freshwater_extraction_certificates'). % [7],[12]
resource_of_central_state_entity('freshwater_extraction_certificates'). % [3],[12]

% 9_foregoing_revenue
selection_process_for_measure('romanian_freshwater_certificate_scheme','capacity_threshold_selection'). % [8],[9]
ex_ante('15k_daily_capacity_threshold','capacity_threshold_selection'). % [8],[9]
domain_resources_rights_priced_below_market_rate_textual_evidence('romanian_freshwater_certificate_scheme'). % [7],[12],[15]
achieving_policy_objective('romanian_freshwater_certificate_scheme','safeguard_long_term_environmental_interests_and_efficiency'). % [3],[4],[5],[6]

% 10_imputability
adopted_or_administered_by('romanian_freshwater_certificate_scheme','romanian_government'). % [3],[7],[12]
public_state_authority('romanian_government','Romania'). % [3],[25]
is_implementation_of('romanian_freshwater_certificate_scheme','Directive_(EU)_2020/1743'). % [1],[2],[3]
