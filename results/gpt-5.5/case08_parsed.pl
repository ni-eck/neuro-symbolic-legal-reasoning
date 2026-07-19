% 1_financial_activa
parsed_money_received('bus_and_tram_operators_in_styria', 'styrian_school_student_transport_compensation_scheme', 39900000). % [10],[26]

% 2_financial_passiva
% Nothing

% 3_altmark
compensation_for_obligation('styrian_school_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria', 'discounted_school_student_transport_services_in_styria'). % [5],[6],[7],[8],[10],[11],[12]
public_service_obligation('discounted_school_student_transport_services_in_styria'). % [3],[5],[6],[7],[8]
clearly_defined('discounted_school_student_transport_services_in_styria'). % [5],[6],[7],[8]
compensation_params_predefined('styrian_school_student_transport_compensation_scheme', 'discounted_school_student_transport_services_in_styria'). % [3],[4],[12],[13],[14],[16],[17],[18],[19]
compensation_params_objective('styrian_school_student_transport_compensation_scheme', 'discounted_school_student_transport_services_in_styria'). % [12],[14],[17],[18],[19]
compensation_params_transparent('styrian_school_student_transport_compensation_scheme', 'discounted_school_student_transport_services_in_styria'). % [3],[4],[12],[13],[14],[16],[17],[18],[19]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styrian_school_student_transport_compensation_scheme'). % [16],[17],[18],[19],[20],[21],[22],[23],[24],[25]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('styrian_school_student_transport_compensation_scheme'). % [10],[26]
social_policy('styrian_school_student_transport_compensation_scheme'). % [7],[8],[9]
regulatory_capacity('styrian_school_student_transport_compensation_scheme'). % [3],[4],[5],[6]

% 6_MEO
measure_financial_terms('styrian_school_student_transport_compensation_scheme', 39900000). % [26]

% 7_direct_or_indirect_advantage
direct_targeting('styrian_school_student_transport_compensation_scheme', 'bus_and_tram_operators_in_styria'). % [5],[10]

% 8_active_transfer_of_resources
active_resource_flow('styrian_school_student_transport_compensation_scheme', 'styrian_public_budget_funds'). % [10],[11],[26]
resource_of_intrastate_entity('styrian_public_budget_funds'). % [10],[11],[26]

% 9_foregoing_revenue
achieving_policy_objective('styrian_school_student_transport_compensation_scheme', 'affordable_education_transport_family_support_environmentally_friendly_public_transport'). % [9]

% 10_imputability
adopted_or_administered_by('styrian_school_student_transport_compensation_scheme', 'styrian_government'). % [1],[4]
adopted_or_administered_by('styrian_school_student_transport_compensation_scheme', 'landesverkehrsabteilung_steiermark'). % [11],[25]
public_intra_state_authority('styrian_government', 'styria'). % [1],[4]
public_intra_state_authority('landesverkehrsabteilung_steiermark', 'styria'). % [11]
intrastate_of('styria', 'austria'). % [1]
