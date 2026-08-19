// ============================================================
// Part III — Aviation & Aerospace · What Works — and the Frontier (Chapter 6)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part III — Aviation & Aerospace",
  number: "6",
  title: "Aviation & Aerospace — What Works — and the Frontier",
  subtitle: "When an industry engineers its own error rate down and keeps the books open.",
  epigraph: [Flying got safer when reporting became cheaper than concealment.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 114 — faa-aging-aircraft-program-widespread ----
#case(
  number: 114,
  slug: "faa-aging-aircraft-program-widespread",
  title: "FAA Aging-Aircraft Program — Widespread Fatigue Damage and the Part 26 Rule",
  year: "1988 – 2010s",
  domains-list: ("aviation safety", "structural engineering", "regulatory rulemaking"),
  modes-code: "GDK",
  impact: "After Aloha Airlines 243 (1988) exposed widespread fatigue cracking in an aging Boeing 737-200, the FAA's Aging Aircraft Program and the Airworthiness Assurance Working Group produced two decades of structural inspection programs culminating in 14 CFR Part 26 subpart C, published November 15, 2010 and effective January 14, 2011, which requires design approval holders to establish a Limit of Validity for each affected model and embed widespread fatigue damage protection into the maintenance program",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.3",
  lens-anchor: "D1/PT3",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    On April 28, 1988, Aloha Airlines Flight 243 lost an 18-foot
    section of upper fuselage in flight; the aircraft, a Boeing
    737-200, had accumulated 89,680 flight cycles and was operating
    well past the design assumptions of the original certification.
    The accident — one flight attendant killed, 65 injured — exposed
    the structural-engineering category of widespread fatigue damage
    (WFD): multiple small cracks across many similar structural
    details, simultaneous enough that established single-crack
    inspection assumptions did not apply. The FAA stood up the
    Aging Aircraft Program almost immediately, and the Airworthiness
    Assurance Working Group (AAWG) operated through the 1990s and
    2000s producing structural inspection programs across the
    transport-airplane fleet. The work culminated in 14 CFR Part 26
    (Continued Airworthiness and Safety Improvements; WFD
    provisions effective 2011), which requires manufacturers to establish a Limit of
    Validity (LOV) for each type — the operational service goal
    below which the maintenance program protects against WFD — and
    to embed WFD prevention into the structural maintenance program
    itself. Part 26 is one of the most concrete recent examples of
    legacy assets aging past their original oversight regime being
    pulled back under structured airworthiness governance, and
    closes a long-standing zero-state in the induced framework's C7
    competency.
  ],
  sections: (
    [
      Aloha Airlines Flight 243 on April 28, 1988, was the
      sentinel event. The Boeing 737-200 had accumulated 89,680
      flight cycles — well above the design service goal — and was
      operating in a high-cycle short-haul environment that
      stressed the fuselage skin and lap joints at a rate the
      original certification analysis had not anticipated. In
      cruise at 24,000 feet, an 18-foot section of upper fuselage
      separated. The crew recovered the aircraft and landed it; one
      flight attendant was lost overboard and 65 occupants were
      injured. The NTSB investigation identified multiple small
      fatigue cracks across many lap-joint rivet holes, linking up
      catastrophically — the textbook presentation of widespread
      fatigue damage rather than a single-crack failure.#cn()
    ],
    [
      The structural-engineering category WFD names is specifically
      the regime where established inspection assumptions break
      down. A single-crack model assumes one crack initiates,
      propagates, and is caught by scheduled inspection before
      reaching critical length. WFD assumes many small cracks
      initiate at similar structural details across the fleet at
      similar times, and that link-up between adjacent cracks
      becomes the dominant failure mode. The inspection cadence,
      detection threshold, and replacement program a designer would
      build under the single-crack assumption do not adequately
      cover the WFD regime, and the airworthiness oversight regime
      Aloha exposed had not made the distinction.#cn()
    ],
    [
      The FAA's response was to stand up the Aging Aircraft Program
      and convene the Airworthiness Assurance Working Group, which
      operated through the 1990s and 2000s. The AAWG produced
      mandatory structural inspection documents and supplemental
      structural inspection programs for transport-category
      aircraft model-by-model, working through the older fleet
      systematically. The work was technically substantial — fleet-
      survey data, fatigue-test campaigns, inspection-program
      revisions for in-service aircraft — and institutionally
      sustained across more than two decades. The intermediate
      deliverables were per-model inspection programs; the
      capstone was rulemaking.#cn()
    ],
    [
      14 CFR Part 26 — Continued Airworthiness and Safety
      Improvements — was finalized in 2007 with the WFD provisions
      published November 15, 2010 and effective January 14, 2011. Two structural elements are decisive.
      First, every transport-category type must have a Limit of
      Validity established by the manufacturer: the operational
      service goal, in flight cycles or flight hours, below which
      the maintenance program is shown to protect against WFD.
      Operation beyond the LOV requires either the manufacturer
      establishing an extended LOV with supporting analysis, or
      operator-specific evidence approved by the regulator. Second,
      WFD prevention is embedded in the structural maintenance
      program itself, not handled as a separate one-time inspection
      event. The maintenance program becomes the carrier of WFD
      protection across the type's service life.#cn()
    ],
    [
      What the case teaches at the LENS framing layer is the
      structural form of pulling legacy assets back under
      structured airworthiness governance. The original 737-200
      certification did not anticipate the cycle count and the WFD
      regime that high-cycle short-haul operation produced; the
      regulatory response was not to retire the type but to engineer
      the oversight regime forward — fleet survey, AAWG, model-by-
      model inspection programs, and finally Part 26 codifying the
      LOV concept across the transport-category fleet. The case is
      one of the v2 sweep's clearest closes of the C7 (Capability
      under system change, transition, and aging assumptions)
      zero-state in the induced framework: a sustained two-decade
      regulatory program that turned an aging-fleet structural
      surprise into a governed sustainment discipline.#cn()
    ],
  ),
  beats: (
    "Aloha 243 (April 28, 1988): 737-200 at 89,680 cycles loses 18 feet of upper fuselage; WFD identified as the failure mode",
    "FAA stands up Aging Aircraft Program; AAWG operates through 1990s–2000s producing per-model structural inspection programs",
    "14 CFR Part 26 finalized 2007, WFD provisions effective Jan 14, 2011 (rule published Nov 15, 2010) — Limit of Validity per type; WFD prevention embedded in maintenance program",
    "Two structural elements: LOV as operational service goal protected by maintenance, plus WFD prevention as ongoing program (not one-time inspection)",
    "Closes the induced C7 (system change / aging assumptions) zero-state — sustained two-decade rulemaking pulled an aging fleet back under structured airworthiness governance",
  ),
  approaches: (
    during: (
      [Name the structural regime the original certification analysis did not cover — WFD vs. single-crack here — explicitly, so the inspection program can be designed around the actual failure mode rather than retrofitted to the original assumption.],
      [Operate the working group across a long horizon (AAWG: two decades): the per-model deliverables build the technical record that supports the eventual rulemaking, and short-cycle deliverables alone do not.],
      [Make the operational service goal (LOV) the artifact the regulation rests on; the goal is auditable per type, and operation beyond it requires additional analysis rather than implicit extension.],
    ),
    after: (
      [Embed the new protection in the maintenance program rather than as a one-time inspection: the maintenance program is the carrier across the service life, and one-time events are not.],
      [Treat the model-by-model technical work as the legitimacy basis for the rule; without the AAWG's fleet-survey and inspection-program record, Part 26 would have looked like top-down regulation rather than codification of established practice.],
      [Carry the case as the C7 instance the induced framework needed: legacy assets aging past their original oversight regime, pulled back under structured airworthiness governance by sustained two-decade rulemaking.],
    ),
  ),
  references: (
    [NTSB (1989), Aircraft Accident Report AAR-89/03, _Aloha Airlines Flight 243, Boeing 737-200, N73711_.],
    [FAA, 14 CFR Part 26, "Continued Airworthiness and Safety Improvements for Transport Category Airplanes," Final Rule, 72 FR 63409 (November 8, 2007) — the rule that created Part 26.],
    [FAA, "Aging Airplane Program: Widespread Fatigue Damage," Final Rule, 75 FR 69746 (November 15, 2010, effective January 14, 2011) — the subpart C limit-of-validity provisions.],
    [Airworthiness Assurance Working Group (1999), _Recommendations for Regulatory Action to Prevent Widespread Fatigue Damage in the Commercial Airplane Fleet_, Final Report, March 11, 1999 (Rev. A, June 29, 1999) — the ARAC record behind the rule.],
    [Swift, T. (1993), "Widespread Fatigue Damage Monitoring — Issues and Concerns," _International Conference on Structural Airworthiness of New and Aging Aircraft_, Hamburg, June 16–18, 1993 — technical synthesis of the WFD inspection regime.],
  ),
  quote: [The deliverable was not a single rule. It was the two-decade per-model technical record that made the rule a codification of established practice rather than top-down regulation.],
  quote-source: "Editors' synthesis of the FAA Aging Aircraft Program and the Part 26 rulemaking record.",
  le-insight: [
    The FAA Aging Aircraft Program and Part 26 are one of the
    v2 sweep's clearest closes of the C7 zero-state. Aloha 243
    exposed a regime the original certification did not cover;
    the AAWG operated for two decades; Part 26 codified Limit of
    Validity and embedded WFD prevention into the maintenance
    program itself. The sustained two-decade rulemaking is the
    deliverable, not the rule alone.
  ],
  lens-approach: [
    FAA aging aircraft is the canonical aging-asset-governance
    case (induced 7.3; LENS D1/PT3) — Domain 1 for LOV-as-
    operational-service-goal; Domain 5 for the AAWG
    institutional discipline. Closes the C7 zero-state. Pair
    with Cases 115, 174, 156 as the v2 aging-system quartet.
  ],
  literature-items: (
    [NTSB (1989), AAR-89/03 _Aloha Airlines 243_],
    [FAA Part 26 Final Rule (2007)],
    [AAWG per-model structural inspection program reports],
  ),
  reflection-list: (
    [Identify a legacy asset class in your domain whose original certification or design analysis no longer covers the regime the assets are now operating in. What is the analog of the WFD distinction — the failure mode the original analysis did not anticipate?],
    [Specify the analog of the LOV: an operational service goal, auditable per asset, beyond which additional analysis is required. What instrument would you use, what cadence, and what would "operation beyond LOV" trigger in your domain?],
    [The AAWG operated for two decades before Part 26 codified the practice. What is the institutional discipline you would build for a similar two-decade horizon — the working-group cadence, the per-asset technical record, the eventual rulemaking — and is there a body in your domain that could plausibly carry that horizon?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

// ---- Case 115 — faa-nextgen-and-the-ads-b-out-transition ----
#case(
  number: 115,
  slug: "faa-nextgen-and-the-ads-b-out-transition",
  title: "FAA NextGen and the ADS-B Out Transition",
  year: "2003 – 2020",
  domains-list: ("aviation infrastructure", "air traffic management", "regulatory transition"),
  modes-code: "GDK",
  impact: "The FAA's Next Generation Air Transportation System (NextGen) shifted U.S. air-traffic management from radar-based surveillance to a satellite-based architecture; the ADS-B Out mandate effective January 1, 2020 required equipage across the controlled-airspace fleet, achieving substantial compliance — with documented schedule slippage and benefit-realization gaps preserved as decisive hedges",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  induced-anchor: "7.1",
  lens-anchor: "D1/PT4",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    The FAA's Next Generation Air Transportation System (NextGen)
    is the multi-decade transition of U.S. air-traffic management
    from a radar-based surveillance architecture to a satellite-
    based architecture built on Automatic Dependent Surveillance –
    Broadcast (ADS-B). The ADS-B Out final rule, published in
    2010, set the equipage mandate for January 1, 2020 — aircraft
    operating in most controlled airspace must broadcast their
    GPS-derived position and identity, replacing the radar-only
    secondary-surveillance model that defined the era prior. The
    mandate was substantially met at the deadline; equipage
    compliance across the affected fleet was high, and ADS-B-based
    surveillance is now the operational backbone in much of U.S.
    airspace. The case is one of the largest planned aging-
    infrastructure transitions in the recent regulatory record —
    closing a long-standing C7 zero-state in the induced framework
    — and it carries the hedges that matter that GAO and DOT
    Inspector General reviews have repeatedly documented:
    significant schedule slippage across the program, benefit-
    realization gaps relative to original projections, and
    contested cost-benefit accounting. The transition happened; the
    transition was harder, slower, and more partial than the
    original NextGen plan implied.
  ],
  sections: (
    [
      The pre-NextGen U.S. air-traffic management architecture rested
      on ground-based primary and secondary radar surveillance, with
      voice communication, paper or quasi-paper flight progress
      strips at many facilities, and traffic-flow management built
      around scheduled equipage upgrades that lagged the broader
      civil-aviation hardware base. By the early 2000s the
      structural problem was named clearly in the policy literature:
      a 20th-century surveillance architecture was being asked to
      handle 21st-century traffic, and incremental modernization
      inside the radar-paradigm was approaching its limits.#cn()
    ],
    [
      NextGen, formally launched in 2003 under the Vision 100 –
      Century of Aviation Reauthorization Act, was the FAA's
      multi-decade response. The technical core was the transition
      from radar-based surveillance to ADS-B: aircraft broadcast
      their GPS-derived position once per second, ground stations
      and other aircraft receive the broadcast, and the resulting
      surveillance picture is more precise, lower-latency, and less
      expensive to operate at scale than secondary radar. The
      broader NextGen program included additional elements
      (Data Communications, NAS Voice System, System-Wide
      Information Management) but ADS-B Out was the decisive
      equipage-mandate piece.#cn()
    ],
    [
      The ADS-B Out final rule was published in 2010 with the
      January 1, 2020 compliance deadline — a decade of lead time
      for operators to equip. At the deadline, substantial
      compliance was reported across the affected fleet; the
      FAA's surveillance picture in controlled airspace moved
      substantially onto the ADS-B architecture, and the
      operational transition was completed in the sense the rule
      intended. The transition is one of the largest
      infrastructure-replacement programs in the recent FAA
      record, and it executed.#cn()
    ],
    [
      The hedges have to survive. GAO and DOT Inspector General
      reports across the 2010s repeatedly documented significant
      schedule slippage across NextGen — multiple elements
      missing original delivery dates, the broader program's
      realized benefits running below original projections, and
      contested cost-benefit accounting between FAA program
      reporting and external review. The benefit categories
      NextGen's business case rested on — fuel-burn reduction,
      delay reduction, increased airspace capacity — have
      materialized in some respects and not in others, and the
      attribution to NextGen specifically (vs. broader operational
      and weather variation) is contested in the published audit
      literature. Equipage happened; benefit realization is
      mixed and ongoing.#cn()
    ],
    [
      What the case teaches at the LENS framing layer is the
      sustainment-engineering form of a planned aging-
      infrastructure transition at continental scale. The
      transition happened: the regulatory architecture, the
      decade of lead time, the equipage mandate at the deadline,
      and the operational migration to ADS-B-based surveillance
      are real and large. The transition was harder, slower, and
      more partial than the original NextGen plan implied; the
      schedule slippage and benefit-realization gaps are not
      anomalies in the case but part of what infrastructure
      transitions at this scale look like in practice. Together
      with the FAA Aging Aircraft program (Case 114), Y2K
      (Case 174), and LWRS (Case 156), NextGen is part of the v2
      quartet that closes the C7 zero-state in the induced
      framework — and is the instance where the hedges are
      largest.#cn()
    ],
  ),
  beats: (
    "Pre-NextGen U.S. air-traffic management rested on radar and voice; incremental modernization inside the radar-paradigm approached its limits by early 2000s",
    "NextGen launched 2003 (Vision 100 Act); ADS-B Out is the decisive equipage-mandate piece of the broader program",
    "ADS-B Out final rule published 2010; January 1, 2020 compliance deadline; substantial compliance reported at the deadline",
    "decisive hedge: GAO / DOT IG documented significant schedule slippage and benefit-realization gaps across the broader NextGen program",
    "Closes C7 (aging-infrastructure transition) zero-state alongside Cases 114, 174, 156 — the instance where the hedges are largest",
  ),
  approaches: (
    during: (
      [Specify the equipage mandate with the lead time the transition actually needs — a decade for ADS-B Out — so the deadline arrives with realistic compliance pathways rather than as a forcing function operators cannot meet.],
      [Separate the equipage-mandate piece (auditable, has a deadline) from the broader benefit-realization business case (multifactorial, harder to attribute); the equipage piece will deliver, the benefit piece will deliver partially, and conflating them sets the program up to look like a failure where it succeeded.],
      [Plan for sustained external audit (GAO, DOT IG) as part of the program's operating environment — the schedule slippage and benefit-realization gap reporting is institutional discipline, not a sign the program is unworkable.],
    ),
    after: (
      [Report the equipage transition as the deliverable that executed and the benefit realization as the deliverable that is ongoing and mixed; both are real, and the hedge that matters is that the original NextGen plan understated the difficulty of the latter.],
      [Sustain the audit-and-rebaseline cadence after the headline equipage mandate; the benefit-realization picture continues to develop, and the institutional record of slippage and partial realization is part of how transitions at this scale are documented honestly.],
      [Treat the NextGen case as the instance where the C7 transition delivered with the largest acknowledged hedge — useful precisely because the transition is real and the hedges are also real, and conflating either with the other misreads the lesson.],
    ),
  ),
  references: (
    [FAA, "Automatic Dependent Surveillance-Broadcast (ADS-B) Out Performance Requirements To Support Air Traffic Control (ATC) Service," Final Rule, 75 FR 30160 (May 28, 2010) — 14 CFR §§91.225 and 91.227.],
    [Vision 100 — Century of Aviation Reauthorization Act, Public Law 108-176 (2003) — NextGen program statutory basis.],
    [Government Accountability Office, "NextGen Air Transportation System" report series (2010s) — sustained external audit record on schedule slippage and benefit-realization gaps.],
    [Department of Transportation Office of Inspector General (2021), _NextGen Benefits Have Not Kept Pace With Initial Projections_, Report No. AV2021023, March 30, 2021 — FAA's 2017 benefits projection \$113 billion below the JPDO estimate; \$6 billion in benefits realized 2010–2018.],
    [FAA, NextGen Annual Reports (2010 – present) — program-self-report tier; read against the GAO and DOT IG reviews.],
  ),
  quote: [The transition happened. The transition was harder, slower, and more partial than the original plan implied. Both are part of the case.],
  quote-source: "Editors' synthesis of the GAO NextGen audit series and FAA program reporting.",
  le-insight: [
    NextGen / ADS-B is one of the largest planned aging-
    infrastructure transitions in the recent regulatory record.
    The equipage mandate executed at the January 2020 deadline.
    The broader NextGen program has documented significant
    schedule slippage and benefit-realization gaps in sustained
    external audit. The case closes a C7 zero-state with the
    largest acknowledged hedges in the v2 aging-system quartet.
  ],
  lens-approach: [
    NextGen / ADS-B is the planned infrastructure-transition
    case (induced 7.1; LENS D1/PT4). LENS uses it in Domain 1
    (Systems Analysis) for the separation of the auditable
    equipage mandate from the multifactorial benefit-
    realization business case, and in Domain 5 (Navigating
    Sociotechnical Constraints) for the decade of lead time
    and the sustained external-audit discipline. Closes the C7
    zero-state alongside Cases 114 (FAA aging aircraft), 174
    (Y2K), and 156 (LWRS) as the v2 aging-system quartet.
  ],
  literature-items: (
    [FAA ADS-B Out Final Rule (2010)],
    [GAO NextGen report series (2010s)],
    [DOT Office of Inspector General NextGen audits],
  ),
  reflection-list: (
    [Identify an aging-infrastructure transition in your domain whose original business case rested on benefit categories that are multifactorial and contested in attribution. What is the equivalent of the auditable equipage mandate — the piece of the transition that delivers cleanly — and how would you separate its reporting from the broader benefit case?],
    [Specify the lead time the transition actually needs from mandate to deadline; ADS-B Out used a decade. What is the analog in your context, and what does the operator-equipage trajectory look like across that horizon?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

// ---- Case 116 — eurocat-atm-pilot-modernization-small ----
#case(
  number: 116,
  slug: "eurocat-atm-pilot-modernization-small",
  title: "Eurocat ATM Pilot Modernization — Small-Tier Verification as the Gateway to Big-Tier Change",
  year: "2005",
  domains-list: ("air traffic management", "legacy modernization", "software transformation"),
  modes-code: "GKH",
  impact: "A 17,000-line pilot modernization of the Eurocat air-traffic-management system, run in 2005 to assess transformation validity and settle the target language, opened a program whose safety evidence — that the automated transformation was non-distortive of original functionality — convinced Thales customers to accept a system-wide architecture-driven modernization with 100% automated code transformation",
  kind: "intervention",
  scale: "small",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "7.1",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1, LEO-2",
  summary: [
    The Eurocat Air Traffic Management System was the kind of
    safety-critical legacy software whose customers cannot accept a
    big-bang rewrite: the operational system in production cannot
    tolerate the discontinuity. The 2005 Thales-led pilot
    modernization was scoped narrowly — 17,000 lines of code — with
    the deliberate goal of generating safety-equivalence evidence
    that an automated transformation did not distort the original
    functionality. The pilot succeeded in producing that evidence,
    and the evidence was used to convince customers to accept a
    full architecture-driven modernization with 100% automated code
    transformation. The teaching pattern is the small-as-gateway-to-big
    move: the small-tier verification artifact dissolved the customer
    objection to the large-tier change. The case is documented in a
    vendor-authored Elsevier technical chapter rather than an
    independent academic evaluation; the evidence-tier flag is
    rendered under the title. The case is the small-tier C7
    transition-verification companion to the big-tier failures
    (Patriot/Dhahran, Ariane 5, Knight Capital, CrowdStrike, TSB)
    already in the corpus. Future validation will continue on the
    long-run operational behavior of the modernized system.
  ],
  sections: (
    [
      Air traffic management software is a paradigmatic
      capability-system-misalignment-at-transition problem: the
      legacy system carries decades of accreted operational logic,
      the safety case the regulator and the airspace user expect
      rests on the legacy's documented behavior, and a big-bang
      rewrite is unacceptable because the operational
      discontinuity is itself the safety hazard. The Eurocat
      problem in 2005 was the standard one — modernize without
      breaking the safety case the legacy already carries.#cn()
    ],
    [
      The design move was to scope a pilot narrowly enough that
      the verification could be exhaustive. Seventeen thousand
      lines of code is small as a fraction of the full system; it
      is large enough that a working automated transformation
      pipeline can be exercised end-to-end and the
      safety-equivalence evidence can be generated against a
      realistic subset. The chapter gives the pilot two jobs — assess the validity of the transformation, and settle the target language.
      It was a deliberately designed evidence artifact: prove,
      at small scale and on the actual legacy, that the
      transformation does not distort the function the customer
      cares about.#cn()
    ],
    [
      The pilot succeeded in producing the evidence. Customers
      were then willing to accept a system-wide architecture-driven
      modernization with 100% automated code transformation. The
      causal claim the case rests on is not "the modernization
      worked" — that is a long-run operational question — but
      "the customer objection to the large-tier change was
      dissolved by the small-tier verification artifact." That is
      the C7 teaching point at the small tier the corpus has not
      had: the same governance-objection-dissolver move that
      Case 199 / Case 200 show in the AV regulatory regime, transposed
      into a legacy-software transition.#cn()
    ],
    [
      The evidence-tier flag matters. The case is documented in a
      practitioner-authored chapter in an Elsevier book on
      information-systems transformation. The authors are from
      the vendor side; there is no independent academic
      evaluation of the pilot's safety-equivalence claims or of
      the post-modernization operational behavior. The pattern
      the case teaches — verification at the small tier as the
      gateway to the large-tier change — is robust across the
      practitioner literature on legacy modernization, but the
      Eurocat-specific magnitudes and the long-run system
      outcomes have not been audited in a peer-reviewed source.
      Future validation will continue.#cn()
    ],
    [
      What the case adds at the LENS layer is the small-tier C7
      intervention that the big-tier failures already in the
      corpus do not teach: when the inherited design has to move
      to a new envelope, the verification work itself can be the
      capability deliverable that earns the change its
      legitimacy. The Domain-1 frame applies: systems analysis of
      the legacy's safety case as an artifact, and design of the
      transformation pipeline as another artifact, are the
      capability-engineering moves the program made. The case is
      the missing positive example for induced 7.1 and 7.2 at
      the small tier.
    ],
  ),
  beats: (
    "Safety-critical ATM legacy cannot tolerate big-bang rewrite — operational discontinuity is the safety hazard",
    "Pilot scoped narrowly (17,000 lines) so the verification can be exhaustive against the actual legacy",
    "Pilot succeeds in producing safety-equivalence evidence; customer objection to system-wide change dissolves",
    "Causal claim is dissolution of the objection by the evidence artifact, not yet long-run operational success",
    "Evidence tier: vendor-authored Elsevier chapter; no independent academic evaluation of the safety-equivalence claim",
  ),
  approaches: (
    during: (
      [Scope the pilot to be small enough that the verification can be exhaustive against the actual legacy, not just a feasibility check on a synthetic subset.],
      [Design the safety-equivalence evidence as a deliberate deliverable from the pilot, not a byproduct: specify in advance what the customer needs to see to accept the large-tier change.],
      [Document the transformation pipeline itself as a verifiable artifact, so the customer can audit the transformation, not just inspect the transformed code.],
    ),
    after: (
      [Carry the practitioner-tier flag into any downstream citation; the case is a vendor account and the long-run operational behavior of the modernized system is the open question.],
      [Treat the small-as-gateway-to-big pattern as the teaching point; the magnitudes and the system-wide rollout are open and depend on the long-run operational record.],
      [Pair with the big-tier C7 failures (Patriot/Dhahran, Ariane 5, Knight Capital, TSB) when teaching; the pair shows the verification-as-deliverable principle is what separates the failure and intervention threads.],
    ),
  ),
  references: (
    [DelaPeyronnie, Newcomb, Morillo, Trimech, Nguyen, & Purtill (2010), "Modernization of the Eurocat Air Traffic Management System (EATMS)," in _Information Systems Transformation: Architecture-Driven Modernization Case Studies_ (Elsevier / Morgan Kaufmann), Chapter 5.],
    [Ulrich & Newcomb (eds., 2010), _Information Systems Transformation_ — the host volume on architecture-driven modernization patterns.],
    [Brodie & Stonebraker (1995), _Migrating Legacy Systems_ — the framing reference on small-step legacy modernization.],
    [Bisbal et al. (1999), "Legacy Information Systems: Issues and Directions," _IEEE Software_ 16(5):103–111 — peer-reviewed framing companion.],
  ),
  quote: [The verification at the small tier is the artifact that earns the large-tier change its legitimacy. The pilot is not a feasibility check. It is the evidence.],
  quote-source: "Editors' synthesis of the Eurocat modernization chapter.",
  le-insight: [
    Eurocat is the small-tier C7 transition-verification
    intervention the corpus needed: a narrowly scoped pilot
    designed to produce the safety-equivalence evidence that
    dissolves customer objection to a system-wide modernization.
    Evidence is vendor-authored practitioner literature; the
    long-run operational record of the modernized system is the
    open question. Future validation ongoing.
  ],
  lens-approach: [
    Eurocat is the C7 small-tier transition case (induced 7.1
    and 7.2; LENS D1/PT1). LENS uses it in Domain 1 (Systems
    Analysis) for LEO-1 — the safety case and the
    transformation pipeline are both engineered artifacts —
    and in Domain 2 (Iterative Development) for LEO-2, since
    the pilot is the iteration that earns the rollout. Pair
    with the big-tier C7 failures (Patriot/Dhahran, Ariane 5,
    Knight Capital, CrowdStrike, TSB) for the failure-and-
    intervention contrast.
  ],
  literature-items: (
    [DelaPeyronnie, Newcomb, et al. (2010), Elsevier chapter — Eurocat modernization],
    [Brodie & Stonebraker (1995), _Migrating Legacy Systems_ — framing reference],
    [Bisbal et al. (1999), _IEEE Software_ — peer-reviewed legacy-modernization framing],
  ),
  reflection-list: (
    [Identify a legacy system in your context whose customer or operator will not accept a big-bang rewrite. What is the small-tier pilot whose evidence would dissolve the objection to the large-tier change, and what specifically would the customer need to see?],
    [Specify the safety-equivalence evidence the pilot would have to generate as a deliberate deliverable. The Eurocat pattern teaches because the pilot was scoped to produce the artifact the customer needed, not just to demonstrate feasibility.],
    [The case is vendor-authored practitioner literature. What independent evidence (academic evaluation, multi-customer replication, long-run operational behavior) would you require before treating the small-as-gateway-to-big pattern as a settled engineering practice in your domain?],
  ),
  courses: ("LEN 1", "LEN 2", "LEN 6"),
)

// ---- Case 117 — crew-resource-management-and-cast ----
#case(
  number: 117,
  slug: "crew-resource-management-and-cast",
  title: "Crew Resource Management & CAST",
  year: "1981 – present",
  domains-list: ("aviation",),
  modes-code: "THN",
  impact: "CAST adopted the White House Commission's 80% fatality-risk reduction target and reported 83% for 1998–2008 — a portfolio result across 70 selected safety enhancements, credited by CAST and the FAA to CAST's work \"along with new aircraft, regulations and other activities\"; CRM's separate contribution is not isolated in any published estimate, and CRM predates the measurement window by seventeen years",
  diagram: dgm.dgm-crm,
  kind: "intervention",
  summary: [
    In March 1977, two 747s collided in fog at Tenerife and 583 people
    died — in part because a KLM flight engineer's twice-voiced doubt about
    the runway was overridden by his captain. The failure was not of skill
    but of the system by which skill in one seat reached another. Crew
    Resource Management, formalized by United Airlines in 1981,
    re-engineered the cockpit as a coordinated team: explicit communication
    protocols, named authority gradients, structured briefings. Sixteen years later the Commercial Aviation Safety Team (CAST) added
    closed-loop analysis of operational data to find and fix hazards before
    they caused accidents. The pairing — cultural redesign plus continuous
    evidence — helped drive the 83% reduction in U.S. commercial-aviation fatality
    risk between 1998 and 2008 that CAST achieved alongside new aircraft and
    regulation, work that earned CAST the 2008 Collier Trophy.
  ],
  sections: (
    // -- Background --
    [
      By the 1970s, accident investigations were repeatedly finding that
      crashes stemmed not from a lack of individual flying skill but from
      breakdowns in how a crew worked together. The 1977 Tenerife disaster
      — 583 dead — was the starkest example: a KLM flight engineer
      questioned, twice and indirectly, whether the runway was clear, and
      the senior captain dismissed him and continued the takeoff. The
      pattern that emerged was consistent across investigations — skilled
      crews failing not because anyone lacked competence, but because the
      crew's most senior voice could close off information held by a more
      junior one before it reached the decision.#cn()
    ],
    // -- The Intervention --
    [
      Crew Resource Management, formalized by United Airlines in 1981,
      treated crew coordination as an engineerable property of the system
      rather than a matter of personality. It introduced explicit
      communication protocols, named and trained against authority
      gradients, and instituted structured briefings and debriefings —
      rebuilding the cockpit as a team in which information from any seat
      could reach the decision. Rather than exhorting captains to listen
      better, it built coordination into the standard procedure itself, so
      the behavior that Tenerife had lacked became the trained default
      rather than a matter of individual temperament.#cn()
    ],
    // -- How It Worked --
    [
      CRM did not teach individual airmanship; it engineered the system of
      interaction in which airmanship operates. By making it legitimate and
      expected for a junior officer to challenge a captain, and by giving
      crews a shared protocol for doing so, it closed the path by which
      Tenerife-style deference had absorbed safety-critical information
      instead of transmitting it. The change was structural rather than
      attitudinal: a challenge that had once depended on a junior officer's
      nerve now had a named procedure behind it, so the same doubt that went
      unheard at Tenerife had an authorized route to the decision.#cn()
    ],
    // -- The Evidence --
    [
      Sixteen years on, the Commercial Aviation Safety Team added the
      missing second half: closed-loop hazard identification on operational
      data, prioritized enhancements, tracked implementation, and measured
      outcomes. CAST set an 80% fatality-reduction target and exceeded it,
      reaching 83% across 1998–2008 — work recognized with the 2008 Collier Trophy.
      Over twenty years, fatalities per 100 million passengers fell roughly
      95%. The loop closed on itself: data surfaced the next hazard,
      enhancements were prioritized against it, and the measured outcome fed
      back into the priorities, so improvement continued rather than
      plateauing once the cultural change had taken hold.#cn()
    ],
    // -- What Transferred --
    [
      CRM and CAST together define what a mature capability-engineering
      apparatus looks like: a cultural redesign, and sixteen years later a
      continuous-evidence loop to steer it. What the record does not show
      is what either contributed on its own. CRM ran without CAST from
      1981; the 83 percent figure covers 1998–2008; and CAST and the FAA
      credit it to a portfolio of seventy selected enhancements alongside
      new aircraft and regulation. The model
      has been exported to surgery, firefighting, and other
      high-consequence domains, and is now the template for redesigning
      human roles in AI-augmented systems. What transferred was not the
      specific protocols but the design logic itself — that coordination is
      an engineerable system property and that the cultural change needs a
      measurement loop to keep it honest over time.#cn() The 83% is a portfolio figure, and its CFIT share belongs to the safety enhancements treated in Case 120 (the TAWS mandate) and Case 123 (the FSF task forces); CRM's own share is not separately measured in that data.
    ],
  ),
  beats: (
    "Tenerife showed crashes came from crew coordination breakdowns, not individual lack of flying skill",
    "United formalized CRM in 1981 with protocols, authority gradients, and structured briefings as procedure",
    "Engineered the interaction system so junior challenges had a named, authorized route to the decision",
    "CAST closed-loop hazard work helped cut fatality risk 83 percent; Collier Trophy in 2008",
    "Design logic of paired cultural change plus measurement loop exported to surgery and AI systems",
  ),
  references: (
    [FAA Advisory Circular 120-51E, _Crew Resource Management Training_ — CRM protocols and authority-gradient training.],
    [Helmreich, Merritt & Wilhelm (1999), "The Evolution of Crew Resource Management Training in Commercial Aviation," _International Journal of Aviation Psychology_.],
    [Spanish CIAIAC / ALPA reports on the 1977 Tenerife collision — the overridden crew challenge.],
    [CAST/FAA Safety Enhancement reports (2016, 2018) — the closed-loop data process and the 83% reduction.],
    [Collier Trophy citation (2008); Kanki, Helmreich & Anca (2010), _Crew Resource Management_.],
  ),
  quote: [CRM succeeded because it treated crew coordination as an engineerable property of the system.],
  quote-source: "Paraphrasing Helmreich & Foushee, in Kanki et al., Crew Resource Management (2010)",
  le-insight: [
    CRM is the canonical evidence that capability is engineerable at the
    system level, not just the individual. Tenerife was not solvable by
    hiring better pilots — only by changing the authority structure
    inside the cockpit. CRM paired a procedural change with a cultural
    change in how the procedure was authorized, and CAST added the
    evidence loop sixteen years later. The pairing is the design lesson;
    which part carried the fatality-rate fall is not something a
    portfolio result can separate.
  ],
  lens-approach: [
    LENS treats CRM/CAST as the anchor success case across the curriculum. LEN 1 uses it as the problem-framing exemplar; LEN 4 uses
    CAST as the model closed-loop evidence system; LEN 2 uses CRM as the
    template for redesigning human roles in automated environments — the
    logic now being applied to AI-augmented systems.
  ],
  literature-items: (
    [Kanki, Helmreich & Anca, _Crew Resource Management_ (2010)],
    [Edmondson, _The Fearless Organization_ (2018)],
  ),
  reflection-list: (
    [Identify a high-consequence domain whose authority gradient absorbs information rather than transmitting it. What would the CRM equivalent intervention look like there?],
    [CRM is paired with CAST. What is the closed-loop evidence system in your domain — and if there is not one, what would it cost to build?],
    [CRM made a junior officer's challenge a named procedure rather than an act of nerve. Identify a moment in your domain where the right information depends on someone's courage, and design the protocol that would make raising it the expected default instead.],
  ),
  approaches: (
    during: (
      [Build the coordination behavior into standard procedure — explicit communication protocols, named authority gradients, and structured briefings — so it is the trained default, not a matter of temperament.],
      [Authorize the junior-to-senior challenge explicitly and drill it, so safety-critical information has a procedural route to the decision rather than depending on individual nerve.],
      [Stand up the evidence half from the start: instrument operational data so hazards can be found and prioritized before they cause an accident.],
    ),
    after: (
      [Run the closed loop continuously — surface hazards from data, prioritize enhancements, track implementation, and measure outcomes — so improvement does not plateau once the culture shifts.],
      [Set and exceed an explicit reduction target (the CAST model) so the intervention is judged against a measured outcome, not against its own activity.],
      [Export the design logic, not just the protocols, when transferring to new domains, adapting the paired cultural-plus-evidence structure to each setting.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 2", "LEN 3",),
  scale: "big",
  induced-anchor: "4.3",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 118 — korean-air-safety-transformation ----
#case(
  number: 118,
  slug: "korean-air-safety-transformation",
  title: "Korean Air Safety Transformation",
  year: "2000 – present",
  domains-list: ("aviation",),
  modes-code: "TN",
  impact: "From industry pariah (a 1988–1998 loss rate of 4.79 per million departures against United's 0.27, and 228 dead at Guam in 1997) to spotless passenger safety record since 1999",
  diagram: dgm.dgm-korean-air,
  kind: "intervention",
  summary: [
    Between 1988 and 1998, Korean Air had one of the worst safety records
    in commercial aviation — a loss rate of 4.79 hull losses per million
    departures against United's 0.27 — and the 1997 Guam crash of Flight
    801 killed 228. The NTSB's probable cause was the captain's failure to
    execute the approach and the crew's failure to monitor it, with his
    fatigue and Korean Air's inadequate training as contributing factors;
    on why the first officer's challenges never came, the Board wrote that
    it was unable to identify the reason. The cultural reading — that a
    steep cockpit authority gradient silenced the right seat — came from
    the industry and from the airline itself, and it is what Korean Air
    then acted on. In 2000, Korean Air brought in Delta's David
    Greenberg to rebuild flight operations — mandating English as the
    cockpit language, adapting CRM for a high-power-distance culture, and
    bringing in outside consulting from Boeing and Delta. The airline has
    had no fatal passenger accident since, winning the 2006 Phoenix Award.
    Cultural legacy is not destiny when it is deliberately redesigned.
  ],
  sections: (
    // -- Background --
    [
      From 1988 to 1998, Korean Air suffered repeated fatal crashes, at a
      loss rate of 4.79 per million departures against United Airlines'
      0.27. The NTSB's report on the 1997 Guam crash of Flight 801, which
      killed 228, found the captain had failed to execute the approach and
      the crew had failed to monitor it, contributing his fatigue and the
      airline's inadequate training. It did not reach for culture: the
      words power distance, hierarchy and authority gradient appear nowhere
      in it, and on why the challenges from the right seat never came the
      Board said it was unable to identify the reason. That gap is where
      the cultural reading entered — from the industry, from the press, and
      from the airline, which acted on it.#cn()
    ],
    // -- The Intervention --
    [
      After foreign carriers suspended code-shares over its safety record,
      Korean Air in 2000 hired David Greenberg
      from Delta to overhaul flight operations; the FAA's August 2001
      downgrade of South Korea to Category 2 came a year later. The interventions were
      deliberate and cultural: mandated English fluency for all pilots, CRM
      training adapted for a high-power-distance setting, external
      consulting from Boeing and Delta, and fleet modernization. The
      external commercial pressure — suspended code-shares and a downgraded
      rating — supplied the leverage to act, turning a cultural problem the
      airline had long lived with into one it could no longer afford to
      ignore.#cn()
    ],
    // -- How It Worked --
    [
      the decisive move operated on language. Making English the
      cockpit language stripped out the Korean honorific hierarchy that had
      silenced first officers, because English has no honorifics to enforce
      rank. The CRM adaptation then gave crews an explicit, culturally
      workable protocol for raising concerns — converting deference into
      communication. The choice was elegant precisely because it changed the
      medium rather than asking pilots to override their own culture: with
      no honorifics to encode, the language itself flattened the gradient
      that had absorbed the first officer's warnings.#cn()
    ],
    // -- The Evidence --
    [
      Korean Air has recorded no fatal passenger accident since the reforms
      took hold. Air Transport World recognized the turnaround with its
      2006 Phoenix Award, and the carrier moved from international pariah to
      a safety record indistinguishable from the best global operators. The
      categorical nature of the shift — from a loss rate many times the
      industry's to none — is what makes the case persuasive: the same crews
      and the same national culture produced opposite outcomes once the
      cockpit's communication structure was redesigned.#cn()
    ],
    // -- What Transferred --
    [
      Korean Air is the strongest aviation evidence that cultural legacy is
      not destiny: a specific cultural feature — high power distance in the
      cockpit — was the binding constraint, and once it was redesigned, the
      safety record changed categorically. The case also shows that the
      interface for cultural redesign can itself be engineered, in this
      instance through language. The transferable lesson is to locate the
      single cultural feature that actually binds the capability rather than
      attempting to remake a culture wholesale, then change the medium
      through which that feature operates.#cn()
    ],
  ),
  beats: (
    "Korean Air's 1988–1998 loss rate was 4.79 per million departures against United's 0.27; the NTSB named crew monitoring and training failures",
    "Korean Air hired David Greenberg from Delta to mandate English, adapt CRM, and modernize",
    "English fluency became the condition of remaining a pilot and Boeing's Alteon ran training in English; the honorific reading is Gladwell's",
    "No fatal passenger accident since the reforms; the 2006 Phoenix Award recognized the turnaround",
    "Cultural legacy is not destiny; locate the binding feature and engineer the medium that carries it",
  ),
  references: (
    [NTSB (2000), AAR-00/01, _Controlled Flight Into Terrain, Korean Air Flight 801, Boeing 747-300, HL7468, Nimitz Hill, Guam, August 6, 1997_ — the captain's approach failure and the crew's failure to monitor and challenge; contributing, the captain's fatigue and Korean Air's inadequate flight crew training.],
    [Air Transport World Phoenix Award documentation (2006) — recognition of the turnaround.],
    [Gladwell, M. (2008), _Outliers_ — the Korean Air chapter on power distance and the English-language change.],
    [Helmreich, Wilhelm, Klinect & Merritt (2001), "Culture, Error, and Crew Resource Management," in Salas, Bowers & Edens (eds.), _Improving Teamwork in Organizations_ (Erlbaum) — national culture and CRM adaptation.],
    [Korean Air corporate safety reports — the post-2000 accident-free record.],
  ),
  quote: [Korean Air's record before 2000 was changed by an external intervention into cockpit culture, not by criticism of it.],
  quote-source: "Editors' synthesis of NTSB findings on KAL 801 and the Korean Air transformation",
  le-insight: [
    Korean Air is the strongest aviation evidence that cultural legacy
    is not destiny. A specific cultural feature — high power distance
    in the cockpit — was the binding capability constraint. Once it was
    redesigned, the safety record changed categorically. The
    intervention is also methodologically interesting because it
    operated on language: English became the cockpit language because
    English has no honorifics to enforce. The interface for cultural
    redesign was a linguistic one.
  ],
  lens-approach: [
    LENS uses Korean Air in LEN 8 as the canonical organizational-
    learning case under cultural constraint and in LEN 2 as a CRM-
    extension case for high-power-distance contexts. The case is
    paired in this book with the Toyota Andon Cord (Case 155) as
    cultural intervention success stories.
  ],
  literature-items: (
    [Hofstede, _Cultures and Organizations_ (3rd ed., 2010)],
    [Helmreich, Wilhelm, Klinect & Merritt (2001) on national culture and CRM],
    [Gladwell, _Outliers_ (2008)],
  ),
  reflection-list: (
    [Identify a cultural feature in an institution you work with that constrains capability. Is it engineerable? What would the redesign look like?],
    [Korean Air's intervention operated on language. What surface of culture is engineerable in your domain that you have not yet considered?],
    [Korean Air acted only once suspended code-shares and a downgraded rating made the status quo unaffordable. What external pressure exists in your domain that could supply the leverage to redesign a long-tolerated cultural constraint — and how would you use it?],
  ),
  approaches: (
    during: (
      [Locate the single cultural feature that actually binds the capability — here, high power distance expressed through honorifics — rather than attempting to remake the whole culture.],
      [Change the medium through which that feature operates (making English the cockpit language) so the constraint is removed structurally rather than by asking people to override their own culture.],
      [Pair the structural change with an adapted protocol — CRM tuned for a high-power-distance setting — that gives crews a culturally workable way to raise concerns.],
    ),
    after: (
      [Use external pressure (suspended code-shares, a downgraded rating) as durable leverage to hold the reform in place against any drift back to the prior norm.],
      [Sustain the change with continued outside benchmarking and consulting so the new communication structure is reinforced rather than quietly eroding.],
      [Track the safety record over years to confirm the categorical shift holds, treating a maintained accident-free record as the evidence the redesign took.],
    ),
  ),
  courses: ("LEN 2", "LEN 8"),
  scale: "big",
  induced-anchor: "4.3",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 119 — aviation-safety-reporting-system-asrs ----
#case(
  number: 119,
  slug: "aviation-safety-reporting-system-asrs",
  title: "Aviation Safety Reporting System (ASRS)",
  year: "1976 – present",
  domains-list: ("aviation",),
  modes-code: "TKN",
  impact: "NASA-administered confidential reporting system; more than 2M reports received; the architecture other evidence-driven safety systems copied",
  diagram: dgm.dgm-flow(
    ("operator", "confidential\nreport", "ASRS DB", "analyst", "FAA action"),
    framing: "non-punitive use is the commitment that makes it work",
    caption: "ASRS — paired technical artifact and protected reporter",
  ),
  kind: "intervention",
  summary: [
    The Aviation Safety Reporting System, run by NASA on behalf of the FAA
    since 1976, accepts confidential reports from pilots, controllers,
    mechanics, and cabin crew about incidents, near-misses, and safety
    concerns. Its decisive feature is institutional, not technical:
    reporting an event to ASRS confers immunity from FAA enforcement for
    the conduct reported, within specified limits, making honest reporting
    the rational choice. Over nearly fifty years and more than two million
    reports, ASRS has become one of the world's largest sources of aviation-safety and human-factors information, surfacing patterns — automation surprise,
    runway incursions, fatigue effects — before they reached formal
    investigation thresholds. The architecture has been emulated across
    domains, and is the canonical success case for an evidence system
    paired with a credible commitment to non-punitive use.
  ],
  sections: (
    // -- Background --
    [
      The most valuable safety information in any high-consequence domain
      lives with front-line operators — the near-misses and quiet errors
      that never reach an accident report. But operators will not surrender
      that information to an institution that can punish them for it, so
      the data that could prevent the next accident stays locked in the
      people who hold it. The incentives run backward: the person best
      placed to report a near-miss is the same person a punitive system
      gives the strongest reason to stay silent, so the data that matters
      most is the data least likely to surface.#cn()
    ],
    // -- The Intervention --
    [
      In 1976 the FAA and NASA created the Aviation Safety Reporting
      System, a confidential channel for pilots, controllers, mechanics,
      and cabin crew to report incidents, near-misses, and concerns. NASA —
      not the regulator — administers it, and reporting an event confers
      immunity from FAA enforcement for the conduct reported, subject to
      specified limits. Putting a neutral party between the reporter and the
      enforcer directly addressed the backward incentive — an operator now
      had a positive reason to report, because doing so converted potential
      jeopardy into protection.#cn()
    ],
    // -- How It Worked --
    [
      The system pairs a technical artifact (the reporting form and a
      searchable database) with a cultural commitment (protected,
      non-punitive use). The immunity provision makes reporting the
      rational choice for the operator, and NASA's role as a neutral third
      party makes the protection credible. The two were designed together and
      have never been separated: the FAA established the program itself in
      April 1975 and within four months signed the agreement handing
      collection to NASA, having judged that its own enforcement role
      would suppress the reporting the program depended on. That is design
      reasoning on the record rather than a test of either half alone. The credibility of the protection is what does the work — a
      promise of non-punishment from the regulator itself would be doubted,
      so routing it through NASA is what makes operators trust it enough to
      report.#cn()
    ],
    // -- The Evidence --
    [
      Over nearly fifty years ASRS has accumulated more than two million
      reports — the largest single repository of aviation-safety
      information in the world. Patterns such as automation surprise,
      runway incursions, and fatigue effects were first identified at scale
      through ASRS data before they crossed formal investigation
      thresholds. Surfacing a pattern before it reaches an accident is the
      whole point — the value of the system is the hazards it lets the
      industry act on while they are still near-misses, not the reports it
      collects after the fact.#cn()
    ],
    // -- What Transferred --
    [
      ASRS has been studied and emulated across domains — patient-safety
      reporting systems, the maritime and aviation CHIRP scheme, and
      similar systems in rail and nuclear power. It is the canonical
      positive case for evidence architecture paired with an institutional
      commitment to non-punitive learning, the defining design pattern of a
      "just culture." The breadth of emulation shows that the load-bearing element travels — wherever the most valuable safety data
      sits with operators who fear punishment, the same protected-reporting
      design recurs as the way to unlock it.#cn()
    ],
  ),
  beats: (
    "Valuable safety data lives with operators; punitive systems give them strongest reason to stay silent",
    "FAA and NASA created a confidential channel in 1976 conferring immunity for reported conduct",
    "A neutral third party paired with immunity made non-punitive protection credible enough to trust",
    "Over two million reports surfaced automation surprise, runway incursions, and fatigue before accidents",
    "Patient safety, maritime CHIRP, rail, and nuclear systems emulated the protected-reporting design pattern",
  ),
  references: (
    [NASA ASRS Program documentation and annual reports — system design, immunity provision, and report volume.],
    [FAA Advisory Circular 00-46F, "Aviation Safety Reporting Program" — the program's establishment in April 1975, the FAA–NASA Memorandum of Agreement of 15 August 1975, and the immunity provisions.],
    [Reason, J. (1997), _Managing the Risks of Organizational Accidents_ — non-punitive reporting as a model (paraphrased).],
    [NASA ASRS technical reports (Connell et al.) — patterns first surfaced via ASRS data.],
    [Dekker, S. (2012), _Just Culture_ — the cultural commitment to non-punitive use.],
    [CHIRP and patient-safety reporting-system documentation — cross-domain emulation.],
  ),
  quote: [ASRS is the model for confidential, voluntary, non-punitive incident reporting in any high-consequence domain.],
  quote-source: "Paraphrasing James Reason, Managing the Risks of Organizational Accidents, 1997",
  le-insight: [
    ASRS is the canonical positive case for paired-intervention
    evidence architecture. The technical artifact (the reporting form
    and the database) shipped together with the institutional commitment
    to non-punitive use and a neutral holder, and has never run without
    it — so the case teaches how the pair was designed, not what either
    half would do alone. Together they have produced the
    operational-safety dataset other domains have tried to copy.
  ],
  lens-approach: [
    LENS uses ASRS in LEN 4 as the primary positive case for evidence architecture and in LEN 8 for institutional commitment
    to non-punitive learning. Studio projects design ASRS-equivalents
    for new domains.
  ],
  literature-items: (
    [Reason (1997)],
    [Connell, et al., ASRS technical reports],
    [Dekker, _Just Culture_ (2012)],
  ),
  reflection-list: (
    [Identify a domain in your institution that would benefit from an ASRS-equivalent. What cultural commitment would be required for it to function?],
    [Design the institutional commitment that makes an ASRS-equivalent operational rather than merely declared.],
    [ASRS made the protection credible by routing it through NASA rather than the regulator. Identify a reporting channel in your domain that operators distrust, and specify the neutral party or structural separation that would make its non-punitive promise believable.],
  ),
  approaches: (
    during: (
      [Pair a simple reporting artifact (a form and searchable database) with a credible commitment to non-punitive use, since the channel without the protection collects nothing of value.],
      [Confer immunity for reported conduct so that reporting becomes the rational choice, directly reversing the incentive that otherwise keeps the most valuable data hidden.],
      [Route the protection through a neutral third party rather than the enforcer, so operators trust the non-punitive promise enough to report against their own interest.],
    ),
    after: (
      [Analyze the accumulated reports to surface patterns — automation surprise, runway incursions, fatigue — and act on them while they are still near-misses rather than accidents.],
      [Protect the immunity provision over time, since a single high-profile punishment of a reporter would collapse the trust the whole system depends on.],
      [Export the protected-reporting design, not just the database, to new domains, adapting the neutral-party structure wherever valuable safety data sits with operators who fear punishment.],
    ),
  ),
  courses: ("LEN 4", "LEN 8"),
  scale: "big",
  induced-anchor: "4.2",
  lens-anchor: "D4/PT2",
  leo-anchor: "LEO-4",
)

// ---- Case 120 — egpws-taws-closing-the-cfit-category-in ----
#case(
  number: 120,
  slug: "egpws-taws-closing-the-cfit-category-in",
  title: "EGPWS / TAWS — Closing the CFIT Category in Commercial Aviation",
  year: "1996 – 2002",
  domains-list: ("aviation", "safety engineering", "human factors"),
  modes-code: "HKG",
  impact: "AlliedSignal's Enhanced Ground Proximity Warning System (EGPWS, 1996; now Honeywell's), mandated by the FAA as Terrain Awareness and Warning System (TAWS) for U.S.-registered turbine aircraft beginning in 2000 and broadly worldwide by 2002, converted controlled flight into terrain (CFIT) — historically one of the largest categories of commercial-aviation fatalities — into a category whose rate in equipped fleets has fallen sharply; CFIT events on properly equipped and operating airliners are now rare",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Controlled flight into terrain (CFIT) — a serviceable aircraft
    under the pilot's control flown unintentionally into the
    ground, water, or an obstacle — was for decades one of the
    largest categories of commercial-aviation fatalities. The
    1979 Air New Zealand Mt Erebus crash (257 dead) and the 1995
    American Airlines 965 Cali crash (159 dead) are canonical
    examples. The first-generation Ground Proximity Warning
    System (GPWS) developed by C. Donald Bateman at
    Sundstrand / Honeywell in the 1970s used radio altimeter and
    rate-of-descent inputs to warn of imminent terrain
    contact; it reduced CFIT but produced late warnings and was
    blind to terrain ahead of the aircraft. Enhanced GPWS
    (EGPWS), introduced commercially in 1996, added a digital
    terrain database and aircraft position to the input set,
    permitting forward-looking terrain-avoidance alerting. The
    FAA mandated EGPWS-class equipment (formally TAWS) on
    U.S.-registered turbine aircraft beginning March 2000, with
    full compliance required by 2005; ICAO and most national
    regulators followed. The published outcome record is that
    CFIT in EGPWS-equipped commercial fleets has become rare —
    NTSB, FAA, and Flight Safety Foundation analyses consistently
    report a sharp decline. The hedge that survives: residual
    CFIT events still occur, typically involving disabled or
    inhibited equipment, deviation from procedure, or terrain
    outside the database, and the case has to honor the system-
    in-operation discipline rather than the system-as-installed
    claim.
  ],
  sections: (
    [
      Through the 1960s and 70s, controlled flight into terrain
      was one of the highest-fatality categories in commercial
      aviation. The pattern was structurally consistent:
      serviceable aircraft, qualified crew, often in IMC
      (instrument meteorological conditions) or at night, flown
      into rising terrain the crew had not visualized correctly.
      The Air New Zealand Mt Erebus crash (1979, 257 dead) and
      the American Airlines 965 Cali crash (1995, 159 dead) are
      the canonical examples — competent crews who lost
      situational awareness about their position relative to
      terrain in conditions that prevented visual recovery.#cn()
    ],
    [
      The first engineered intervention was the Ground Proximity
      Warning System (GPWS), developed in the early 1970s by
      C. Donald Bateman at Sundstrand (later Honeywell). GPWS
      used radio altimeter readings and rate-of-descent to
      generate "pull up" and similar warnings when the aircraft
      was descending toward terrain directly below it. GPWS
      reduced CFIT meaningfully through the 1970s and 80s, but
      had two structural limits: it produced late warnings
      (the aircraft was already close to terrain when the alert
      fired), and it was blind to terrain ahead of the aircraft — at Cali the GPWS fired only about twelve seconds before impact, because the rising terrain was ahead of the flight path, not below.#cn()
    ],
    [
      Enhanced GPWS (EGPWS), introduced by Honeywell in 1996,
      addressed both limits by adding a digital terrain
      database and aircraft position (GPS / IRS) to the input
      set. The system can now compute a forward-looking terrain
      surface relative to the aircraft's projected flight path
      and provide alerts well before terrain contact is
      imminent. The FAA codified the capability in the
      Terrain Awareness and Warning System (TAWS) regulation,
      requiring TAWS-class equipment on U.S.-registered turbine aircraft with six or more passenger seats under a rule published 29 March 2000 and effective 29 March 2001, binding new-build aircraft from March 2002 and the whole fleet by March 2005. ICAO and
      most national regulators followed with parallel
      mandates.#cn()
    ],
    [
      The published outcome record across NTSB accident
      statistics, FAA reporting, and Flight Safety Foundation
      analyses is that CFIT in EGPWS-equipped commercial
      fleets has fallen sharply. The category that once
      dominated airliner-fatality statistics is now an
      uncommon-event category in equipped fleets. The
      structural claim the case makes is the cue/alert-design
      one: a failure mode in which the operator's perception
      of terrain was the limiting variable was converted into
      a monitored, recoverable mode by surfacing the forward
      terrain picture as an actionable alert. Pair with
      anesthesia monitoring (Case 27) at the cue/alert-as-
      capability layer, and with TCAS (Case 121) at the
      automated-advisory-system layer.#cn()
    ],
    [
      The hedge has to survive into the case. CFIT events
      still occur, typically involving one or more of: EGPWS
      disabled or inhibited (crew action, MEL release,
      maintenance), deviation from procedure (e.g., descent
      below minimum sector altitude under pressure), or
      terrain or obstacles not represented in the database
      (rapidly changing wind-turbine and structure
      environments are a known frontier). The system-in-
      operation has to be flying and the crew has to act on
      the alert; a rule-of-thumb in the safety community is
      that EGPWS is most useful when its warnings are taken
      seriously enough that they are rare in operation. The
      case teaches the cue/alert intervention at its most
      durable, with the qualification that the capability
      depends on the standard being honored in operation, not
      on the equipment being installed.#cn() TAWS is CAST Safety Enhancement 1, so the CFIT decline reported here is a component of the 83% portfolio result quoted in Case 117, arrived at through the industry coordination described in Case 123.
    ],
  ),
  beats: (
    "CFIT historically among the largest commercial-aviation fatality categories; Erebus 1979 (257), Cali 1995 (159) canonical",
    "GPWS (Bateman, 1970s) reduced CFIT but produced late warnings and was blind to terrain ahead of the aircraft",
    "EGPWS (Honeywell, 1996) added digital terrain database + position; forward-looking alerts up to a minute before terrain contact",
    "FAA TAWS mandate March 2000 (full by 2005); ICAO and most national regulators follow",
    "CFIT in EGPWS-equipped fleets falls sharply; residual events involve disabled equipment, procedure deviation, or terrain outside database",
  ),
  approaches: (
    during: (
      [Identify the operator-perception variable that is the limiting variable in a failure mode (here: the crew's awareness of terrain ahead of the aircraft) and engineer the system that surfaces that variable as an actionable alert with enough lead time to recover.],
      [Pair the alert design with a regulatory mandate that makes the equipment non-waiverable across the fleet, so adoption is fleet-level capability rather than per-operator choice. The 1996-to-2001 gap between commercial availability and mandate is the political-process cost.],
      [Build the cue's lead time around the time the operator needs to act, not the time the equipment can produce the alert; a too-late alert is the GPWS limitation EGPWS was specifically built to address.],
    ),
    after: (
      [Carry the system-in-operation hedge into communication: the capability depends on EGPWS being operational, not inhibited, and on the crew acting on the alert. Inhibition discipline is part of the deliverable.],
      [Maintain the terrain database as a continuously updated artifact; the equipment as installed is only as good as the database it queries, and rapidly changing obstacle environments (wind turbines, structures) are a known frontier.],
      [Treat residual CFIT events as evidence about the operational discipline, not as evidence against the intervention; the system that has reduced a fatality category to rare uncommon events is doing the work the case claims.],
    ),
  ),
  references: (
    [Bateman, C. D. (1999), "The Introduction of Enhanced Ground Proximity Warning Systems (EGPWS) into Civil Aviation Operations Around the World," in _Proceedings of the 11th Annual European Aviation Safety Seminar_, Flight Safety Foundation, pp. 259–274 — developer history.],
    [Federal Aviation Administration (2000), 14 CFR §§ 91.223, 121.354, 135.154 — Terrain Awareness and Warning System (TAWS) equipage requirement.],
    [Flight Safety Foundation (1998 – 2000), CFIT / ALAR Task Force reports — operational and outcome analyses motivating mandate.],
    [Aeronáutica Civil of the Republic of Colombia (1996), _Aircraft Accident Report: Controlled Flight Into Terrain, American Airlines Flight 965, Boeing 757-223, N651AA, near Cali, Colombia, December 20, 1995_ (NTSB participating, DCA96RA020).],
    [Royal Commission to Inquire into the Crash on Mount Erebus, Antarctica of a DC10 Aircraft Operated by Air New Zealand Limited (1981), final report (Mahon report).],
  ),
  quote: [The capability depends on the standard being honored in operation, not on the equipment being installed.],
  quote-source: "Editors' synthesis of FAA TAWS rule history and FSF ALAR analyses.",
  le-insight: [
    EGPWS / TAWS is the canonical cue/alert intervention at
    fleet scale. The forward-looking terrain alert converted a
    failure mode in which the crew's terrain perception was the
    limiting variable into a monitored, recoverable mode. CFIT
    in equipped fleets has become rare; residual events
    typically involve inhibited equipment or procedure
    deviation, and the hedge is the case.
  ],
  lens-approach: [
    EGPWS / TAWS is the aviation cue/alert intervention case
    (induced 3.1; LENS D4/PT5) — Domain 4 for cue-design-as-
    deliverable; Domain 3 for the operator-cue boundary. Pair
    with TCAS (Case 121) and Case 27 (anesthesia monitoring).
  ],
  literature-items: (
    [Bateman (1999), FSF 11th European Aviation Safety Seminar],
    [14 CFR §§ 91.223, 121.354, 135.154 — TAWS rule],
    [NTSB AAR-96-05 — American Airlines 965 (Cali)],
  ),
  reflection-list: (
    [Identify a failure mode in your domain where operator perception of an external variable is the limiting factor. What is the analog of the digital terrain database — the engineered representation of the variable — and what lead time would the cue need to be actionable?],
    [Specify the regulatory or institutional mandate path you would expect: EGPWS reached the market in 1996, was mandated in 2001, and was fully equipaged by 2005. Five years from commercial availability to full equipage is a useful planning datum for a fleet-scale capability mandate.],
    [The system-in-operation hedge is binding. What inhibition discipline would your program require so that the engineered recovery layer is operating when the failure mode appears, and how would you instrument that the discipline is being honored?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 7"),
)

// ---- Case 121 — tcas-coordinated-collision-avoidance ----
#case(
  number: 121,
  slug: "tcas-coordinated-collision-avoidance",
  title: "TCAS — Coordinated Collision Avoidance and the Überlingen Lesson",
  year: "1981 – 2008 (TCAS II Version 7.1)",
  domains-list: ("aviation", "automation", "human factors"),
  modes-code: "HKG",
  impact: "TCAS II — the Traffic Alert and Collision Avoidance System — provides cockpit traffic display and coordinated Resolution Advisories (RAs) between aircraft on conflicting trajectories; mandated on U.S. air-carrier and on most international turbine aircraft, TCAS converted mid-air collision in commercial aviation from a recurring fatality category to a rare event; the 2002 Überlingen mid-air (71 dead) exposed a specific coordination failure mode and drove the 2008 release of TCAS II Version 7.1, which added RA reversal logic and replaced the ambiguous 'adjust vertical speed' advisory with 'level off, level off'",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    TCAS — the Traffic Alert and Collision Avoidance System,
    standardized in RTCA DO-185 and successors — is the
    cockpit automation that monitors transponder returns from
    nearby aircraft, computes potential conflicts, and issues
    Traffic Advisories and Resolution Advisories (RAs) to the
    crew. Operational TCAS II was mandated on U.S. air-carrier
    aircraft by FAA rule in the early 1990s and on most
    international turbine aircraft by ICAO. RAs are coordinated:
    when two TCAS-equipped aircraft are in conflict, one is
    instructed to climb and the other to descend by negotiated
    inversion of the data-link. The intervention converted
    mid-air collision in commercial aviation from a recurring
    fatality category to a rare event. The case's decisive
    edge case is the 2002 Überlingen mid-air collision (71 dead),
    in which one crew followed the TCAS RA and the other
    followed an ATC instruction in the opposite direction. The
    BFU investigation identified the human–TCAS–ATC
    coordination failure mode and drove the 2008 release of
    TCAS II Version 7.1, which added RA reversal logic for the aircraft that does not comply, and replaced the ambiguous "adjust vertical speed" advisory with "level off, level off", and clarified the precedence of TCAS RAs over ATC instructions. The hedge survives into the case: TCAS is
    among the strongest aviation automation interventions in the
    outcome record, and the Überlingen failure mode and its V7.1
    correction are part of the case rather than smoothed away.
  ],
  sections: (
    [
      Mid-air collision in commercial aviation has been a
      recurring fatality category since the 1950s. The 1956
      Grand Canyon mid-air (128 dead) prompted the modern
      U.S. air-traffic-control system, but ATC alone cannot
      always prevent collision when traffic densities or
      coordination errors exceed the controller's reach. The
      FAA and RTCA developed the Traffic Alert and Collision
      Avoidance System (TCAS) through the 1980s as a cockpit
      collision-avoidance automation independent of ATC. TCAS
      II — the operational version with Resolution Advisories
      — was mandated on U.S. air-carrier aircraft beginning in
      the early 1990s, and on most international turbine
      aircraft by ICAO over the following decade.#cn()
    ],
    [
      The TCAS II architecture is what the case rests on. Each
      equipped aircraft interrogates the transponders of nearby
      aircraft and computes a closest-point-of-approach
      projection from range, altitude, and rate data. If the
      projection enters the conflict envelope, TCAS issues a
      Traffic Advisory (TA) — a cue to the crew to acquire
      the other aircraft visually if possible. If the conflict
      persists, TCAS issues a Resolution Advisory (RA): a
      specific vertical-rate command ("Climb, climb" or
      "Descend, descend"). When two TCAS-equipped aircraft
      are in conflict, the two RAs are coordinated via the
      Mode S data link so the aircraft are instructed to
      diverge — one climbing, one descending — rather than
      both maneuvering in the same direction.#cn()
    ],
    [
      The deployed outcome record across the 1990s and 2000s
      was strong. Mid-air collision in TCAS-equipped fleets
      became rare. The case nevertheless turns on Überlingen.
      On July 1, 2002, a Russian Tu-154 and a DHL Boeing 757
      approached on conflicting trajectories at FL360 over
      southern Germany. Both aircraft received coordinated
      TCAS RAs — the 757 to descend, the Tu-154 to climb. The
      Tu-154 crew was instructed to descend by a Skyguide controller working alone on a degraded console configuration, began the descent, and seven seconds later received the climb RA. The Tu-154 crew followed the ATC
      instruction; the 757 followed the TCAS RA; both
      aircraft descended into each other. 71 people died,
      most of them Russian schoolchildren flying from Ufa to a holiday in Spain.#cn()
    ],
    [
      The BFU investigation identified a specific failure mode
      at the human–automation–controller boundary: TCAS RA
      precedence over ATC instructions was insufficiently
      clear in the crew procedures, the data-link coordination
      between the two TCAS units had performed as designed but
      could not enforce the result on the crew, and the ATC
      single-controller / degraded-console context was a
      systemic failure. The aviation response was operational
      and technical: ICAO and national regulators clarified
      that TCAS RAs take precedence over conflicting ATC
      instructions; ATC procedures were tightened around
      coordination of conflict-resolution between controllers
      and TCAS; and RTCA SC-147 with EUROCAE WG-75 developed TCAS II Version 7.1 (released 2008), which made two separate changes: it added reversal logic for the case where an aircraft manoeuvres opposite to its resolution advisory, and it replaced the ambiguous "adjust vertical speed, adjust" advisory with the unambiguous "level off, level off", and
      clarified RA wording and behavior at the boundary.#cn()
    ],
    [
      The hedge survives into the case. TCAS is among the
      strongest aviation automation interventions in the
      outcome record; the Überlingen failure mode is not a
      refutation of the system but a documented coordination
      limit that drove the V7.1 correction. The case teaches
      the coordinated-automation form at its most durable,
      with the discipline that the human–automation–human-
      operator triangle (crew, TCAS, ATC) has to be designed
      coherently. A single-controller / degraded-console
      situation and an unclear precedence rule converted a
      working automation into a fatal outcome; both were
      addressed in the post-Überlingen response, and both
      remain part of the case rather than smoothed away.#cn()
    ],
  ),
  beats: (
    "TCAS II mandated on U.S. air-carrier (early 1990s) and on most international turbine aircraft (ICAO); RAs coordinated via Mode S data link",
    "Outcome: mid-air collision in TCAS-equipped fleets becomes rare through the 1990s and 2000s",
    "Überlingen mid-air July 1 2002 (71 dead, most of them Russian schoolchildren) — Tu-154 followed ATC, B757 followed TCAS RA; both descended",
    "BFU finding: RA precedence over ATC insufficiently clear; ATC single-controller / degraded-console context a systemic failure",
    "TCAS II Version 7.1 (2008): RA reversal logic (CP112E) plus 'level off, level off' replacing 'adjust vertical speed' (CP115); clarified RA precedence over conflicting ATC instructions",
  ),
  approaches: (
    during: (
      [Design the coordinated-automation logic for the case where one of the coordinated agents does not comply — the Überlingen failure mode — not just for the case where both comply. The V7.1 reversal logic is the worked example of that design discipline.],
      [Specify precedence at the human–automation boundary unambiguously and in advance: TCAS RAs take precedence over conflicting ATC instructions. Leaving precedence to crew judgment under time pressure is the design choice that produced Überlingen.],
      [Treat the ATC context (single-controller, degraded console) as part of the system the automation operates in, not as a precondition the automation can assume away. Systemic failures at the boundary determine the boundary behavior.],
    ),
    after: (
      [Carry the Überlingen failure mode into the case rather than smoothing it away. The intervention is not less effective for having a documented coordination edge case; it is more credible because the edge case is named and addressed.],
      [Track the post-V7.1 outcome record as evidence about the correction, not just about the original intervention; the lesson is the iterative-design discipline that the human–automation triangle requires after a failure mode is exposed.],
      [Use the case as the canonical pair to EGPWS (Case 120): two cockpit automations, two outcome categories closed, one with a coordination edge case that drove a version revision and one without.],
    ),
  ),
  references: (
    [RTCA (2008), DO-185B "Minimum Operational Performance Standards for Traffic Alert and Collision Avoidance System II (TCAS II)" — Version 7.1 with reversal logic.],
    [Bundesstelle für Flugunfalluntersuchung (BFU) (2004), AX001-1-2/02 — Investigation Report on the mid-air collision on 1 July 2002 near Überlingen.],
    [Commission Regulation (EU) No 1332/2011 — ACAS II version 7.1 required in EU airspace from 1 March 2012 for new aeroplanes and from 1 December 2015 for the existing fleet.],
    [Federal Aviation Administration, 14 CFR § 121.356 — TCAS II equipage requirement.],
    [MIT Lincoln Laboratory / FAA, "Safety analysis of upgrading to TCAS Version 7.1 using the 2008 U.S. Correlated Encounter Model" (2009) — the quantitative basis for the V7.1 change.],
  ),
  quote: [The intervention is not less effective for having a documented coordination edge case; it is more credible because the edge case is named and addressed.],
  quote-source: "Editors' synthesis of the BFU Überlingen report and the V7.1 development record.",
  le-insight: [
    TCAS is among the strongest aviation automation
    interventions in the outcome record; the Überlingen
    coordination failure mode is part of the case rather than
    smoothed away. The human–automation–ATC triangle has to be
    designed coherently; V7.1's reversal logic and the
    clarified precedence rule are the iterative-design response
    to the documented edge case.
  ],
  lens-approach: [
    TCAS is the coordinated-cockpit-automation case
    (induced 3.1; LENS D4/PT5) — Domain 4 for the
    Überlingen-driven V7.1 iteration; Domain 3 for the
    crew–TCAS–ATC precedence rule. Pair with EGPWS (Case 120)
    and Case 27.
  ],
  literature-items: (
    [RTCA DO-185B (2008), TCAS II Version 7.1],
    [BFU AX001-1-2/02 (2004), Überlingen report],
    [Eurocontrol ACAS II Bulletin],
  ),
  reflection-list: (
    [Identify a coordinated-automation system in your domain where two agents must comply for the resolution to work. What is the analog of the V7.1 reversal logic — the design for the case where one agent does not comply?],
    [Specify the precedence rule at the human–automation boundary in your system. Überlingen turned on an ambiguous precedence rule; the post-2002 clarification is the worked example of why precedence has to be unambiguous in advance.],
    [The systemic context (Skyguide single-controller / degraded console) was part of the failure. What contextual preconditions does your automation assume that, if they fail, would convert a working automation into a failure mode?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 7"),
)

// ---- Case 122 — singapore-airlines-safety-transformation ----
#case(
  number: 122,
  slug: "singapore-airlines-safety-transformation",
  title: "Singapore Airlines Safety Transformation",
  year: "1980s – present",
  domains-list: ("aviation",),
  modes-code: "TN",
  impact: "Sustained safety record over decades despite challenging operating conditions; among the most safety-invested carriers in commercial aviation",
  diagram: dgm.dgm-flow(
    ("training", "simulator", "fleet age", "reporting", "transparency"),
    framing: "sustained capability investment ahead of regulatory minimums",
    caption: "Singapore Airlines — capability investment as competitive differentiator",
  ),
  kind: "intervention",
  summary: [
    Singapore Airlines has invested in safety capability across decades in
    a way that sets it apart from carriers operating under comparable
    conditions — early adoption of CRM, heavy simulator investment, a
    young-fleet policy, and a strong reporting culture, sustained even
    through rapid growth. The 2000 crash of Flight SQ006, which attempted
    takeoff from a closed, partly-constructed runway at Taipei during a
    typhoon and killed 83, prompted an institutional response — early public acknowledgement, compensation offered ahead of findings, and operational review — that the crisis-communication literature examines, while Singapore's own investigation team formally contested the Taiwan report's apportionment of cause. The airline is the operational
    successor to Korean Air (Case 118): an Asian carrier that engineered its
    safety capability deliberately and sustained the investment as a
    competitive differentiator, not only in response to crisis.
  ],
  sections: (
    // -- Background --
    [
      Commercial aviation runs on thin margins, and safety investment —
      simulators, training hours, fleet renewal — is a cost that
      competitive pressure constantly pushes downward. The question for any
      carrier is whether to treat capability as a floor set by regulation
      or as a deliberate, sustained investment ahead of the minimum. The
      pressure is structural rather than occasional — every budget cycle
      invites trimming the margin between regulatory minimum and actual
      capability, so sustaining the investment requires deciding the
      question deliberately rather than by default.#cn()
    ],
    // -- The Intervention --
    [
      Singapore Airlines chose sustained investment. From the 1980s it was
      an early adopter of Crew Resource Management and CRM-style culture
      work tuned to its operating context, and it committed to heavy
      simulator investment, a deliberately young fleet, and a strong
      internal reporting culture — maintaining these even during periods of
      rapid expansion. Holding the investment through rapid growth is the
      hard test — expansion is precisely when the temptation to let
      capability lag the fleet is strongest, and maintaining it then is what
      separates a sustained commitment from a fair-weather one.#cn()
    ],
    // -- How It Worked --
    [
      The carrier treated safety capability as a competitive differentiator
      rather than a regulatory burden, pairing technical investment —
      training systems, modern aircraft — with a culture of transparency
      and reporting. Investing ahead of regulatory minimums made the
      capability a managed system parameter, not a residual of cost-cutting
      decisions made elsewhere. Framing safety as a differentiator rather
      than a burden is what made the investment defensible against cost
      pressure — it tied capability to the brand and the premium the airline
      charged, giving the spend a commercial rationale, not just a safety
      one.#cn()
    ],
    // -- The Evidence --
    [
      The 2000 crash of Flight SQ006 — an attempted takeoff from a closed,
      partly-constructed runway at Taipei during Typhoon Xangsane, killing
      83 — tested the institution. The Taiwan investigation put all eight probable causes on the weather and the flight crew, and Singapore's own investigation team filed a formal dissent arguing that airport deficiencies had been played down. The airline's own conduct — early acknowledgement, senior management on site, compensation offered ahead of findings — is what the crisis-management literature examines, and it is a narrower claim than a clean institutional-learning record. The test of a safety culture is how it behaves after
      its own accident, and choosing transparency over defensiveness is what
      turned SQ006 from a refutation of the airline's reputation into
      evidence the reporting culture extended to its own failures.#cn()
    ],
    // -- What Transferred --
    [
      Singapore Airlines is the case for sustained capability investment
      under competitive pressure, and the operational successor to Korean
      Air (Case 118): where Korean Air is a transformation forced by crisis,
      Singapore Airlines is deliberate investment sustained without one.
      Together they show two routes — crisis-driven and voluntary — to the
      same engineered safety capability. The voluntary route is the harder
      one to hold, because it has no catastrophe to point to as
      justification, which is why framing the investment as a competitive
      differentiator matters: it supplies the rationale that a crisis would
      otherwise provide.#cn()
    ],
  ),
  beats: (
    "Thin aviation margins push capability investment downward; each budget cycle invites trimming the safety margin",
    "From the 1980s Singapore Airlines invested in CRM, simulators, young fleet, and reporting culture",
    "Framing safety as a competitive differentiator tied to brand gave the spend a commercial rationale",
    "SQ006's response is studied in the crisis-communication literature; Singapore's investigation team also formally contested the Taiwan report's causes",
    "Two routes to engineered safety emerge; voluntary investment is harder without crisis as justification",
  ),
  references: (
    [Aviation Safety Council (Taiwan), _Crashed on a Partially Closed Runway during Takeoff, Singapore Airlines Flight 006, Boeing 747-400, 9V-SPK, CKS Airport, Taoyuan, October 31, 2000_ (2002) — the accident, the eight probable causes, and Singapore's dissenting comments at §7.],
    [Henderson, J. C. (2003), "Communicating in a crisis: flight SQ 006," _Tourism Management_ 24(3):279–287 — the analysis of Singapore Airlines' early crisis response.],
    [Singapore Airlines, "Singapore Airlines keeps fleet young" (SilverKris/company account) and SIA annual reports — the young-fleet policy in the airline's own words; in-service average fleet age about 8.3 years as of 2026.],
    [Helmreich, Wilhelm, Klinect & Merritt (2001), "Culture, error, and crew resource management," in Salas, Bowers & Edens (eds.), _Improving Teamwork in Organizations_ — national culture and CRM adaptation.], [Weick & Sutcliffe (2007), _Managing the Unexpected_ — sustained high-reliability investment.],
  ),
  quote: [Singapore Airlines has consistently invested in safety capability ahead of regulatory minimums.],
  quote-source: "Editors' synthesis on Singapore Airlines' sustained safety investment",
  le-insight: [
    Singapore Airlines is the case for sustained capability investment
    in a competitive industry. The carrier has chosen safety
    capability investment as a primary differentiator. The result
    over decades is a safety record that distinguishes it from peers
    operating under comparable conditions.
  ],
  lens-approach: [
    LENS uses Singapore Airlines in LEN 8 for sustained institutional
    capability investment under competitive pressure. The case pairs
    with Korean Air (Case 118) as Asian-carrier capability stories of
    different shapes — one transformation under crisis, the other
    sustained investment without crisis.
  ],
  literature-items: (
    [Taiwan ASC, SQ006 Report (2002)],
    [Helmreich, Wilhelm, Klinect & Merritt (2001), national culture and CRM],
    [Singapore Airlines corporate-safety reports],
  ),
  reflection-list: (
    [Identify an institution in your domain that has chosen capability investment as a primary differentiator. What pattern has it sustained?],
    [Design the institutional architecture that makes sustained capability investment defensible against competitive cost pressure.],
    [Singapore Airlines sustained its investment voluntarily, without a crisis to point to, by framing capability as a competitive differentiator. Identify a safety or capability investment in your domain that lacks a catastrophe to justify it, and construct the commercial rationale that would defend it against the next budget cut.],
  ),
  approaches: (
    during: (
      [Decide deliberately to invest ahead of regulatory minimums — simulators, a young fleet, training hours — rather than letting capability settle at the floor by default under cost pressure.],
      [Pair the technical investment with a transparency and reporting culture, so capability is a managed system parameter rather than a residual of cost-cutting decisions elsewhere.],
      [Frame safety capability as a competitive differentiator tied to the brand, giving the spend a commercial rationale that can survive scrutiny, not just a safety one.],
    ),
    after: (
      [Hold the investment through periods of rapid growth — the moment the temptation to let capability lag the fleet is strongest — since maintaining it then is what makes the commitment sustained rather than fair-weather.],
      [Respond to the institution's own accidents by publishing what changed operationally, not only by contesting the apportionment of cause; a reporting culture is credible only when it extends to the institution's own failures.],
      [Anchor the investment to the brand and premium so it survives leadership and budget cycles, supplying the durable justification a voluntary commitment lacks without a crisis to point to.],
    ),
  ),
  courses: ("LEN 8",),
  scale: "big",
  induced-anchor: "1.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)

// ---- Case 123 — fsf-cfit-and-alar-task-forces-industry ----
#case(
  number: 123,
  slug: "fsf-cfit-and-alar-task-forces-industry",
  title: "FSF CFIT and ALAR Task Forces — Industry-Level Institution Building After a Spike",
  year: "1992 – 2000s",
  domains-list: ("aviation safety", "industry coordination", "training"),
  modes-code: "GKN",
  impact: "After Controlled Flight Into Terrain emerged as the leading cause of commercial-jet fatalities through the late 1980s, the Flight Safety Foundation convened industry-wide task forces that produced the CFIT Checklist, the ALAR Tool Kit, and the institutional momentum behind Terrain Awareness and Warning System (TAWS) mandates; CFIT and ALAR accident rates fell sharply over the subsequent decade",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "6.1",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
  summary: [
    Through the late 1980s and into the early 1990s, Controlled
    Flight Into Terrain — a serviceable aircraft flown under control
    into the ground, water, or an obstacle — was the leading cause
    of commercial-jet fatalities worldwide. The Flight Safety
    Foundation (FSF), an independent industry body, convened the
    CFIT Task Force in 1992 and, in parallel with the broader ICAO
    response, produced the CFIT Checklist — a structured tool for
    operators to assess their own exposure. The Approach-and-Landing
    Accident Reduction (ALAR) Task Force followed in 1996, producing
    the ALAR Tool Kit (released 2000) covering the approach phase
    where roughly half of fatal accidents then occurred. The
    institutional momentum from those task forces sat behind the
    eventual Terrain Awareness and Warning System (TAWS) mandates
    in the U.S. (2002) and ICAO (2007). CFIT and approach-and-landing
    accident rates fell sharply through the subsequent decade. The
    case teaches industry-level institution building after a
    catastrophe-class spike: the deliverable is the cross-operator
    tool, the diagnostic structure, and the coordinated path to
    mandate. The hedge survives — the rate decline is multifactorial
    (TAWS hardware, training, procedural change, fleet turnover) —
    and the institutional form is what the case is teachable on.
  ],
  sections: (
    [
      Through the late 1980s and into the early 1990s, Controlled
      Flight Into Terrain dominated commercial-jet fatality
      statistics. A serviceable aircraft, flown under control, was
      finding terrain or water — the crew's mental model of position
      and trajectory diverged from reality at the worst possible
      moment, and the existing Ground Proximity Warning Systems
      (GPWS) generation reached the crew too late to recover in many
      terrain encounters. The pattern was recognized across operators
      and regulators, and the response that emerged was industry
      coordination led by an independent body — the Flight Safety
      Foundation — rather than regulator-first action alone.#cn()
    ],
    [
      The CFIT Task Force convened in 1992 and operated as a working
      group across operators, manufacturers, regulators, and pilot
      organizations. Its central deliverable was the CFIT Checklist
      — a structured self-assessment instrument that let an operator
      score its own CFIT-risk exposure across route, equipment,
      training, and procedure dimensions, and identify where the
      gaps sat. The Checklist was distributed without restriction.
      The institutional theory was straightforward: a cross-operator
      diagnostic, owned by no single competitor, would let the
      industry move together on a problem that no single operator's
      own data could fully characterize.#cn()
    ],
    [
      The Approach-and-Landing Accident Reduction Task Force followed
      in 1996, scoped to the approach phase, which accounted for
      roughly half of fatal accidents in the analysis window. The
      ALAR Tool Kit, released in 2000, was the most substantial
      deliverable of the entire industry-coordination effort: a
      multi-element package of briefing notes, training aids, video
      content, and risk-assessment instruments covering stabilized
      approach criteria, runway excursion, monitored approach
      practice, and crew procedural design. The Tool Kit was
      adopted across operators of all sizes precisely because the
      FSF had no competitive stake in any one airline's adoption.#cn()
    ],
    [
      The eventual regulatory action — the FAA's TAWS mandate
      (final rule 2000: new-build compliance 2002, retrofit of earlier GPWS-equipped aircraft with the
      newer terrain-database-driven warning system) and the ICAO
      TAWS requirement (effective 2007) — sat downstream of the
      task-force momentum, not upstream of it. CFIT accident rates
      fell sharply through the subsequent decade across both
      commercial transport and corporate aviation; approach-and-
      landing accidents declined alongside. The task forces set an explicit target — a 50 percent reduction in the approach-and- landing accident rate in five years — and the decline that followed ran well past it, though no published analysis isolates the task forces' share of it.#cn()
    ],
    [
      the hedge that matters survives into the case. The
      accident-rate decline is multifactorial: TAWS hardware in the
      cockpit, training changes the task forces catalyzed,
      stabilized-approach criteria adopted at the operator level,
      and steady fleet turnover into airframes with more capable
      equipment all moved together. Attributing the entire decline
      to the FSF task forces alone overstates the evidence; what
      the evidence supports is that the industry-coordination form
      — independent convening body, cross-operator diagnostic
      tools released without competitive restriction, momentum
      sustained to a regulatory mandate — was the institutional
      mechanism that organized the response, and the response
      worked. The case is the canonical C6.1 instance of
      industry-level institution building after a catastrophe-class
      spike, paired with v1 ASRS (Case 119) and CAST (Case 117) at
      the industry-coordination layer.#cn() The task forces, the TAWS mandate (Case 120), and the CRM/CAST apparatus (Case 117) are three components of one decline; the multifactorial hedge governs all three, and no case's share of the 83% is separately measured.
    ],
  ),
  beats: (
    "CFIT was the leading cause of commercial-jet fatalities through the late 1980s — serviceable aircraft, controlled flight, terrain encountered too late to recover",
    "FSF CFIT Task Force (1992) produces the CFIT Checklist — cross-operator self-assessment, distributed without restriction",
    "FSF ALAR Task Force (1996); task-force report published 1998–99, ALAR Tool Kit released 2000 covering stabilized approach, runway excursion, monitored approach, crew procedure",
    "FAA TAWS final rule 2000 (new-build 2002, retrofit by 2005); ICAO TAWS effective 2007 — regulatory action sits downstream of task-force momentum, not upstream",
    "CFIT and ALAR accident rates fall sharply over the subsequent decade; hedge preserved — decline is multifactorial (TAWS, training, procedure, fleet turnover)",
  ),
  approaches: (
    during: (
      [Convene the cross-operator working body before the regulator does — an independent industry foundation, no competitive stake in any one operator's adoption — so the diagnostic tool can be released without restriction and adopted across the field.],
      [Design the diagnostic as a structured self-assessment, not a benchmark league table; operators will use what they can apply privately, and the field-level signal aggregates from voluntary adoption.],
      [Build the tool kit around the phase of flight that accident analysis says dominates the harm — approach-and-landing in this case — rather than around evenly distributed coverage that no single operator can adopt fully.],
    ),
    after: (
      [Sustain the institutional momentum into the regulatory mandate; the task forces did the technical and political work that made the TAWS rule adoptable, and the rule consolidates what the field already does.],
      [Report the accident-rate decline with the multifactorial hedge intact; TAWS hardware, training, procedure, and fleet turnover all moved together, and isolating the task-force contribution overstates the available evidence.],
      [Treat the institutional form as the transferable artifact: an independent convening body, cross-operator diagnostic tools without competitive restriction, coordinated path to regulatory mandate. The form pairs with CAST (Case 117) and ASRS (Case 119) at the industry-coordination layer.],
    ),
  ),
  references: (
    [Flight Safety Foundation, "Killers in Aviation: FSF Task Force Presents Facts About Approach-and-landing and Controlled-flight-into-terrain Accidents," _Flight Safety Digest_ (1998–1999).],
    [Flight Safety Foundation, ALAR Tool Kit (2000; updated 2010) — distributed multi-element package built on the 34 ALAR Briefing Notes published in _Flight Safety Digest_, August–November 2000.],
    [Khatwa & Helmreich, "Analysis of critical factors during approach and landing in accidents and normal flight," _Flight Safety Digest_ (1998) — the analytical basis of the ALAR Task Force scope.],
    [FAA, Terrain Awareness and Warning System (TAWS) Final Rule, 65 FR 16736 (29 March 2000), 14 CFR §§ 91.223, 121.354, 135.154 — new-build compliance 29 March 2002, retrofit by 29 March 2005.],
    [ICAO Annex 6, TAWS requirement (effective 2007) — the international consolidation.],
  ),
  quote: [The deliverable is the cross-operator diagnostic, owned by no single competitor, released without restriction. The mandate consolidates what the field already does.],
  quote-source: "Editors' synthesis of the FSF CFIT and ALAR task-force literature.",
  le-insight: [
    The FSF CFIT and ALAR task forces are the canonical case of
    industry-level institution building after a catastrophe-class
    spike. An independent foundation convened the cross-operator
    working bodies, released structured diagnostic tools without
    competitive restriction, and sustained momentum to a regulatory
    mandate. The accident-rate decline is multifactorial; the
    institutional form is what the case is teachable on.
  ],
  lens-approach: [
    FSF CFIT/ALAR is the canonical industry-coordination case
    (induced 6.1; LENS D5/PT4) — Domain 5 for the independent-
    convening-body form; Domain 2 for the structured diagnostic
    instruments as iterating deliverables. Pair with Cases 117,
    119, and 13.
  ],
  literature-items: (
    [FSF _Flight Safety Digest_ (1998–1999) — CFIT and ALAR task-force record],
    [FSF ALAR Tool Kit (2000)],
    [FAA TAWS Final Rule (2000)],
  ),
  reflection-list: (
    [Identify a catastrophe-class failure pattern in your domain whose response has been operator-by-operator rather than industry-coordinated. What would the analog of an independent convening body look like, and which body could plausibly play that role without competitive stake?],
    [Specify the cross-operator diagnostic — checklist, tool kit, structured self-assessment — that you would design as the first deliverable of an FSF-style task force. The deliverable has to be applicable privately by each operator, and aggregate into field-level signal.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)
