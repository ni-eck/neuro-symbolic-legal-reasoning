% 1_financial_activa
parsed_costs_relieved_monetary_obligations('aerolyze sa', 'sri_debt_waiver_2012', 18000000). % [14],[15]
parsed_money_received('aerolyze sa', 'developpement_occitanie_loan_conversion_2012', 6500000). % [17]
parsed_money_received('aerolyze sa', 'developpement_occitanie_capital_injection_2012', 7500000). % [18]
parsed_money_received('aerolyze sa', 'capinvest_equity_injection_2012', 21000000). % [21]
parsed_money_received('aerolyze sa', 'banking_consortium_funding_2012', 11500000). % [21]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
capital_injection('developpement_occitanie_capital_injection_2012'). % [18]
converting_private_law_claims('developpement_occitanie_loan_conversion_2012'). % [17]
waiver_private_law_claims('sri_debt_waiver_2012'). % [14]
capital_injection('capinvest_equity_injection_2012'). % [21]
capital_injection('banking_consortium_funding_2012'). % [21]
is_shareholder_of('société de restructuration industrielle', 'aerolyze sa'). % [4]
is_shareholder_of('capinvest sas', 'aerolyze sa'). % [5]
is_shareholder_of('developpement occitanie sa', 'aerolyze sa'). % [7]

% 5_act_of_public_nature
monetary_subsidy('sri_debt_waiver_2012'). % [14],[15],[16]
monetary_subsidy('developpement_occitanie_loan_conversion_2012'). % [17]
monetary_subsidy('developpement_occitanie_capital_injection_2012'). % [18]
monetary_subsidy('capinvest_equity_injection_2012'). % [21]
monetary_subsidy('banking_consortium_funding_2012'). % [21]

% 6_MEO
intervention_decided_at_same_time('sri_debt_waiver_2012', 'société de restructuration industrielle', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('developpement_occitanie_loan_conversion_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('developpement_occitanie_capital_injection_2012', 'developpement occitanie sa', 'capinvest sas'). % [9],[21]
intervention_decided_at_same_time('capinvest_equity_injection_2012', 'capinvest sas', 'société de restructuration industrielle'). % [9],[21]
intervention_decided_at_same_time('capinvest_equity_injection_2012', 'capinvest sas', 'developpement occitanie sa'). % [9],[21]
intervention_decided_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'société de restructuration industrielle'). % [21],[22]
intervention_decided_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'developpement occitanie sa'). % [21],[22]
intervention_decided_at_same_time('banking_consortium_funding_2012', 'banking consortium', 'capinvest sas'). % [21],[22]
intervention_is_significant('capinvest sas'). % [21],[24]
intervention_is_significant('banking consortium'). % [21],[26]
textual_evidence_liquidation_or_reduction_more_economic('sri_debt_waiver_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('developpement_occitanie_loan_conversion_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('developpement_occitanie_capital_injection_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('capinvest_equity_injection_2012'). % [31]
textual_evidence_liquidation_or_reduction_more_economic('banking_consortium_funding_2012'). % [31]

% 7_direct_or_indirect_advantage
direct_targeting('sri_debt_waiver_2012', 'aerolyze sa'). % [14],[15]
direct_targeting('developpement_occitanie_loan_conversion_2012', 'aerolyze sa'). % [17]
direct_targeting('developpement_occitanie_capital_injection_2012', 'aerolyze sa'). % [18]
direct_targeting('capinvest_equity_injection_2012', 'aerolyze sa'). % [21]
direct_targeting('banking_consortium_funding_2012', 'aerolyze sa'). % [21]

% 8_active_transfer_of_resources
active_resource_flow('sri_debt_waiver_2012', 'sri_debt_waiver_2012'). % [14],[15]
resource_of_public_undertaking('sri_debt_waiver_2012'). % [4],[14],[15],[16]
active_resource_flow('developpement_occitanie_loan_conversion_2012', 'developpement_occitanie_loan_conversion_2012'). % [17]
resource_of_public_undertaking('developpement_occitanie_loan_conversion_2012'). % [7],[17]
active_resource_flow('developpement_occitanie_capital_injection_2012', 'developpement_occitanie_capital_injection_2012'). % [18]
resource_of_public_undertaking('developpement_occitanie_capital_injection_2012'). % [7],[18],[19]
active_resource_flow('capinvest_equity_injection_2012', 'capinvest_equity_injection_2012'). % [21]
resource_of_private_body('capinvest_equity_injection_2012'). % [5],[21]
active_resource_flow('banking_consortium_funding_2012', 'banking_consortium_funding_2012'). % [21]
resource_of_private_body('banking_consortium_funding_2012'). % [21]

% 9_foregoing_revenue
general_waiving_revenue_public_or_criminal_law('sri_debt_waiver_2012'). % [14],[15]
achieving_policy_objective('sri_debt_waiver_2012', 'maintain industrial capacity and employment in the region'). % [12]
revenue_loss_is_justified_by_policy('maintain industrial capacity and employment in the region'). % [12]

% 10_imputability
adopted_or_administered_by('sri_debt_waiver_2012', 'société de restructuration industrielle'). % [14]
adopted_or_administered_by('developpement_occitanie_loan_conversion_2012', 'developpement occitanie sa'). % [17]
adopted_or_administered_by('developpement_occitanie_capital_injection_2012', 'developpement occitanie sa'). % [18]
adopted_or_administered_by('capinvest_equity_injection_2012', 'capinvest sas'). % [21]
adopted_or_administered_by('banking_consortium_funding_2012', 'banking consortium'). % [21]
is_public_undertaking('société de restructuration industrielle'). % [4]
public_undertaking_of_state('société de restructuration industrielle', 'france'). % [4]
is_public_undertaking('developpement occitanie sa'). % [7]
public_undertaking_of_intra_state('developpement occitanie sa', 'region of occitanie'). % [7]
public_intra_state_authority('region of occitanie', 'france'). % [7]
intrastate_of('region of occitanie', 'france'). % [7]
decision_dependence_on_state_or_intra_state('société de restructuration industrielle', 'sri_debt_waiver_2012'). % [11],[12]
acted_on_government_directives('société de restructuration industrielle', 'sri_debt_waiver_2012'). % [12]
strong_public_supervision('developpement occitanie sa', 'developpement_occitanie_capital_injection_2012'). % [20]
measure_scope_indicates_involvement('société de restructuration industrielle', 'sri_debt_waiver_2012'). % [12]
measure_scope_indicates_involvement('developpement occitanie sa', 'developpement_occitanie_capital_injection_2012'). % [20]
organic_link_with_state_or_intra_state('société de restructuration industrielle'). % [4]
organic_link_with_state_or_intra_state('developpement occitanie sa'). % [7]
strategic_sector('société de restructuration industrielle'). % [12]
strategic_sector('developpement occitanie sa'). % [12]
not_competing_under_normal_conditions('société de restructuration industrielle'). % [29],[30],[31]
not_competing_under_normal_conditions('developpement occitanie sa'). % [29],[30],[31]
