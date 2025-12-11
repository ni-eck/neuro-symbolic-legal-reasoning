:- set_prolog_flag(unknown, fail).
% ------------------------------------------------------------------
% State aid conditions under Article 107(1) TFEU:
% ------------------------------------------------------------------
% A measure constitutes state aid if it:
% - grants an advantage,
% - is of state origin,
% - is selective,
% - affects trade between Member States and distorts or threatens to distort competition
% ------------------------------------------------------------------
state_aid(Measure, State) :-
    advantage(Measure, Beneficiary),
    state_origin(Measure, State).
%    selectivity(Measure),
%    effect_on_trade_and_competition(Measure).

% ------------------------------------------------------------------
% Advantage
% ------------------------------------------------------------------
% A measure constitutes an advantage for an undertaking if:
% - it provides an economic benefit,
% - that benefit would not have been obtained under normal market conditions
% - the measure directly or indirectly favours undertaking(s),
% - and no relevant exception applies.
% ------------------------------------------------------------------
advantage(Measure, Beneficiary) :-
    economic_benefit(Beneficiary, Measure),
    not_obtained_under_normal_market_conditions(Measure),
    (
        direct(Measure, Beneficiary)
    ;
        indirect(Measure, Beneficiary)
    ),
    \+ exception_advantage(Measure).

% ------------------------------------------------------------------
% Economic Benefit
% ------------------------------------------------------------------
% An economic benefit exists if the undertaking is in a better financial position
% or has a higher valuation as a result of the measure.
%
% Compensation for discharging public service obligations is treated separately.
% Under a definition-based view, such compensation would only be considered a benefit
% if it exceeds the actual costs of discharging the obligation.
%
% However, the Altmark Trans judgment introduced a different approach: 
% compensation that merely covers operating costs can still constitute a benefit 
% unless strict legal conditions are met. Therefore, a helper predicate is used to 
% capture public service compensation and handle the Altmark exception later.
% ------------------------------------------------------------------
economic_benefit(Undertaking, Measure) :-
    (
    improves_financial_position(Undertaking, Measure) 
    ;
    compensation_for_public_service_obligation(Measure, Undertaking, Obligation)
    ).

% ------------------------------------------------------------------
% Better Financial Situation
% ------------------------------------------------------------------
% This predicate holds if the undertaking has a measurably improved financial situation
% due to the measure. Improvement is determined by one of:
% 1. A calculated net financial
% 2. An increase in company valuation, causally linked to the measure
% 3. Textual evidence from the case record indicating an improvement
%    in financial position or valuation, even in the absence of numeric data
% ------------------------------------------------------------------
improves_financial_position(Beneficiary, Measure) :-
    (
        financial_situation_after(
            Beneficiary, Measure,
            MoneyReceived, MoneySpent,
            AssetsGained, AssetsLost,
            ValueReceivedRightsLicenses, ValueReceivedServices,
            ValueGrantedRightsLicenses, ValueGrantedServices,
            CostRelievedObligations, OtherCostsSaved, OtherLiabilitiesIncurred
        ),
        number(MoneyReceived), number(MoneySpent),
        number(AssetsGained), number(AssetsLost),
        number(ValueReceivedRightsLicenses), number(ValueReceivedServices),
        number(ValueGrantedRightsLicenses), number(ValueGrantedServices),
        number(CostRelievedObligations), number(OtherCostsSaved),
        number(OtherLiabilitiesIncurred),
        NetChange is MoneyReceived - MoneySpent
                  + AssetsGained - AssetsLost
                  + ValueReceivedRightsLicenses + ValueReceivedServices
                  - ValueGrantedRightsLicenses - ValueGrantedServices
                  + CostRelievedObligations + OtherCostsSaved
                  - OtherLiabilitiesIncurred,
        NetChange > 0
    )
    ;
    textual_evidence_of_improved_financial_situation(Beneficiary, Measure)
    ;
    (
        financial_valuation_after(Beneficiary, Measure, AfterVal),
        financial_valuation_before(Beneficiary, Measure, BeforeVal),
        number(AfterVal), number(BeforeVal),
        caused_change_of_financial_value(Beneficiary, Measure),
        AfterVal > BeforeVal
    )
    ;
    textual_evidence_of_improved_financial_valuation(Beneficiary, Measure).

% ------------------------------------------------------------------
% Financial Situation After the Measure
% ------------------------------------------------------------------
% The financial situation after the measure looks at:
%    - Income received
%    - Spending avoided
%    - Value of assets gained or lost
%    - Value of rights or licenses received
%    - Value of services received
%    - Value of rights or licenses granted or to grant
%    - Value of services granted or to grant
%    - Cost relief from lifted non monetary obligations
%    - Cost relief from lifted monetary obligations
%    - Other Liabilities incurred
%
% It only succeeds if at least one relevant financial component was
% actually parsed (not just defaulted to zero).
%
% Missing components fall back to zero and do not block evaluation.
% This rule does *not* by itself determine whether aid exists—it simply
% prepares the data for further evaluation.
% ------------------------------------------------------------------

financial_situation_after(
    Beneficiary, Measure,
    MoneyReceived, MoneySpent,
    AssetsGained, AssetsLost,
    ValueReceivedRightsLicenses, ValueReceivedServices,
    ValueGrantedRightsLicenses, ValueGrantedServices,
    CostRelievedObligations, OtherCostsSaved, OtherLiabilitiesIncurred
) :-
    financial_data_parsed(Beneficiary, Measure),
    money_received(Beneficiary, Measure, MoneyReceived),
    money_spent(Beneficiary, Measure, MoneySpent),
    assets_gained(Beneficiary, Measure, AssetsGained),
    assets_lost(Beneficiary, Measure, AssetsLost),
    value_received_rights_licenses(Beneficiary, Measure, ValueReceivedRightsLicenses),
    value_received_services(Beneficiary, Measure, ValueReceivedServices),
    value_granted_rights_licenses(Beneficiary, Measure, ValueGrantedRightsLicenses),
    value_granted_services(Beneficiary, Measure, ValueGrantedServices),
    cost_relieved_legal_obligations(Beneficiary, Measure, CostRelievedObligations),
    costs_relieved_monetary_obligations(Beneficiary, Measure, OtherCostsSaved),
    other_liabilities_incurred(Beneficiary, Measure, OtherLiabilitiesIncurred).

% ------------------------------------------------------------------
% Fallbacks with parsed/default separation
% ------------------------------------------------------------------

money_received(Beneficiary, Measure, Value) :-
    parsed_money_received(Beneficiary, Measure, Value), !.
money_received(_, _, 0).

money_spent(Beneficiary, Measure, Value) :-
    parsed_money_spent(Beneficiary, Measure, Value), !.
money_spent(_, _, 0).

assets_gained(Beneficiary, Measure, Value) :-
    parsed_assets_gained(Beneficiary, Measure, Value), !.
assets_gained(_, _, 0).

assets_lost(Beneficiary, Measure, Value) :-
    parsed_assets_lost(Beneficiary, Measure, Value), !.
assets_lost(_, _, 0).

value_received_rights_licenses(Beneficiary, Measure, Value) :-
    parsed_value_received_rights_licenses(Beneficiary, Measure, Value), !.
value_received_rights_licenses(_, _, 0).

value_received_services(Beneficiary, Measure, Value) :-
    parsed_value_received_services(Beneficiary, Measure, Value), !.
value_received_services(_, _, 0).

value_granted_rights_licenses(Beneficiary, Measure, Value) :-
    parsed_value_granted_rights_licenses(Beneficiary, Measure, Value), !.
value_granted_rights_licenses(_, _, 0).    

value_granted_services(Beneficiary, Measure, Value) :-
    parsed_value_granted_services(Beneficiary, Measure, Value), !.
value_granted_services(_, _, 0).

cost_relieved_legal_obligations(Beneficiary, Measure, Value) :-
    parsed_cost_relieved_legal_obligations(Beneficiary, Measure, Value), !.
cost_relieved_legal_obligations(_, _, 0).

costs_relieved_monetary_obligations(Beneficiary, Measure, Value) :-
    parsed_costs_relieved_monetary_obligations(Beneficiary, Measure, Value), !.
costs_relieved_monetary_obligations(_, _, 0).

other_liabilities_incurred(Beneficiary, Measure, Value) :-
    parsed_other_liabilities_incurred(Beneficiary, Measure, Value), !.
other_liabilities_incurred(_, _, 0).

% ------------------------------------------------------------------
% Check that at least one real financial component was parsed, that can lead to an economical benefit
% ------------------------------------------------------------------

financial_data_parsed(Beneficiary, Measure) :-
    parsed_money_received(Beneficiary, Measure, _)
    ;
    parsed_assets_gained(Beneficiary, Measure, _)
    ;
    parsed_assets_lost(Beneficiary, Measure, _)
    ;
    parsed_value_received_rights_licenses(Beneficiary, Measure, _)
    ;
    parsed_value_received_services(Beneficiary, Measure, _)
    ;
    parsed_cost_relieved_legal_obligations(Beneficiary, Measure, _)
    ;
    parsed_costs_relieved_monetary_obligations(Beneficiary, Measure, _).


% ------------------------------------------------------------------
% Compensation for Public Service Obligations
% ------------------------------------------------------------------
% This predicate holds if the measure compensates for the cost of fulfilling 
% a legally defined public service obligation.
% ------------------------------------------------------------------
compensation_for_public_service_obligation(Measure, Beneficiary, Obligation) :-
    compensation_for_obligation(Measure, Beneficiary, Obligation),
    is_public_service_obligation(Obligation).

% ------------------------------------------------------------------
% Not obtained under normal market conditions
% ------------------------------------------------------------------
% A benefit is not obtained under normal market conditions if
% (1) the public authority adopts the measure while acting in its sovereign capacity, or
% (2) the public authority acts as an economic operator and a comparable market economy operator would not have acted similarly.
% ------------------------------------------------------------------
not_obtained_under_normal_market_conditions(Measure) :-
    exercise_of_public_power(Measure);
    (act_of_economic_nature(Measure),
    negative_market_economy_operator_test(Measure)
    ).

% ------------------------------------------------------------------
% Exercise of public power
% ------------------------------------------------------------------
% To assess whether a measure constitutes an exercise of public power 
% or an act of economic nature, it is not the form of the measure that 
% is decisive, but rather its nature, its purpose, and the rules to 
% which it is subject.
%
% These elements involve many indeterminate legal concepts. 
% We therefore approximate the assessment based on case law:
% A measure is considered an exercise of public power if it is by its 
% nature a sovereign activity and does not involve the state acting with 
% shareholder objectives or pursuing an economic objective that might 
% also be pursued by a private investor.
% ------------------------------------------------------------------
exercise_of_public_power(Measure) :-
    (
        monetary_subsidy(Measure);
        tax_related(Measure);
        payment_of_unemployment_benefits(Measure);
        social_security_benefits(Measure);
        social_policy(Measure);
        compensation_for_public_service_obligation(Measure, Undertaking, Obligation);
        granting_access_to_public_domain_resources_special_or_exclusive_rights(Measure);
        reimbursement_of_illegally_levied_charges_or_dues(Measure);
        compensation_for_damage(Measure);
        compensation_for_an_expropriation(Measure);
        regulatory_capacity(Measure);
        further_option_of_public_authority(Measure)
    ),
    \+ acting_with_shareholder_objectives(Actor, Measure),
    \+ economic_objective_similar_to_private_investor(Measure).


acting_with_shareholder_objectives(Actor, Measure) :-
    follows_shareholder_objectives(Actor, Measure),
    (
        is_shareholder_of(Actor, Beneficiary)
    ;
        parent_is_shareholder_of(Actor, Parent, Beneficiary)
    ),
    adopted_or_administered_by(Measure, Actor).

% ------------------------------------------------------------------
% Act of economic nature
% ------------------------------------------------------------------
% An act of economic nature is identified in three ways:
% (1) Hardcoded examples based on their inherent market-facing form
% (2) Measures that are guided by shareholder or investment objectives
% (3) A general fallback rule
% ------------------------------------------------------------------
act_of_economic_nature(Measure) :-
    loan(Measure);
    capital_injection(Measure);
    purchase_lease_rent_similar(Measure);
    sell_lease_rent_similar(Measure);
    waiver_private_law_claims(Measure); 
    converting_private_law_claims(Measure);
    acting_with_shareholder_objectives(Measure);
    economic_objective_similar_to_private_investor(Measure);
    fallback_act_of_economic_nature(Measure).

% ------------------------------------------------------------------
% Market Economy Operator (MEO) test:
% ------------------------------------------------------------------
% A measure fails the MEO test if:
%   - it cannot be justified based on direct or indirect market benchmarks, and
%   - it is worse than expert expectations, or
%   - liquidation/reduction would have been more rational economically.
% ------------------------------------------------------------------

negative_market_economy_operator_test(Measure) :-
    (
        \+ directly_established_compliance_with_market_conditions(Measure),
        \+ method_based_compliance_with_market_conditions(Measure),
        worse_than_market_conditions(Measure)
    ); 
    liquidation_or_reduction_more_economic(Measure).

% ------------------------------------------------------------------
% Direct compliance with market conditions
% ------------------------------------------------------------------
% A transactions compliance with market conditions can be directly established through transaction-specific market information in the following situations 
% (i) where the transaction is carried out ‘pari passu’ by public entities and private operators; or 
% (ii) where it concerns the sale and purchase of assets, goods and services (or other comparable transactions) carried out through a competitive, transparent non-discriminatory and unconditional tender procedure.
% ------------------------------------------------------------------

directly_established_compliance_with_market_conditions(Measure) :-
    (
    pari_passu(Measure, Actor, PrivateOperator)
    ;
    qualifying_tender_procedure(Measure)
    ).

% ------------------------------------------------------------------
% 'Pari passu' condition
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
%       As the normal case is that the starting point is similar, this will be modeled with NAF
% ------------------------------------------------------------------

pari_passu(Measure, Actor, PrivateOperator) :-
    intervention_decided_at_same_time(Measure, Actor, PrivateOperator),
    intervention_carried_at_same_time(Measure, Actor, PrivateOperator),    
    same_terms_and_conditions(Measure, Actor, PrivateOperator),
    intervention_is_significant(PrivateOperator),
    \+ not_comparable_starting_position(Measure, Actor, PrivateOperator).



% ------------------------------------------------------------------
% Qualifying tender procedure
% ------------------------------------------------------------------
% Sales or purchases of assets, goods, or services are presumed to comply
% with market conditions if conducted through a tender procedure that is:
%   - competitive
%   - transparent
%   - non-discriminatory
%   - unconditional
% ------------------------------------------------------------------

qualifying_tender_procedure(Measure) :-
    (
        sell_lease_rent_similar(Measure);
        purchase_lease_rent_similar(Measure)
    ),
    tender_used(Measure, Tender),
    competitive(Measure, Tender),
    transparent(Measure, Tender),
    non_discriminatory(Measure, Tender),
    unconditional(Measure, Tender).

% ------------------------------------------------------------------
% If compliance cannot be directly established (i.e. no 'pari passu'
% investor or qualifying tender), it may still be assessed by:
%   (i) benchmarking against comparable private transactions, or
%   (ii) applying a generally accepted economic assessment methodology.
%   Standard methodologies may also be used to assess compliance with market conditions.
%   A transaction may be deemed compliant if its expected returns or conditions
%   are equal to or better than the outcome of an accepted assessment method.
%   As the cases do not provide enough information to apply assessment methods
%   directly, we will replace them with expert expectations.
%   Furthermore, it is often easier to check whether a transaction does *not*
%   comply with market conditions, as indications of non-compliance are more 
%   frequently mentioned in case descriptions. This will be captured with the below_expert_market_expectations(Measure) predicate.
% ------------------------------------------------------------------

method_based_compliance_with_market_conditions(Measure) :-
    benchmarking(Measure).

% ------------------------------------------------------------------
% Benchmarking assesses whether the transaction terms are in line with
% those of comparable transactions carried out by comparable private
% operators in comparable situations.
% ------------------------------------------------------------------

benchmarking(Measure) :-
    comparable_type(Measure, Transaction),
    comparable_operators(Measure, Transaction),
    comparable_situation(Measure, Transaction).

% ------------------------------------------------------------------------------
% worse than expert expectations, evaluations or assumptions
% ------------------------------------------------------------------------------
% A measure does not comply with the market if:
% (1) The measure’s financial terms are worse than expert ex ante expectations or evaluations
% (2) The measure’s non-financial terms are worse than expert ex ante assumptions
% (3) Expert would not have performed a similar transaction ex ante
% ------------------------------------------------------------------------------
worse_than_market_conditions(Measure) :-

    (expert_financial_expectation(Measure, ExpectedTerms),
     measure_financial_terms(Measure, ActualTerms),
     ((number(ActualTerms), number(ExpectedTerms), ActualTerms < ExpectedTerms);
      textual_evidence_worse_financial_terms(Measure)));

    (expert_nonfinancial_assumption(Measure, ExpectedTerms),
    measure_nonfinancial_terms(Measure, ActualTerms),
    ((number(ActualTerms), number(ExpectedTerms), ActualTerms < ExpectedTerms);
    textual_evidence_worse_nonfinancial_terms(Measure)));
    
    (expert_evaluation_on_measure_or_similar_action(Evaluation, Expert, Measure),
     ex_ante_evaluation(Evaluation, Measure),
     not_in_favour_of_measure_or_similar_action(Evaluation, Measure)).

% ------------------------------------------------------------------------------
% Liquidating or reducing the investment is more economically rational than 
% making additional resources available
% ------------------------------------------------------------------------------
% If liquidating or reducing the investment is more economically rational than 
% making additional resources available, then any subsequent investments may also 
% be considered State aid.
% This is the case when:
%   - the expected return from liquidation or reduction is higher than the expected 
%     return from additional investment, or
%   - it follows from a textual evidence
% ------------------------------------------------------------------------------

liquidation_or_reduction_more_economic(Measure) :-
    ( expected_return(Measure, ExpectedReturnInvest),
      possible_liquidation_or_reduction(ExpectedReturnLiquidationReduction),
      ( (number(ExpectedReturnInvest), 
         number(ExpectedReturnLiquidationReduction, Beneficiary),
         ExpectedReturnLiquidationReduction > ExpectedReturnInvest)
        ;
        textual_evidence_liquidation_or_reduction_more_economic(Measure)
      )
    ).

% ------------------------------------------------------------------
% Direct Advantage
% ------------------------------------------------------------------
% A measure is direct if it is specifically targeted at an identifiable undertaking or group of undertakings.
% ------------------------------------------------------------------------------
direct(Measure, Beneficiary) :-
    direct_targeting(Measure, Beneficiary).

% ------------------------------------------------------------------
% Indirect Advantage
% ------------------------------------------------------------------
% A measure involves an indirect advantage if it channels secondary effects to identifiable undertakings or groups.
% ------------------------------------------------------------------
indirect(Measure, Beneficiary) :-
    secondary_effects(Measure, Beneficiary, Effect),
    (
        channeled_to_identifiable_undertaking_s(Beneficiary, Effect)
    ;
        channeled_to_group_of_undertakings(Beneficiary, Effect)
    ).

% ------------------------------------------------------------------
% Exception: No Advantage (Altmark and related principles)
% ------------------------------------------------------------------
% A measure does not constitute an advantage if it meets one of the following exceptions:
% - compensation for the provision of a service of general economic interest,
% - reimbursement of illegally levied charges or dues,
% - compensation for damage,
% - payment for expropriation.
% ------------------------------------------------------------------------------
exception_advantage(Measure) :-
    altmark(Measure);
    reimbursement_of_illegally_levied_charges_or_dues(Measure);
    compensation_for_damage(Measure);
    compensation_for_an_expropriation(Measure).

% ------------------------------------------------------------------
% Altmark Exception — Compensation for Services of General Economic Interest
% ------------------------------------------------------------------------------
% Compensation granted to an undertaking does not constitute State aid under
% Article 107(1) TFEU if all four Altmark criteria are met:
%
% (1)The recipient undertaking must actually have public service obligations 
%    to discharge, and the obligations must be clearly defined.
% (2)The parameters for calculating the compensation must be established 
%    in advance, in an objective and transparent manner.
%     - *Advance Establishment*: Parameters must be set before service delivery 
%       to prevent retroactive adjustments that might distort competition.
%     - *Objectivity*: The method should rely on verifiable and measurable 
%       factors (e.g. cost formulas, output metrics), not discretionary judgment.
%     - *Transparency*: The method must be publicly accessible and clearly 
%       communicated to enable scrutiny and accountability.
% (3)The compensation must not exceed what is necessary to cover the 
%    costs of discharging the public service obligations, taking into account 
%    the relevant receipts and a reasonable profit.
% (4)One of the following must apply:
%    a) The undertaking was selected through a public procurement procedure
%       that ensures service provision at the least cost to the community; OR
%    b) In the absence of such a procedure, the compensation must be based 
%       on the cost structure of a typical, well-run, adequately equipped 
%       undertaking performing the same obligations, plus a reasonable profit.
% ------------------------------------------------------------------
altmark(Measure) :-
    % Criterion 1: Clearly defined PSO
    compensation_for_public_service_obligation(Measure, Beneficiary, Obligation),
    clearly_defined(Obligation),
    % Criterion 2: Transparent, objective, advance calculation of parameters
    compensation_params_predefined(Measure, Obligation),
    compensation_params_objective(Measure, Obligation),
    compensation_params_transparent(Measure, Obligation),
    % Criterion 3: Compensation does not exceed necessary costs + reasonable profit
    (
        ( money_received(Beneficiary, Measure, MoneyReceived),
          actual_costs(Measure, Costs),
          reasonable_profit(Measure, Profit),
          number(MoneyReceived), number(Costs), number(Profit),
          MoneyReceived =< Costs + Profit
        )
        ;
        textual_evidence_compensation_does_not_exceed_necessary_costs_plus_reasonable_profit(Measure)
    ),
    % Criterion 4: Either public procurement, or benchmarking to a typical efficient firm
    (
        public_procurement_procedure_used(Measure, ProcurementProcedure),
        designed_to_minimise_cost_to_community(ProcurementProcedure)
        ;
        (
            ( money_received(Beneficiary, Measure, MoneyReceived),
            hypothetical_cost(Measure, HypotheticalCosts),
            reasonable_profit(Measure, Profit),
            number(MoneyReceived), number(HypotheticalCosts), number(Profit),
            MoneyReceived =< HypotheticalCosts + Profit
            )
            ;
            textual_evidence_that_compensation_is_based_on_cost_structure_of_wellrun_plus_reasonable_profit(Measure)
        )
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
    imputable_to_state(Actor, Measure, State).

% ------------------------------------------------------------------------------
% The advantage the measure grants is through state resources if there is a transfer of state resources
% ------------------------------------------------------------------------------
granted_through_state_resources(Measure) :- 
    transfer_of_resources(Measure).

% ------------------------------------------------------------------------------
% Transfer of Resources
% ------------------------------------------------------------------------------
% A transfer of state resources occurs through:
% (1) An active flow of state resources
% (2) A firm and concrete commitment to make state resources available at a later point
% (3) Foregoing of state revenue
% ------------------------------------------------------------------------------

transfer_of_resources(Measure) :- 
    (
        (
            active_resource_flow(Measure, Resource)
            ;
            firm_and_concrete_commitment_to_make_resources_available_at_later_point(Measure, Resource)
        ),
        state_resource(Resource)
    )
    ;
    foregoing_state_revenue(Measure).

% ------------------------------------------------------------------------------
% Definition of State Resources
% ------------------------------------------------------------------------------
% Includes:
% (a) Resources of the public sector
% (b) Resources of public undertakings
%       A public undertaking is defined by reference to Commission Directive 2006/111/EC, of 16 November 2006, 
%       on the transparency of financial relations between Member States and public undertakings as well as on financial transparency within certain undertakings
% (c) Resources of private bodies, when the resources are under public control prior to transfer
% (d) Resources of public or private bodies appointed by the state to administer aid
% (e) Resources under joint control with other Member States
% (f) Resources from the EU, EIB, EIF, IMF, EBRD, or similar, where national authorities have discretion over their use.
% ------------------------------------------------------------------------------
state_resource(Resource) :-
    resource_of_public_sector(Resource)
    ;
    resource_of_public_undertaking(Resource)
    ;
    resource_of_body_appointed_by_state_to_administer_measure(Resource)    
    ;
    (
        resource_of_private_body(Resource),
        under_public_control(Resource)
    )
    ;
    (
        resource_from_international_or_union_fund(Resource, Fund),
        usage_discretion_by_national_authorities(Resource, Fund)
    ).

% ------------------------------------------------------------------------------
% Public sector resources include central and intra-state (federal, regional) resources
% ------------------------------------------------------------------------------
resource_of_public_sector(Resource) :- 
    resource_of_central_state_entity(Resource);
    resource_of_intrastate_entity(Resource).

% ------------------------------------------------------------------------------
% Foregoing State Revenue
% ------------------------------------------------------------------------------
% Includes cases where:
% - Waiving revenue which would otherwise have been paid to the State
% - Goods/services are offered below market price
% - Access to Public domain or natural resources or granting of special or exclusive rights without adequate remuneration in line with market rates
%   Exception may apply if the authority acts as a regulator for a legitimate public purpose
% - Authorities do not charge the standard rate under their general system for access to the public domain or natural resources, or for granting certain special or exclusive rights
% - The State refrains from enforcing a private law claim (e.g. debt recovery, dividend, contractual claim) in a situation where a market operator would have acted
% ------------------------------------------------------------------------------
foregoing_state_revenue(Measure) :- 
    (
        waiving_revenue(Measure)
    )
    ;
    (
        % Case 2a: Goods or services priced below market value (by calculation)
        actual_price_goods_service(Measure, ActualPrice),
        market_price_goods_service(Measure, MarketPrice),
        number(ActualPrice), number(MarketPrice),
        ActualPrice < MarketPrice
    );
    (
        % Case 2b: Goods or services priced below market value (by textual evidence)
        goods_or_services_priced_below_market_value_textual_evidence(Measure)
    )
    ;
    (
        % Case 3a: Access to public domain, natural resources or special or exclusive rights granted below market value
        access_domain_resources_rights(Measure, AccessValue),
        market_value_domain_resources_rights(Measure, MarketValue),
        number(AccessValue), number(MarketValue),
        AccessValue < MarketValue,
        \+ acting_as_regulator_for_resources_rights(Measure)
    )
    ;
    (
        % Case 3b: Sale below market rates inferred from text, but no precise comparison possible
        domain_resources_rights_priced_below_market_rate_textual_evidence(Measure),
        \+ acting_as_regulator_for_resources_rights(Measure)    
    )
    ;
    (
        % Case 4a: Sale of rights or resources below general system rates
        sell_price_domain_resources_rights(Measure, SellPrice),
        system_price_domain_resources_rights(Measure, SystemRatesPrice),
        number(SellPrice), number(SystemRatesPrice),
        SellPrice < SystemRatesPrice
    );
    (
        % Case 4b: Sale below standard rates inferred from text, but no precise comparison possible
        domain_resources_rights_priced_below_system_rate_textual_evidence(Measure)
    )
    ;
    (
        % Case 5: waiving or converting private law claims (e.g. debt waivers) contrary to MEOT
        (waiver_private_law_claims(Measure); converting_private_law_claims(Measure)),
        negative_market_economy_operator_test(Measure)
    ).

% ------------------------------------------------------------------------------
% Waiving of state revenue
% ------------------------------------------------------------------------------
% Examples: 
%    - a ‘shortfall’ in tax and social security revenue due to exemptions or reductions in taxes or social security contributions 
%    - exemptions from the obligation to pay fines or other pecuniary penalties.
% General: waiving revenue which would otherwise have been paid to the State under public or criminal law.   
% ------------------------------------------------------------------------------
waiving_revenue(Measure) :-
    exemptions_reductions_taxes(Measure);
    exemptions_reductions_social_security(Measure);
    exemptions_fines(Measure);
    exemptions_pecuniary_penalties(Measure);
    general_waiving_revenue_public_or_criminal_law(Measure).

% ------------------------------------------------------------------------------
% Exception: Acting as a regulator may justify foregoing revenue
% ------------------------------------------------------------------------------
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
% A measure is imputable to the State if its adoption or implementation can be
% attributed to a public authority of the Member State. This includes:
%
% (1) Measures adopted directly by a public authority (regardless of its degree of autonomy);
% (2) Measures administered by a body (public or private) that was designated by a public authority;
% (3) Measures adopted by a public undertaking, where indicators show State or Intrastate involvement in the decision.
%
% Exception: A measure is not imputable if the Member State was under a binding
% obligation under Union law and had no discretion in its implementation.
% ------------------------------------------------------------------------------
imputable_to_state(Actor, Measure, State) :-
    adopted_or_administered_by(Measure, Actor),
    (
        % (1) Actor is a public authority of the State or an intrastate body
        public_state_authority(Actor, State)
        ;
        (
            public_intra_state_authority(Actor, IntraState),
            intrastate_of(IntraState, State)
        )
        ;
        % (2) Actor was designated by a public authority
        (
            was_designated(Actor, Measure, Designator),
            (
                public_state_authority(Designator, State)
                ;
                (
                    public_intra_state_authority(Designator, IntraState),
                    intrastate_of(IntraState, State)
                )
            )
        )
        ;
        % (3) Actor is a public undertaking with State involvement
        (
            is_public_undertaking(Actor),
            (
                public_undertaking_of_state(Actor, State)
                ;
                (
                    public_undertaking_of_intra_state(Actor, IntraState),
                    intrastate_of(IntraState, State)
                )
            ),
            indicator_of_state_or_intra_state_involvement(Actor, Measure)
        )
    ),
    \+ imputability_exception(Measure).

% ------------------------------------------------------------------------------
% Indicator of state involvement for decisions of public undertakings:
% ------------------------------------------------------------------------------
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
% 
% The parsing will be restrictive here, because ‘the fact that the public authorities may exercise directly or indirectly a
% dominant influence does not prove that they actually exercised that influence in a given
% case.
% ------------------------------------------------------------------------------
indicator_of_state_or_intra_state_involvement(Actor, Measure) :-
    decision_dependence_on_state_or_intra_state(Actor, Measure);
    acted_on_government_directives(Actor, Measure);
    strong_public_supervision(Actor, Measure);
    measure_scope_indicates_involvement(Actor, Measure);
    other_indicators_of_public_involvement(Actor, Measure).

indicator_of_state_or_intra_state_involvement(Actor, _) :-
    organic_link_with_state_or_intra_state(Actor);
    integrated_into_public_administration(Actor);
    (strategic_sector(Actor),
    not_competing_under_normal_conditions(Actor)).
    

% ------------------------------------------------------------------------------
% Exception: No imputability where the Member State is under a Union law obligation and has no discretion in implementing the measure
% ------------------------------------------------------------------------------
imputability_exception(Measure) :- 
    is_implementation_of(Measure, UnionLawObligation),
    no_member_state_discretion(UnionLawObligation).