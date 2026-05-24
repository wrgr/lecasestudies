// ============================================================
// Chapter 8 — Paired Interventions (further successes)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 88,
  title: "Tylenol Recall",
  year: "1982",
  domains-list: ("healthcare", "industrial"),
  modes-code: "GN",
  impact: "Foundational U.S. corporate crisis-management case; produced tamper-evident packaging regulation and modern recall practice",
  diagram: dgm.dgm-stat(
    "31M",
    "bottles recalled · ~$100M cost",
    micro: "the pre-committed institutional credo became operational under stress",
    caption: "Tylenol — values pre-committed in writing, executed under crisis",
  ),
  kind: "intervention",
  summary: [
    In 1982, seven people in the Chicago area died after taking Tylenol
    capsules laced with potassium cyanide. Not knowing who was responsible
    or how widespread the tampering was, Johnson & Johnson recalled every
    Tylenol product nationwide — 31 million bottles, at a cost of roughly
    \$100 million — suspended advertising, and engaged openly with the FBI
    and FDA. The response was unprecedented in U.S. corporate practice, and
    it was a direct application of the J&J Credo, written in 1943, which
    had pre-specified that the company's first responsibility was to its
    customers. The reform that followed reshaped consumer packaging
    worldwide — tamper-evident seals and blister packs — and the FDA issued
    tamper-resistant-packaging rules within months. Tylenol recovered its
    market share within a year.
  ],
  sections: (
    // -- Background --
    [
      Johnson & Johnson's corporate Credo, written in 1943, pre-specified
      that the company's first responsibility was to the patients and
      consumers who used its products, ahead of shareholders. For four
      decades it was a statement of values; in 1982 it became an
      operational decision rule under extreme pressure. The ordering was
      explicit — customers ahead of shareholders — which is precisely the
      ranking that crisis pressure inverts, so committing to it in advance
      pre-decided the hardest trade-off before it had to be faced.#cn()
    ],
    // -- The Intervention --
    [
      After seven people in the Chicago area died from Tylenol capsules
      laced with potassium cyanide, and with the source and scope of the
      tampering unknown, Johnson & Johnson recalled every Tylenol product
      nationwide — about 31 million bottles, at a cost near \$100 million —
      suspended all advertising, and engaged publicly with the FBI and FDA
      rather than minimizing exposure. Recalling nationwide despite the
      tampering being known only in Chicago was the decisive choice — it
      treated the unknown scope as a reason to protect every customer rather
      than as room to limit the company's own exposure.#cn()
    ],
    // -- How It Worked --
    [
      The load-bearing element was a commitment pre-committed in writing.
      Because the Credo had already decided, decades earlier, that the
      customer came first, the 1982 leadership did not have to improvise an
      ethical calculus under crisis — it executed a pre-made decision. CEO
      James Burke later credited the Credo with making clear "exactly what
      we were all about" the moment the deaths occurred. Pre-commitment
      worked because it moved the decision out of the moment of maximum
      pressure — when fear and legal caution push hardest toward
      minimization — and into a calmer time when the right ordering could be
      set down without that distortion.#cn()
    ],
    // -- The Evidence --
    [
      The response, unprecedented in U.S. corporate practice, preserved
      public trust: Tylenol recovered its market share within a year
      despite the enormous short-term cost. The case became the canonical
      positive example in business education of crisis response driven by
      capability commitment rather than legal minimization. The market
      recovery is what makes the case persuasive rather than merely
      admirable — the \$100 million spent protecting customers was repaid in
      the trust that brought them back, so the pre-committed choice proved
      sound on its own terms.#cn()
    ],
    // -- What Transferred --
    [
      The reform reshaped consumer-product packaging worldwide —
      tamper-evident seals, blister packs, and caplet forms became standard
      — and the FDA promulgated tamper-resistant-packaging regulations
      within months. The deeper transfer is the principle that values must
      be pre-committed in writing to be operational under stress, not
      invented in the moment. The packaging reform and the decision-rule
      principle are the two layers of the transfer — one a physical
      safeguard against the specific threat, the other an institutional
      safeguard against the improvisation that crisis invites.#cn()
    ],
  ),
  references: (
    [Kaplan, T. (2014), _The Tylenol Crisis_ — the recall and corporate response.],
    [James Burke (J&J CEO), in _Lasting Leadership_ (Wharton) — the Credo quote.],
    [Greyser, S., _Johnson & Johnson: The Tylenol Tragedy_ (HBS case, 1992) — market recovery and crisis management.],
    [FDA Final Rule on Tamper-Resistant Packaging (1982) — the packaging reform.],
    [Edmondson, A. (2018), _The Fearless Organization_ — pre-committed values under stress.],
  ),
  quote: [The Credo is all about the consumer. When those seven deaths occurred, the Credo made it very clear at that point exactly what we were all about.],
  quote-source: "James Burke (Johnson & Johnson CEO), quoted in Lasting Leadership (Wharton)",
  le-insight: [
    Tylenol is the canonical positive case for institutional response
    to crisis. The capability that was load-bearing was the
    pre-specified institutional commitment in the Credo. The crisis
    decision had been made decades earlier; in 1982 it was executed.
    The case is the strongest evidence in the business-ethics dataset
    that values must be pre-committed in writing to be operational
    under stress.
  ],
  lens-approach: [
    LENS uses Tylenol in LEN 7 as the foundational positive case for
    institutional governance under crisis and in LEN 10 (capstone) as a
    worked example of pre-committed capability that executed under
    operational pressure.
  ],
  literature-items: (
    [Kaplan (2014), _The Tylenol Crisis_],
    [Edmondson (2018), _The Fearless Organization_],
    [Greyser, HBS case studies],
  ),
  reflection-list: (
    [What is your institution's equivalent of the J&J Credo, and is it operational under crisis or aspirational?],
    [Pre-commitment is hard to enforce later. Design the institutional architecture that makes a Tylenol-style response the only available option in the worst case.],
    [J&J recalled nationwide while the tampering was known only in Chicago, treating unknown scope as a reason to protect everyone. Identify a decision in your domain where uncertainty currently licenses minimizing exposure, and write the pre-committed rule that would flip it toward protection instead.],
  ),
  approaches: (
    during: (
      [Pre-commit the hardest trade-off in writing before the crisis — rank customer safety ahead of shareholder exposure — so leadership executes a pre-made decision rather than improvising under pressure.],
      [Set the rule in a calm period when fear and legal caution cannot distort the ordering, since those forces push hardest exactly when the decision must be made.],
      [Make the commitment concrete enough to act on — a nationwide recall, open engagement with regulators — so unknown scope becomes a reason to protect everyone rather than room to limit exposure.],
    ),
    after: (
      [Pair the institutional decision rule with a physical safeguard against the specific threat (tamper-evident packaging) so the response addresses both the improvisation problem and the vulnerability.],
      [Treat the preserved trust and market recovery as the measure that the pre-committed choice was sound, not merely admirable, and document it to defend the principle internally.],
      [Embed the commitment durably enough that it survives leadership turnover, so the next crisis meets the same pre-decided rule rather than a fresh improvisation.],
    ),
  ),
  courses: ("LEN 10", "LEN 7", "LEN 6",),
)

#case(
  number: 89,
  title: "Aviation Safety Reporting System (ASRS)",
  year: "1976 – present",
  domains-list: ("aviation",),
  modes-code: "TKN",
  impact: "NASA-administered confidential reporting system; more than 2M reports received; foundational architecture for evidence-driven aviation safety",
  diagram: dgm.dgm-flow(
    ("operator", "confidential\nreport", "ASRS DB", "analyst", "FAA action"),
    framing: "non-punitive use is the load-bearing institutional commitment",
    caption: "ASRS — paired technical artifact and protected reporter",
  ),
  kind: "intervention",
  summary: [
    The Aviation Safety Reporting System, run by NASA on behalf of the FAA
    since 1976, accepts confidential reports from pilots, controllers,
    mechanics, and cabin crew about incidents, near-misses, and safety
    concerns. Its load-bearing feature is institutional, not technical:
    reporting an event to ASRS confers immunity from FAA enforcement for
    the conduct reported, within specified limits, making honest reporting
    the rational choice. Over nearly fifty years and more than two million
    reports, ASRS has become the world's largest repository of
    aviation-safety information, surfacing patterns — automation surprise,
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
      party makes the protection credible. Either half alone fails;
      together they make the data flow to the institution that can act on
      it. The credibility of the protection is what does the work — a
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
      "just culture." The breadth of emulation underscores that the
      load-bearing element travels — wherever the most valuable safety data
      sits with operators who fear punishment, the same protected-reporting
      design recurs as the way to unlock it.#cn()
    ],
  ),
  references: (
    [NASA ASRS Program documentation and annual reports — system design, immunity provision, and report volume.],
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
    and the database) is paired with the cultural commitment to
    non-punitive use. Either alone fails. Together they have produced
    the most comprehensive operational-safety dataset in any domain.
  ],
  lens-approach: [
    LENS uses ASRS in LEN 4 as the foundational positive case for
    evidence architecture and in LEN 8 for institutional commitment
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
)

#case(
  number: 90,
  title: "Bristol Heart Babies Reform",
  year: "1984 – present",
  domains-list: ("healthcare",),
  modes-code: "GN",
  impact: "Foundational UK case in clinical outcomes transparency; produced specialty-level performance reporting in UK cardiac surgery",
  diagram: dgm.dgm-compare(
    "before",
    "private",
    "after",
    "published",
    framing: "outcomes data ceased to be the private property of clinicians",
    caption: "Bristol — outcomes transparency as paired intervention",
  ),
  kind: "intervention",
  summary: [
    Through whistleblowing and a public inquiry, the Bristol Royal
    Infirmary was found to have had substantially worse pediatric
    cardiac-surgery outcomes than other UK centers for years. The Kennedy
    Inquiry — one of the most influential UK healthcare inquiries in modern
    times — located the capability gap in the absence of routine
    specialty-level outcomes reporting: surgeons did not know how their
    results compared with peers, patients did not know, and referrals did
    not respond to actual outcome data. The reform built national
    specialty-level outcomes registries, first in cardiac surgery and then
    across other specialties, making the UK one of the few countries that
    routinely publishes surgeon-level results — a paired intervention of
    technical registry plus institutional commitment to publish that ended
    outcomes data as the private property of clinicians.
  ],
  sections: (
    // -- Background --
    [
      In pediatric cardiac surgery, small differences in a unit's
      performance can mean the difference between a child living and dying
      — yet in the UK of the 1980s and early 1990s, no system routinely
      compared outcomes between centers. A surgeon, a hospital, or a
      referring physician had no reliable way to know whether a given
      unit's results were normal or dangerously poor. Without comparison
      across centers, a dangerously poor unit and an ordinary one looked
      alike from inside, so the very gap that cost children's lives was the
      one no one was positioned to see.#cn()
    ],
    // -- The Intervention --
    [
      After whistleblowing and a public inquiry into deaths at the Bristol
      Royal Infirmary between 1984 and 1995, the Kennedy Inquiry
      recommended routine, risk-adjusted, specialty-level outcomes
      reporting. The reform built national registries — beginning with
      cardiac surgery and extending to other specialties — together with a
      commitment to publish results, including at the level of individual
      surgeons. Starting in cardiac surgery and then extending outward was
      deliberate sequencing — the specialty where the harm had been exposed
      proved the model, and the registry then spread to fields that had not
      had their own Bristol.#cn()
    ],
    // -- How It Worked --
    [
      The intervention was explicitly paired. The technical half — registry
      design, statistical risk adjustment so that surgeons taking hard
      cases are not penalized, and a publication architecture — was
      necessary but not sufficient. The cultural half — surgeons accepting
      that their comparative results would be visible — was equally
      load-bearing, and was the harder of the two to secure. The risk
      adjustment was what made the cultural half securable: without it,
      surgeons who took the sickest patients would have been punished by the
      raw numbers, giving them every reason to resist publication or avoid
      hard cases.#cn()
    ],
    // -- The Evidence --
    [
      The UK became one of the few countries that routinely publishes
      surgeon- and unit-level outcomes, and the cardiac-surgery registry is
      among the most mature specialty-outcomes regimes in any country.
      Outcomes data ceased to be the private property of clinicians and
      became a shared resource for patients, referrers, and surgeons
      themselves. That surgeons themselves became users of the data, not
      just subjects of it, is part of why the regime endured — comparison
      that had once felt like exposure became a tool the profession relied
      on to know where it stood.#cn()
    ],
    // -- What Transferred --
    [
      Bristol is the foundational UK case for outcomes transparency as a
      paired-intervention deliverable, and its registry model has been
      extended across NHS specialties and influenced later national-quality
      reforms. It pairs with Keystone ICU (Case 14) as healthcare-outcomes
      interventions operating at different layers — the bedside protocol and
      the system-level measurement regime. The two layers are complementary
      rather than competing: Keystone changes what happens at the point of
      care, while Bristol changes what the system can see about results
      across centers, and a mature regime needs both.#cn()
    ],
  ),
  references: (
    [Kennedy, I. (2001), _Learning from Bristol: The Report of the Public Inquiry into Children's Heart Surgery at the Bristol Royal Infirmary 1984–1995_ — the inquiry and recommendations (paraphrased).],
    [Society for Cardiothoracic Surgery in GB & Ireland, national outcomes reports — the registry and surgeon-level publication.],
    [Berwick, D. (2013), _A Promise to Learn — A Commitment to Act_ — the broader NHS-safety reform.],
    [Sherlaw-Johnson et al. — risk-adjusted outcome methodology.],
    [NHS national clinical audit and registry documentation — extension across specialties.],
  ),
  quote: [Outcomes data must cease to be the private property of clinicians and become a shared institutional resource.],
  quote-source: "Paraphrasing the Kennedy Inquiry Final Report (Learning from Bristol), 2001",
  le-insight: [
    Bristol is the canonical UK case for outcomes-transparency as a
    paired intervention. The technical capability — registry design,
    statistical risk adjustment, publication architecture — was
    necessary. The cultural capability — surgeons accepting that
    their results would be visible and comparable — was equally
    necessary. The pair has produced one of the most mature
    specialty-outcomes regimes in any country.
  ],
  lens-approach: [
    LENS uses Bristol in LEN 4 for outcomes-transparency as a paired-
    intervention deliverable and in LEN 7 for the institutional reform
    that made surgeon-level publication acceptable. The case pairs
    with Keystone ICU (Case 14) as healthcare-outcomes interventions
    at different layers.
  ],
  literature-items: (
    [Kennedy QC (2001), _Learning from Bristol_],
    [Berwick (2013), _A Promise to Learn_],
    [Sherlaw-Johnson et al., risk-adjusted outcome literature],
  ),
  reflection-list: (
    [What is the equivalent of surgeon-level outcomes transparency in your domain? What cultural change would have to accompany the technical instrument?],
    [Design the registry and publication architecture for a specialty in your domain currently operating without outcomes transparency.],
    [Bristol's risk adjustment was what let surgeons accept publication, by ensuring those who took the hardest cases were not punished by raw numbers. Identify a transparency measure in your domain that practitioners resist, and design the adjustment that would make the comparison fair enough to accept.],
  ),
  approaches: (
    during: (
      [Pair the technical instrument — a registry with statistical risk adjustment and a publication architecture — with the cultural change of practitioners accepting that comparative results will be visible.],
      [Build risk adjustment in from the start so those who take the hardest cases are not punished by raw numbers, which is what makes the cultural half securable.],
      [Sequence the rollout to begin where the harm was exposed, proving the model in one specialty before extending it to fields that have not had their own crisis.],
    ),
    after: (
      [Make practitioners users of the data, not just subjects of it, so comparison becomes a tool the profession relies on rather than an exposure it resents — which is what sustains the regime.],
      [Extend the registry model across specialties over time, turning a single reform into a system-wide measurement regime.],
      [Pair the system-level transparency layer with point-of-care interventions (as with Keystone), since a mature outcomes regime needs both what the system can see and what happens at the bedside.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 3",),
)

#case(
  number: 91,
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
    typhoon and killed 83, prompted a sustained institutional
    self-examination — operational changes, training updates, and public
    transparency about what had happened — that became a model in the
    literature on post-accident learning. The airline is the operational
    successor to Korean Air (Case 23): an Asian carrier that engineered its
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
      83 — tested the institution. Its response, documented in the Taiwan
      investigation, became a reference case in post-accident institutional
      learning: operational changes, training updates, and public
      transparency about what had happened and why, rather than
      defensiveness. The test of a safety culture is how it behaves after
      its own accident, and choosing transparency over defensiveness is what
      turned SQ006 from a refutation of the airline's reputation into
      evidence the reporting culture extended to its own failures.#cn()
    ],
    // -- What Transferred --
    [
      Singapore Airlines is the case for sustained capability investment
      under competitive pressure, and the operational successor to Korean
      Air (Case 23): where Korean Air is a transformation forced by crisis,
      Singapore Airlines is deliberate investment sustained without one.
      Together they show two routes — crisis-driven and voluntary — to the
      same engineered safety capability. The voluntary route is the harder
      one to hold, because it has no catastrophe to point to as
      justification, which is why framing the investment as a competitive
      differentiator matters: it supplies the rationale that a crisis would
      otherwise provide.#cn()
    ],
  ),
  references: (
    [Aviation Safety Council (Taiwan), _SQ006 Accident Investigation Final Report_ (2002) — the accident and the airline's response.],
    [Singapore Airlines safety reports (multiple years) — training, fleet, and reporting-culture investment.],
    [IATA Operational Safety Audit (IOSA) documentation — investment ahead of regulatory minimums (paraphrased).],
    [Helmreich, Wilhelm, Klinect & Merritt (2001) — national culture and CRM adaptation.],
    [Weick & Sutcliffe (2007), _Managing the Unexpected_ — sustained high-reliability investment.],
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
    with Korean Air (Case 23) as Asian-carrier capability stories of
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
      [Respond to the institution's own accidents with transparency over defensiveness, demonstrating that the reporting culture extends to its own failures and converting a setback into evidence the culture is real.],
      [Anchor the investment to the brand and premium so it survives leadership and budget cycles, supplying the durable justification a voluntary commitment lacks without a crisis to point to.],
    ),
  ),
  courses: ("LEN 8",),
)
