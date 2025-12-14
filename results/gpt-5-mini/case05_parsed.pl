% 1_financial_activa
textual_evidence_of_improved_financial_situation(specialised_investment_structures, dl_153_2011_article_6). % [19],[20],[13]
textual_evidence_of_improved_financial_situation(fund_managing_entities, dl_153_2011_article_6). % [20]
textual_evidence_of_improved_financial_valuation(specialised_investment_structures, dl_153_2011_article_6). % [19]
caused_change_of_financial_value(specialised_investment_structures, dl_153_2011_article_6). % [19]

% 2_financial_passiva
% Nothing

% 3_altmark
% Nothing

% 4_act_of_private_nature
fallback_act_of_economic_nature(dl_153_2011_article_6). % [5],[13],[19],[21]

% 5_act_of_public_nature
tax_related(dl_153_2011_article_6). % [1],[5],[13],[14]

% 6_MEO
% Nothing

% 7_direct_or_indirect_advantage
direct_targeting('dl_153_2011_article_6','fund_managing_entities, specialised_investment_structures'). % [5],[13]
secondary_effects('dl_153_2011_article_6','fund_managing_entities, specialised_investment_structures','increased_share_demand'). % [19]
secondary_effects('dl_153_2011_article_6','fund_managing_entities, specialised_investment_structures','higher_management_and_entry_fees'). % [20]
secondary_effects('dl_153_2011_article_6','fund_managing_entities, specialised_investment_structures','greater_liquidity_in_small_midcap_segment'). % [21],[22]
channeled_to_group_of_undertakings('fund_managing_entities, specialised_investment_structures','increased_share_demand'). % [19]
channeled_to_group_of_undertakings('fund_managing_entities, specialised_investment_structures','higher_management_and_entry_fees'). % [20]

% 8_active_transfer_of_resources
active_resource_flow(dl_153_2011_article_6, 'loss_of_tax_revenue'). % [13],[14],[17],[18]
resource_of_central_state_entity('loss_of_tax_revenue'). % [17],[18]

% 9_foregoing_revenue
exemptions_reductions_taxes('dl_153_2011_article_6'). % [5],[13],[14]
achieving_policy_objective('dl_153_2011_article_6','stimulate_economic_growth_and_improve_public_finances'). % [2],[11],[21]

% 10_imputability
adopted_or_administered_by('dl_153_2011_article_6','french_government'). % [1],[5]
public_state_authority('french_government','france'). % [1]
public_state_authority('french_authorities','france'). % [17],[18]
