% 1_financial_activa
parsed_value_received_rights_licenses('AgroBaltic UAB', '2013_lithuania_state_land_lease', 56000). % [2],[10],[15],[18]
parsed_assets_gained('AgroBaltic UAB', '2013_lithuania_state_land_lease', 0). % [4]

% 2_financial_passiva
parsed_money_spent('AgroBaltic UAB', '2013_lithuania_state_land_lease', 336000). % [10],[15]

% 3_altmark
public_procurement_procedure_used('2013_lithuania_state_land_lease', '2013_lithuania_ag_land_tender'). % [2],[5]
clearly_defined('2013_lithuania_land_use_obligation'). % [6],[7]
compensation_params_predefined('2013_lithuania_state_land_lease', '2013_lithuania_land_use_obligation'). % [10],[11],[15]
compensation_params_objective('2013_lithuania_state_land_lease', '2013_lithuania_land_use_obligation'). % [10],[11]
compensation_for_obligation('2013_lithuania_state_land_lease', 'AgroBaltic UAB', '2013_lithuania_land_use_obligation'). % [6],[7],[11],[15]

% 4_act_of_private_nature
sell_lease_rent_similar('2013_lithuania_state_land_lease'). % [2],[15]
purchase_lease_rent_similar('2013_lithuania_state_land_lease'). % [2],[15]

% 5_act_of_public_nature
granting_access_to_public_domain_resources_special_or_exclusive_rights('2013_lithuania_state_land_lease'). % [2],[15]

% 6_MEO
tender_used('2013_lithuania_state_land_lease', '2013_lithuania_ag_land_tender'). % [2]
measure_financial_terms('2013_lithuania_state_land_lease', 16800). % [10],[15]
textual_evidence_worse_financial_terms('2013_lithuania_state_land_lease'). % [18]
textual_evidence_worse_nonfinancial_terms('2013_lithuania_state_land_lease'). % [19],[20]

% 7_direct_or_indirect_advantage
direct_targeting('2013_lithuania_state_land_lease', 'AgroBaltic UAB'). % [15]

% 8_active_transfer_of_resources
active_resource_flow('2013_lithuania_state_land_lease', '2,800_hectares_state_owned_agricultural_land'). % [2],[15]
resource_of_central_state_entity('2,800_hectares_state_owned_agricultural_land'). % [3],[21]

% 9_foregoing_revenue
actual_price_goods_service('2013_lithuania_state_land_lease', 6). % [10]
market_price_goods_service('2013_lithuania_state_land_lease', 40). % [18]
access_domain_resources_rights('2013_lithuania_state_land_lease', 6). % [10]
market_value_domain_resources_rights('2013_lithuania_state_land_lease', 40). % [18]
selection_process_for_measure('2013_lithuania_state_land_lease', '2013_lithuania_ag_land_tender'). % [2],[15]
ex_ante('2013_lithuania_land_use_obligation', '2013_lithuania_ag_land_tender'). % [6]
qualitative_selection_criteria('2013_lithuania_ag_land_tender'). % [6],[12]

% 10_imputability
adopted_or_administered_by('2013_lithuania_state_land_lease', 'Ministry of Agriculture of Lithuania'). % [1]
public_state_authority('Ministry of Agriculture of Lithuania', 'Lithuania'). % [1]
adopted_or_administered_by('2013_lithuania_ag_land_tender', 'Ministry of Agriculture of Lithuania'). % [1]
adopted_or_administered_by('2013_lithuania_state_land_lease', 'Ministry’s Land Administration Division'). % [3]
public_intra_state_authority('Ministry’s Land Administration Division', 'Lithuania'). % [3]
intrastate_of('Ministry’s Land Administration Division', 'Lithuania'). % [3]
