% 1_financial_activa
parsed_value_received_rights_licenses('Portum Energia S.A.', 'agreement_zone_e7_2023', 1125000). % [8],[11],[12]

% 2_financial_passiva
parsed_other_liabilities_incurred('Portum Energia S.A.', 'agreement_zone_e7_2023', 1125000). % [11],[12]

% 3_altmark
% Nothing

% 4_act_of_private_nature
sell_lease_rent_similar('agreement_zone_e7_2023'). % [7],[8],[11],[12]

% 5_act_of_public_nature
regulatory_capacity('gfumdp_framework'). % [1],[2],[3],[4],[5]
granting_access_to_public_domain_resources_special_or_exclusive_rights('agreement_zone_e7_2023'). % [8],[10],[11],[12]

% 6_MEO
measure_financial_terms('gfumdp_framework', 150000). % [5]
measure_financial_terms('agreement_zone_e7_2023', 75000). % [12]

% 7_direct_or_indirect_advantage
direct_targeting('agreement_zone_e7_2023', 'Portum Energia S.A.'). % [7],[8]

% 8_active_transfer_of_resources
active_resource_flow('gfumdp_framework', 'gfumdp_fees'). % [5],[6]
resource_of_private_body('gfumdp_fees'). % [5]
resource_of_central_state_entity('gfumdp_maritime_areas'). % [1],[2]
active_resource_flow('agreement_zone_e7_2023', 'agreement_zone_e7_fees'). % [12]
resource_of_private_body('agreement_zone_e7_fees'). % [12]
firm_and_concrete_commitment_to_make_resources_available_at_later_point('agreement_zone_e7_2023', 'zone_e7_maritime_area'). % [11]
resource_of_central_state_entity('zone_e7_maritime_area'). % [7],[10]

% 9_foregoing_revenue
system_price_domain_resources_rights('gfumdp_framework', 150000). % [5]
system_price_domain_resources_rights('gfumdp_framework', 3000). % [5]
access_domain_resources_rights('agreement_zone_e7_2023', 75000). % [12]
access_domain_resources_rights('agreement_zone_e7_2023', 1000). % [12]
achieving_policy_objective('agreement_zone_e7_2023', 'speed_up_green_energy_investment'). % [14]

% 10_imputability
adopted_or_administered_by('agreement_zone_e7_2023', 'Portuguese Ministry for Maritime Infrastructure'). % [7],[8]
public_state_authority('Portuguese Ministry for Maritime Infrastructure', 'Portugal'). % [7]
