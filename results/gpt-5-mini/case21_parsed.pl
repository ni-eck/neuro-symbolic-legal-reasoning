% 1_financial_activa
parsed_value_received_rights_licenses('portum_energia','agreement_portum_zone_e7',61125000). % [8],[12],[5],[13],[11]

% 2_financial_passiva
parsed_money_spent('portum_energia', 'agreement_portum_zone_e7', 31125000). % [5],[11],[12],[13]

% 3_altmark
% Nothing

% 4_act_of_private_nature
sell_lease_rent_similar('agreement_portum_zone_e7'). % [7],[8],[11],[12]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('agreement_portum_zone_e7'). % [7],[8],[11],[10],[2]
monetary_subsidy('agreement_portum_zone_e7'). % [12],[5],[14],[7],[8]

% 6_MEO
expert_financial_expectation('agreement_portum_zone_e7', 6150000). % [5],[13]
measure_financial_terms('agreement_portum_zone_e7', 2075000). % [12],[13]
textual_evidence_worse_financial_terms('agreement_portum_zone_e7'). % [5],[12],[14]

% 7_direct_or_indirect_advantage
direct_targeting('agreement_portum_zone_e7','portum_energia'). % [7],[8]
secondary_effects('agreement_portum_zone_e7','portum_energia','reduced_fees'). % [12],[5]
channeled_to_identifiable_undertaking_s('portum_energia','reduced_fees'). % [12]

% 8_active_transfer_of_resources
active_resource_flow('agreement_portum_zone_e7','maritime_area_zone_e7'). % [7],[8],[11],[10]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('agreement_portum_zone_e7','maritime_area_zone_e7'). % [7],[8],[11]
resource_of_central_state_entity('maritime_area_zone_e7'). % [7],[8],[10],[1]
active_resource_flow('agreement_portum_zone_e7','reduced_fees'). % [12],[5],[6]
resource_of_central_state_entity('reduced_fees'). % [6],[12],[5]

% 9_foregoing_revenue
system_price_domain_resources_rights('agreement_portum_zone_e7', 6150000). % [5],[13]
access_domain_resources_rights('agreement_portum_zone_e7', 2075000). % [12],[13]
market_value_domain_resources_rights('agreement_portum_zone_e7', 6150000). % [5],[13]
achieving_policy_objective('agreement_portum_zone_e7', 'speed_up_green_energy_investment'). % [14]

% 10_imputability
adopted_or_administered_by('agreement_portum_zone_e7','portuguese_ministry_for_maritime_infrastructure'). % [7],[8],[11],[12]
public_state_authority('portuguese_ministry_for_maritime_infrastructure','portugal'). % [7]
measure_scope_indicates_involvement('portum_energia','agreement_portum_zone_e7'). % [14],[8]
