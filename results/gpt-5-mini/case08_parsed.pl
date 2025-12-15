% 1_financial_activa
parsed_money_received('styrian_bus_tram_operators','styria_school_student_transport_scheme',39900000). % [5],[10],[26]

% 2_financial_passiva
parsed_value_granted_services('styrian_bus_tram_operators','styria_school_student_transport_scheme',39900000). % [10],[12],[26]

% 3_altmark
compensation_for_obligation('styria_school_student_transport_scheme','styrian_bus_tram_operators','student_transport_service_obligation'). % [3],[4],[5],[6],[7],[8],[10],[11],[12]
public_service_obligation('student_transport_service_obligation'). % [3],[5],[6]
clearly_defined('student_transport_service_obligation'). % [5],[6],[7],[8],[13]
compensation_params_predefined('styria_school_student_transport_scheme','student_transport_service_obligation'). % [3],[4],[12],[13],[14],[16],[17],[18],[19],[20],[21],[22]
compensation_params_objective('styria_school_student_transport_scheme','student_transport_service_obligation'). % [19],[20],[21],[22]
compensation_params_transparent('styria_school_student_transport_scheme','student_transport_service_obligation'). % [3],[4],[23],[24],[25],[26]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('styria_school_student_transport_scheme'). % [19],[20],[21]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styria_school_student_transport_scheme'). % [16],[17],[18],[19],[20],[23],[24],[25]

% 4_act_of_private_nature
fallback_act_of_economic_nature('styria_school_student_transport_scheme'). % [1],[10],[26]

% 5_act_of_public_nature
monetary_subsidy('styria_school_student_transport_scheme'). % [10],[11],[12],[26]

% 6_MEO
measure_financial_terms('styria_school_student_transport_scheme', 39900000). % [26]

% 7_direct_or_indirect_advantage
direct_targeting('styria_school_student_transport_scheme','styrian_bus_tram_operators'). % [5],[10]

% 8_active_transfer_of_resources
active_resource_flow('styria_school_student_transport_scheme','styria_public_budget'). % [10],[26],[11]
resource_of_intrastate_entity('styria_public_budget'). % [26]
resource_of_body_appointed_by_state_to_administer_measure('landesverkehrsabteilung_steiermark'). % [11]
resource_of_intrastate_entity('landesverkehrsabteilung_steiermark'). % [11]

% 9_foregoing_revenue
achieving_policy_objective('styria_school_student_transport_scheme','make_transport_to_education_more_affordable'). % [9]
achieving_policy_objective('styria_school_student_transport_scheme','help_families_with_children'). % [9]
achieving_policy_objective('styria_school_student_transport_scheme','support_environmentally_friendly_public_transport'). % [9]

% 10_imputability
adopted_or_administered_by('styria_school_student_transport_scheme','landesverkehrsabteilung_steiermark'). % [11],[3],[4]
adopted_or_administered_by('styria_school_student_transport_scheme','styrian_government'). % [3],[4]
public_intra_state_authority('landesverkehrsabteilung_steiermark','styria'). % [11],[1]
public_intra_state_authority('styrian_government','styria'). % [4],[1]
intrastate_of('styria','austria'). % [1]
was_designated('landesverkehrsabteilung_steiermark','styria_school_student_transport_scheme','styrian_government'). % [11],[4]
measure_scope_indicates_involvement('styrian_bus_tram_operators','styria_school_student_transport_scheme'). % [5],[6],[9]
