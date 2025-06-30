:- set_prolog_flag(unknown, fail).

% State aid conditions under Article 107(1) TFEU:
% A measure constitutes state aid if it:
% - grants an advantage,
% - is of state origin,
% - is selective,
% - affects trade between Member States and distorts or threatens to distort competition

state_aid(Measure, State) :-
    advantage(Measure),
    state_origin(Measure, State).
%    selectivity(Measure),
%    effect_on_trade_and_competition(Measure).

% ------------------------------------------------------------------
% Advantage Condition (Article 107(1) TFEU)
% ------------------------------------------------------------------

% A measure constitutes an advantage for an undertaking if:
% - it provides an economic benefit,
% - that benefit would not have been obtained under normal market conditions (this condition is not checked when the measure has no economic charachter),
% - it involves either a direct or indirect transfer of resources,
% - and no relevant exception applies.

advantage(Measure) :-
    economic_benefit(Undertaking, Measure),
    (exercise_of_public_authority(Measure)
    ;   not_obtained_under_normal_market_conditions(Measure)  ),
    (direct(Undertaking, Measure)
    ; indirect(Undertaking, Measure) ),
    \+ exception_advantage(Measure).

% ------------------------------------------------------------------
% Economic Benefit
% ------------------------------------------------------------------

% An economic benefit exists if the undertakings financial situation improves as a result of the measure.

economic_benefit(Undertaking, Measure) :-
    better_financial_situation(Undertaking, Measure).

% Several factors can lead to the improvement of the financial situation. These will be captured via:
% the money received, the money spent, the costs saved, value of the gained assets, the value of the lost assets and the value of new liabilites 
better_financial_situation(Undertaking, Measure) :-
    financial_situation_after(Undertaking, Measure, MoneyReceived, MoneySpend, CostsSaved, ValueAssetsGained, ValueAssetsLost, ValueNewLiabilities),
    ValueAfter is MoneyReceived - MoneySpend + CostsSaved + ValueAssetsGained - ValueAssetsLost - ValueNewLiabilities,
    ValueAfter > 0.

% ------------------------------------------------------------------
% Direct and Indirect Transfers
% ------------------------------------------------------------------

% A measure involves a direct transfer if there is a direct transfer of State resources to the undertaking.

direct(Undertaking, Measure) :-
    direct_transfer(Undertaking, Measure).

% A measure involves an indirect advantage if it channels secondary effects to identifiable undertakings or groups.

indirect(Undertaking, Measure) :-
    channeled_secondary_effects(Measure, Undertaking),
    (
        identifiable_undertaking(Undertaking)
    ;
        part_of_group_of_undertakings(Undertaking)
    ).


% ------------------------------------------------------------------
% Exception to the applicability of the Market Economy Operator test:
% measures that constitute an exercise of public authority and lack economic character.
% ------------------------------------------------------------------

exercise_of_public_authority(Measure) :-
    (
        subsidy(Measure);
        tax_exemption(Measure);
        tax_policy(Measure);
        payment_of_unemployment_benefits(Measure);
        social_security_benefits(Measure);
        social_policy(Measure);
        aid_for_restructuring_of_industrial_infrastructure(Measure);
        further_option_of_public_authority(Measure)
    ),
    \+ state_acted_as_shareholder(Measure).



% ------------------------------------------------------------------
% Market Economy Operator Test
% A benefit is not obtained under normal market conditions if a comparable market economy operator would not have acted similarly.
% ------------------------------------------------------------------


not_obtained_under_normal_market_conditions(Measure) :-
    \+ market_economy_operator_test(Measure).

% ------------------------------------------------------------------
% Market Economy Operator (MEO) test:
% Determines whether a State measure complies with market conditions.
% It is useful to distinguish between:
%   (i) situations where compliance can be directly established through
%       transaction-specific market data, and
%   (ii) situations where such data is unavailable, requiring indirect
%       methods of assessment.
% ------------------------------------------------------------------

market_economy_operator_test(Measure) :-
    (
        directly_established_compliance_with_market_conditions(Measure);
        method_based_compliance_with_market_conditions(Measure)
    ).

% ------------------------------------------------------------------
% A transactions compliance with market conditions can be directly established through transaction-specific market information in the following situations (i) where the transaction is carried out ‘pari passu’ by public entities and private operators; or (ii) where it concerns the sale and purchase of assets, goods and services (or other comparable transactions) carried out through a competitive, transparent non-discriminatory and unconditional tender procedure.
% ------------------------------------------------------------------

directly_established_compliance_with_market_conditions(Measure) :-
    pari_passu(Measure, PublicBody, PrivateOperator);
    sale_and_purchase_of_assets_goods_services_similar(Measure);


% ------------------------------------------------------------------
% 'Pari passu' transactions involve simultaneous participation by public
% and private operators under comparable conditions. The following
% criteria must be satisfied:
%   (a) Timing: interventions are decided and carried out simultaneously,
%       with no significant time lapse or change in economic conditions.
%   (b) Terms: public and private parties face the same terms and
%       conditions, including risk exposure over time.
%   (c) Significance: private participation is economically meaningful,
%       not merely symbolic.
%   (d) Comparability: public and private actors start from a comparable
%       position, e.g. in terms of prior exposure, transaction costs, or
%       synergy potential.
% ------------------------------------------------------------------

pari_passu(Measure, PublicBody, PrivateOperator) :-
    intervention_carried_at_same_time(Measure, PublicBody, PrivateOperator),
    same_terms_and_conditions(Measure, PublicBody, PrivateOperator),
    intervention_is_significant(PrivateOperator),
    comparable_starting_position(Measure, PublicBody, PrivateOperator).

% ------------------------------------------------------------------
% Sales or purchases of assets, goods, or services are presumed to comply
% with market conditions if conducted through a tender procedure that is:
%   - competitive
%   - transparent
%   - non-discriminatory
%   - unconditional
% ------------------------------------------------------------------

sale_and_purchase_of_assets_goods_services_similar(Measure) :-
    (
        sale_of_assets_goods_services_similar(Measure);
        purchase_of_assets_goods_services_similar(Measure)
    ),
    competitive(Measure, Tender),
    transparent(Measure, Tender),
    non_discriminatory(Measure, Tender),
    unconditional(Measure, Tender).


% ------------------------------------------------------------------
% If compliance cannot be directly established (i.e. no 'pari passu'
% investor or qualifying tender), it may still be assessed by:
%   (i) benchmarking against comparable private transactions, or
%   (ii) applying a generally accepted economic assessment methodology.
% ------------------------------------------------------------------

method_based_compliance_with_market_conditions(Measure) :-
    (
        benchmarking(Measure);
        other_assessment_methods(Measure)
    ).

% ------------------------------------------------------------------
% Benchmarking assesses whether the transaction terms are in line with
% those of comparable transactions carried out by comparable private
% operators in comparable situations.
% ------------------------------------------------------------------

benchmarking(Measure) :-
    comparable_type(Measure, Transaction),
    comparable_operators(Measure, Transaction),
    comparable_situation(Measure, Transaction).

% ------------------------------------------------------------------
% Standard methodologies may also be used to assess compliance with market conditions.
% A transaction may be deemed compliant if its expected returns or
% conditions are equal to or better than the outcome of an accepted
% assessment method.
% ------------------------------------------------------------------

other_assessment_methods(Measure) :- 
    accepted_standard_assessment_methodology(Method),
    method_applied_to_measure(Method, Measure),
    measure_conditions_or_return_better_or_similar_to_method_outcome(Measure, Method).


% ------------------------------------------------------------------
% Exception: No Advantage (Altmark and related principles)
% ------------------------------------------------------------------

% A measure does not constitute an advantage if it meets one of the following exceptions:
% - compensation for the provision of a service of general economic interest,
% - reimbursement of illegally levied taxes,
% - compensation for damage,
% - payment for expropriation.

exception_advantage(Measure) :-
    compensation_for_service_of_general_economic_interest(Measure);
    reimbursement_of_illegally_levied_taxes(Measure);
    compensation_for_damage(Measure);
    compensation_for_an_expropriation(Measure).

% ------------------------------------------------------------------
% Compensation for service of General Economic Interest Exception
% Altmark Criteria:
% - The recipient undertaking must actually have public service obligations.
% - The public service obligations must be clearly defined.
% - The parameters for calculating compensation must be established
%    in advance, objectively, and transparently.
% - a) If a public procurement procedure was used:
%       Compensation must not exceed what is necessary to cover the costs 
%       of discharging the obligations, taking into account relevant receipts 
%       and a reasonable profit.
%    b) If no public procurement procedure was used:
%       Compensation must be based on the costs of a well-run, typical 
%       undertaking with adequate means, plus a reasonable profit.
% ------------------------------------------------------------------

compensation_for_service_of_general_economic_interest(Measure) :-
    public_service_obligation(Obligation),
    measure_related_to_obligation(Measure, Obligation),
    clearly_defined(Obligation),
    calculated_in_advance(CompensationParameters, Measure),
    calculated_objectively(CompensationParameters, Measure),
    calculated_transparently(CompensationParameters, Measure),
    (
        % --- Case A: Public procurement procedure used ---
        public_procurement_procedure(Measure),
        compensation_amount(Measure, Amount),
        actual_costs(Measure, Costs),
        reasonable_profit(Measure, Profit),
        Amount =< Costs + Profit

    ;
        % --- Case B: No public procurement procedure used ---
        \+ public_procurement_procedure(Measure),
        compensation_amount(Measure, Amount),
        hypothetical_cost(Measure, HypotheticalCosts),
        reasonable_profit(Measure, Profit),
        Amount =< HypotheticalCosts + Profit
    ).


% ------------------------------------------------------------------------------
% State Origin
% ------------------------------------------------------------------------------
% A measure is of state origin if:
% (1) The advantage the measure grants is through state resources, and
% (2) The measure is imputable to a state 
% ------------------------------------------------------------------------------
state_origin(Measure, State) :- 
    granted_through_state_resources(Measure),
    imputable_to_state(Measure, State).

% ------------------------------------------------------------------------------
% The advantage the measure grants is through state resources if there is a transfer of state resources and the resources involved qualify as state resources.
% ------------------------------------------------------------------------------
granted_through_state_resources(Measure) :- 
    transfer_of_resources(Measure),
    state_resource(Resource, Measure).

% ------------------------------------------------------------------------------
% Definition of State Resources
% Includes:
% (a) Resources of the public sector
% (b) Resources of private bodies, when the resources are under public control prior to transfer
% (c) Resources of public or private bodies appointed by the state to administer aid
% (d) Resources under joint control with other Member States
% Excludes:
% - Resources awarded by the European Union or EU financial institutions without discretion by national authorities
% ------------------------------------------------------------------------------
state_resource(Resource, Measure) :-
    (
        resource_of_public_sector(Resource, Measure)
        ;
        (resource_of_private_body(Resource, Measure), under_public_control(Resource))
        ;
        resource_of_body_appointed_by_state_to_administer_aid(Resource, Measure)
        ;
        resource_under_joint_control_with_other_member_states(Resource, Measure)
    ),
    \+ special_eu_fundings(Resource, Measure).

% ------------------------------------------------------------------------------
% Public sector resources include central and intra-state (federal, regional) entities
% ------------------------------------------------------------------------------
resource_of_public_sector(Resource, Measure) :- 
    resource_of_central_state(Resource, Measure);
    resource_of_intrastate_entity(Resource, Measure).

% ------------------------------------------------------------------------------ 
% Resources awarded directly by the Union or EU financial institutions, with no discretion for national authorities, do not constitute state resources.
% ------------------------------------------------------------------------------

special_eu_fundings(Resource, Measure):-
    (
        awarded_by_union(Resource, Measure)
        ;
        awarded_by_european_investment_bank(Resource, Measure)
        ;
        awarded_by_european_investment_fund(Resource, Measure)
    ),
    no_discretion_national_authorities(Resource).


% ------------------------------------------------------------------------------
% Transfer of Resources
% A transfer of state resources occurs through:
% (1) Active spending
% (2) Foregoing of state revenue
% (3) A firm and concrete commitment to make state resources available at a later point
% ------------------------------------------------------------------------------

transfer_of_resources(Measure) :- 
    active_spending(Measure)
    ;
    foregoing_state_revenue(Measure)
    ;
    firm_and_concrete_commitment_to_make_resources_available_at_later_point(Measure).

% ------------------------------------------------------------------------------
% Foregoing State Revenue
% Includes cases where:
% - Waiving revenue which would otherwise have been paid to the State
% - Goods/services are offered below market price
% - Make investments inconsistent with the Market Economy Operator (MEO) test
% - Access to Public domain or natural resources or granting of special or exclusive rights without adequate remuneration in line with market rates
%   Exception may apply if the authority acts as a regulator for a legitimate public purpose
% - Authorities do not charge the standard rate under their general system for access to the public domain or natural resources, or for granting certain special or exclusive rights
% ------------------------------------------------------------------------------

foregoing_state_revenue(Measure) :- 
    (
        waiving_revenue(Measure)
    )
    ;
    (
        % Case 2: Goods or services priced below market value
        actual_price_goods_service(Measure, ActualPrice),
        market_price_goods_service(Measure, MarketPrice),
        ActualPrice < MarketPrice
    )
    ;
    % Case 3: Investment fails private investor test
    investment_no_long_term_return(Measure)
    ;
    (
        % Case 4: Access to public domain, natural resources or special or exclusive rights granted below market value
        access_domain_resources_rights(Measure, AccessValue),
        actual_value_domain_resources_rights(Measure, MarketValue),
        AccessValue < MarketValue,
        \+ acting_as_regulator_for_resources_rights(Measure)
    )
    ;
    (
        % Case 5: Sale of rights/resources below general system rates
        sell_price_domain_resources_rights(Measure, SellPrice),
        actual_price_domain_resources_rights(Measure, SystemRates),
        SellPrice < SystemRates
    ).

% ------------------------------------------------------------------------------
% Waiving of state revenue - examples:
% a ‘shortfall’ in tax and social security revenue due to exemptions or reductions in taxes or social security contributions granted by the Member State, or exemptions from the obligation to pay fines or other pecuniary penalties.
% general: waiving revenue which would otherwise have been paid to the State    
% ------------------------------------------------------------------------------

waiving_revenue(Measure) :-
    exemptions_reductions_taxes(Measure);
    exemptions_reductions_social_security(Measure);
    exemptions_fines(Measure);
    exemptions_pecuniary_penalties(Measure);
    general_waiving_revenue(Measure).

% ------------------------------------------------------------------------------
% Exception: Acting as a regulator may justify foregoing revenue
% Conditions:
% - Selection process is based on qualitative criteria 
% - Criteria were established ex ante in a transparent and non-discriminatory manner
% - Link between achieving the regulatory purpose and the foregoing of revenue
% ------------------------------------------------------------------------------

acting_as_regulator_for_resources_rights(Measure) :-
    selection_process_for_measure(Measure, Process),
    qualitative_selection_criteria(Process),
    establishing_of_selection_criteria(Process),
    revenue_forfeited_for_regulatory_purpose(Measure).


establishing_of_selection_criteria(Process) :-
    ex_ante(Criteria, Process),
    transparent(Criteria, Process),
    non_discriminatory(Criteria, Process).

revenue_forfeited_for_regulatory_purpose(Measure) :-
    achieving_policy_objective(Measure, RegulatoryPurpose),
    revenue_loss_is_justified_by_policy(RegulatoryPurpose).


% ------------------------------------------------------------------------------
% Imputability to the State
% ------------------------------------------------------------------------------
% A measure is imputable to the State if:
% (1) It is granted by a public authority (regardless of the authority’s legal autonomy), OR
% (2) A public authority designates a public or private body to administer it, OR
% (3) It is granted by a public undertaking, and indicators show involvement by the State
% 
% Exception: The measure is not imputable if the Member State is under an obligation to implement it under Union law and has no discretion in doing so.
% ------------------------------------------------------------------------------

imputable_to_state(Measure, State) :- 
    (
        granting_entity(Measure, Entity),
        public_authority(Entity, State)
    )
    ;
    (
        granted_by_administrator(Measure, Administrator),
        designated_by(Administrator, Entity),
        public_authority(Entity, State)
    )
    ;
    (
        granted_by_public_undertaking(Measure, GrantingUndertaking),
        public_undertaking(GrantingUndertaking, State),
        indicator_of_state_involvement(GrantingUndertaking, Measure)
    ),
    \+ imputability_exception(Measure).


% ------------------------------------------------------------------------------
% Indicator of state involvement for decisions of public undertakings:
% Measure specific indicators
% (a) decision was not taken without taking account of the requirements of the public authorities
% (b) undertaking had to take account of directives issued by governmental bodies
% (c) strong supervision by public authorities
% (d) the scope of the measure suggests state involvement
% (e) other indicators of involvement of the public authorities in adopting the measure
% Structural indicators
% (a) factors of an organic nature which link the public undertaking to the State
% (b) integration of the public undertaking into the structures of the public administration
% (c) operates in a strategic sector and does not face normal market competition
% ------------------------------------------------------------------------------

indicator_of_state_involvement(GrantingUndertaking, Measure) :-
    decision_dependence_on_state(GrantingUndertaking, Measure);
    acted_on_government_directives(GrantingUndertaking, Measure);
    measure_scope_indicates_involvement(GrantingUndertaking, Measure);
    other_indicators_of_public_involvement(GrantingUndertaking, Measure).

indicator_of_state_involvement(GrantingUndertaking, _) :-
    organic_link_with_state(GrantingUndertaking);
    integrated_into_public_administration(GrantingUndertaking);
    (strategic_sector(GrantingUndertaking),
    not_competing_under_normal_conditions(GrantingUndertaking));
    strong_public_supervision(GrantingUndertaking).

% ------------------------------------------------------------------------------
% Exception: No imputability where the Member State is under a Union law obligation and has no discretion in implementing the measure
% ------------------------------------------------------------------------------

imputability_exception(Measure) :- 
    implementation_obligation(Measure, UnionLaw).


