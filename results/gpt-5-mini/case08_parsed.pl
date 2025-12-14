% 1_financial_activa
parsed_money_received('bus_tram_operators_styria', 'styria_school_student_transport_scheme', 39900000). % [10],[26]
textual_evidence_of_improved_financial_situation('bus_tram_operators_styria', 'styria_school_student_transport_scheme'). % [10],[14]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('styria_school_student_transport_scheme','bus_tram_operators_styria','school_student_transport_obligation'). % [5],[6],[7],[10]
public_service_obligation('school_student_transport_obligation'). % [2],[3],[5]
clearly_defined('school_student_transport_obligation'). % [5],[6],[7],[8]
compensation_params_predefined('styria_school_student_transport_scheme','school_student_transport_obligation'). % [12],[13],[14],[16],[19],[20]
compensation_params_objective('styria_school_student_transport_scheme','school_student_transport_obligation'). % [19],[20]
compensation_params_transparent('styria_school_student_transport_scheme','school_student_transport_obligation'). % [3],[4],[24],[25]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styria_school_student_transport_scheme'). % [16],[17],[18],[19],[20],[21]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('styria_school_student_transport_scheme'). % [19],[20]

% 4_act_of_private_nature
fallback_act_of_economic_nature('styria_school_student_transport_scheme'). % [1],[3],[5],[6],[10],[26],[27]

% 5_act_of_public_nature
monetary_subsidy('styria_school_student_transport_scheme'). % [10],[11],[26]
regulatory_capacity('styria_school_student_transport_scheme'). % [3],[4],[5],[6],[7],[8]
social_policy('styria_school_student_transport_scheme'). % [9]

% 6_MEO
comparable_type('styria_school_student_transport_scheme','federal_mechanism_24a'). % [2]
measure_financial_terms('styria_school_student_transport_scheme', 39900000). % [26]

% 7_direct_or_indirect_advantage
direct_targeting('styria_school_student_transport_scheme','bus_tram_operators_styria'). % [5],[10]
secondary_effects('styria_school_student_transport_scheme','bus_tram_operators_styria','compensation_from_regional_budget'). % [10],[26]
channeled_to_group_of_undertakings('bus_tram_operators_styria','compensation_from_regional_budget'). % [10],[26]

% 8_active_transfer_of_resources
active_resource_flow('styria_school_student_transport_scheme', 'styria_public_budget'). % [10],[26]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('styria_school_student_transport_scheme', 'styria_public_budget'). % [26],[27]
resource_of_intrastate_entity('styria_public_budget'). % [26]
resource_of_body_appointed_by_state_to_administer_measure('landesverkehrsabteilung_steiermark'). % [11]

% 9_foregoing_revenue
goods_or_services_priced_below_market_value_textual_evidence('styria_school_student_transport_scheme'). % [7]
achieving_policy_objective('styria_school_student_transport_scheme', 'make_transport_to_education_more_affordable'). % [9]
achieving_policy_objective('styria_school_student_transport_scheme', 'help_families_with_children'). % [9]
achieving_policy_objective('styria_school_student_transport_scheme', 'support_environmentally_friendly_public_transport'). % [9]

% 10_imputability
adopted_or_administered_by('styria_school_student_transport_scheme','styrian_government'). % [3],[4]
adopted_or_administered_by('styria_school_student_transport_scheme','landesverkehrsabteilung_steiermark'). % [11]
public_intra_state_authority('landesverkehrsabteilung_steiermark','Styria'). % [11]
was_designated('landesverkehrsabteilung_steiermark','styria_school_student_transport_scheme','styrian_government'). % [11],[4]
public_intra_state_authority('styrian_government','Styria'). % [4]
intrastate_of('Styria','Austria'). % [1]
