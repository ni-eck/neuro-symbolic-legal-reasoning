% 1_financial_activa
parsed_money_received('bus_and_tram_operators_in_styria', 'styria_school_and_student_transport_compensation_scheme', 39900000). % [10],[26]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('styria_school_and_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria', 'discounted_student_transport_styria'). % [5],[6],[7],[8],[10],[11]
public_service_obligation('discounted_student_transport_styria'). % [3],[5],[6],[7],[8],[19]
clearly_defined('discounted_student_transport_styria'). % [5],[6],[7],[8]
compensation_params_predefined('styria_school_and_student_transport_compensation_scheme', 'discounted_student_transport_styria'). % [3],[4],[12],[13],[14],[16],[17],[18],[19],[20]
compensation_params_objective('styria_school_and_student_transport_compensation_scheme', 'discounted_student_transport_styria'). % [12],[13],[14],[16],[17],[18],[19],[20],[21],[22]
compensation_params_transparent('styria_school_and_student_transport_compensation_scheme', 'discounted_student_transport_styria'). % [3],[4]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styria_school_and_student_transport_compensation_scheme'). % [16],[17],[18],[19],[20],[21],[22]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('styria_school_and_student_transport_compensation_scheme'). % [19],[20],[21]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('styria_school_and_student_transport_compensation_scheme'). % [10],[26]
social_policy('styria_school_and_student_transport_compensation_scheme'). % [9]
regulatory_capacity('styria_school_and_student_transport_compensation_scheme'). % [3],[4],[5]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('styria_school_and_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria'). % [5],[10],[11]

% 8_active_transfer_of_resources
active_resource_flow('styria_school_and_student_transport_compensation_scheme', 'styria_public_budget'). % [10],[11],[26]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('styria_school_and_student_transport_compensation_scheme', 'styria_public_budget'). % [26],[27]
resource_of_intrastate_entity('styria_public_budget'). % [1],[26]

% 9_foregoing_revenue
goods_or_services_priced_below_market_value_textual_evidence('styria_school_and_student_transport_compensation_scheme'). % [6],[7]
achieving_policy_objective('styria_school_and_student_transport_compensation_scheme', 'affordable_transport_to_education'). % [9]
achieving_policy_objective('styria_school_and_student_transport_compensation_scheme', 'support_families_with_children'). % [9]
achieving_policy_objective('styria_school_and_student_transport_compensation_scheme', 'environmentally_friendly_public_transport'). % [9]

% 10_imputability
adopted_or_administered_by('styria_school_and_student_transport_compensation_scheme', 'styrian_government'). % [3],[4]
public_intra_state_authority('styrian_government', 'Styria'). % [1],[4]
intrastate_of('Styria', 'Austria'). % [1]
adopted_or_administered_by('styria_school_and_student_transport_compensation_scheme', 'landesverkehrsabteilung_steiermark'). % [11]
public_intra_state_authority('landesverkehrsabteilung_steiermark', 'Styria'). % [11]
was_designated('landesverkehrsabteilung_steiermark', 'styria_school_and_student_transport_compensation_scheme', 'styrian_government'). % [4],[11]
