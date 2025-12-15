% 1_financial_activa
parsed_money_received('bus_and_tram_operators_styria', 'styrian_school_student_transport_compensation_scheme', 39900000). % [5],[10],[26]

% 2_financial_passiva
parsed_value_granted_services('bus_and_tram_operators_styria', 'styrian_school_student_transport_compensation_scheme', 39900000). % [5],[6],[7],[26]

% 3_altmark
compensation_for_obligation('styrian_school_student_transport_compensation_scheme', 'bus_and_tram_operators_styria', 'school_student_transport_obligation_styria'). % [5],[6],[7],[10]
public_service_obligation('school_student_transport_obligation_styria'). % [5],[6],[7]
clearly_defined('school_student_transport_obligation_styria'). % [5],[6],[7],[8]
compensation_params_predefined('styrian_school_student_transport_compensation_scheme', 'school_student_transport_obligation_styria'). % [12],[14],[17],[18],[19]
compensation_params_objective('styrian_school_student_transport_compensation_scheme', 'school_student_transport_obligation_styria'). % [12],[13],[14],[17],[18],[19]
compensation_params_transparent('styrian_school_student_transport_compensation_scheme', 'school_student_transport_obligation_styria'). % [3],[4],[12],[13],[14]
textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit('styrian_school_student_transport_compensation_scheme'). % [16],[17],[18],[19],[20]
textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit('styrian_school_student_transport_compensation_scheme'). % [19],[20],[21]

% 4_act_of_private_nature
% Nothing

% 5_act_of_public_nature
monetary_subsidy('styrian_school_student_transport_compensation_scheme'). % [10],[12],[14],[26]
social_policy('styrian_school_student_transport_compensation_scheme'). % [9]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('styrian_school_student_transport_compensation_scheme', 'bus_and_tram_operators_styria'). % [5],[10]

% 8_active_transfer_of_resources
active_resource_flow('styrian_school_student_transport_compensation_scheme', 'styria_public_budget'). % [10],[26]
resource_of_intrastate_entity('styria_public_budget'). % [26]

% 9_foregoing_revenue
achieving_policy_objective('styrian_school_student_transport_compensation_scheme', 'affordable_education_transport'). % [9]
goods_or_services_priced_below_market_value_textual_evidence('styrian_school_student_transport_compensation_scheme'). % [7],[12],[13],[14]

% 10_imputability
adopted_or_administered_by('styrian_school_student_transport_compensation_scheme', 'styrian_government'). % [3],[4]
adopted_or_administered_by('styrian_school_student_transport_compensation_scheme', 'landesverkehrsabteilung_steiermark'). % [11]
public_intra_state_authority('styrian_government', 'styria'). % [4]
public_intra_state_authority('landesverkehrsabteilung_steiermark', 'styria'). % [11]
intrastate_of('styria', 'austria'). % [-]
