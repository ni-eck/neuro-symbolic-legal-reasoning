% 1_financial_activa
parsed_money_received('bus_and_tram_operators_in_styria', 'styria_school_student_transport_compensation_scheme', 39900000). % [5],[10],[11],[26]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('styria_school_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria', 'student_transport_discount_obligation_styria'). % [5],[6],[7],[10]
public_service_obligation('student_transport_discount_obligation_styria'). % [3],[5],[6],[19]
clearly_defined('student_transport_discount_obligation_styria'). % [5],[6],[7],[8]
compensation_params_predefined('styria_school_student_transport_compensation_scheme', 'student_transport_discount_obligation_styria'). % [3],[4],[12],[13],[16],[17],[18],[19],[20]
compensation_params_objective('styria_school_student_transport_compensation_scheme', 'student_transport_discount_obligation_styria'). % [12],[13],[16],[17],[18],[19],[20],[22]
compensation_params_transparent('styria_school_student_transport_compensation_scheme', 'student_transport_discount_obligation_styria'). % [3],[4]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styria_school_student_transport_compensation_scheme'). % [16],[17],[18],[19],[20],[22]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('styria_school_student_transport_compensation_scheme'). % [19],[20],[21]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('styria_school_student_transport_compensation_scheme'). % [10],[11],[26]
regulatory_capacity('styria_school_student_transport_compensation_scheme'). % [3],[4],[5],[6],[7],[19],[20],[23],[24],[25]
social_policy('styria_school_student_transport_compensation_scheme'). % [7],[8],[9]

% 6_MEO
measure_financial_terms('styria_school_student_transport_compensation_scheme', 39900000). % [26]
comparable_type('styria_school_student_transport_compensation_scheme', 'federal_mechanism_section_24a_oepnvg'). % [2]

% 7_direct_or_indirect_advantage
direct_targeting('styria_school_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria'). % [5],[10],[11]

% 8_active_transfer_of_resources
active_resource_flow('styria_school_student_transport_compensation_scheme', 'styria_public_budget'). % [10],[11],[26]
resource_of_intrastate_entity('styria_public_budget'). % [26]

% 9_foregoing_revenue
goods_or_services_priced_below_market_value_textual_evidence('styria_school_student_transport_compensation_scheme'). % [7]
achieving_policy_objective('styria_school_student_transport_compensation_scheme','affordable_transport_to_education'). % [9]
achieving_policy_objective('styria_school_student_transport_compensation_scheme','support_families_with_children'). % [9]
achieving_policy_objective('styria_school_student_transport_compensation_scheme','promote_environmentally_friendly_public_transport'). % [9]

% 10_imputability
intrastate_of('styria','austria'). % [1]
public_intra_state_authority('styrian_government','styria'). % [4]
public_intra_state_authority('landesverkehrsabteilung_steiermark','styria'). % [11]
adopted_or_administered_by('styria_school_student_transport_compensation_scheme','styrian_government'). % [3],[4]
adopted_or_administered_by('styria_school_student_transport_compensation_scheme','landesverkehrsabteilung_steiermark'). % [11]
