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
      operational decision rule under extreme pressure.#cn()
    ],
    // -- The Intervention --
    [
      After seven people in the Chicago area died from Tylenol capsules
      laced with potassium cyanide, and with the source and scope of the
      tampering unknown, Johnson & Johnson recalled every Tylenol product
      nationwide — about 31 million bottles, at a cost near \$100 million —
      suspended all advertising, and engaged publicly with the FBI and FDA
      rather than minimizing exposure.#cn()
    ],
    // -- How It Worked --
    [
      The load-bearing element was a commitment pre-committed in writing.
      Because the Credo had already decided, decades earlier, that the
      customer came first, the 1982 leadership did not have to improvise an
      ethical calculus under crisis — it executed a pre-made decision. CEO
      James Burke later credited the Credo with making clear "exactly what
      we were all about" the moment the deaths occurred.#cn()
    ],
    // -- The Evidence --
    [
      The response, unprecedented in U.S. corporate practice, preserved
      public trust: Tylenol recovered its market share within a year
      despite the enormous short-term cost. The case became the canonical
      positive example in business education of crisis response driven by
      capability commitment rather than legal minimization.#cn()
    ],
    // -- What Transferred --
    [
      The reform reshaped consumer-product packaging worldwide —
      tamper-evident seals, blister packs, and caplet forms became standard
      — and the FDA promulgated tamper-resistant-packaging regulations
      within months. The deeper transfer is the principle that values must
      be pre-committed in writing to be operational under stress, not
      invented in the moment.#cn()
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
      people who hold it.#cn()
    ],
    // -- The Intervention --
    [
      In 1976 the FAA and NASA created the Aviation Safety Reporting
      System, a confidential channel for pilots, controllers, mechanics,
      and cabin crew to report incidents, near-misses, and concerns. NASA —
      not the regulator — administers it, and reporting an event confers
      immunity from FAA enforcement for the conduct reported, subject to
      specified limits.#cn()
    ],
    // -- How It Worked --
    [
      The system pairs a technical artifact (the reporting form and a
      searchable database) with a cultural commitment (protected,
      non-punitive use). The immunity provision makes reporting the
      rational choice for the operator, and NASA's role as a neutral third
      party makes the protection credible. Either half alone fails;
      together they make the data flow to the institution that can act on
      it.#cn()
    ],
    // -- The Evidence --
    [
      Over nearly fifty years ASRS has accumulated more than two million
      reports — the largest single repository of aviation-safety
      information in the world. Patterns such as automation surprise,
      runway incursions, and fatigue effects were first identified at scale
      through ASRS data before they crossed formal investigation
      thresholds.#cn()
    ],
    // -- What Transferred --
    [
      ASRS has been studied and emulated across domains — patient-safety
      reporting systems, the maritime and aviation CHIRP scheme, and
      similar systems in rail and nuclear power. It is the canonical
      positive case for evidence architecture paired with an institutional
      commitment to non-punitive learning, the defining design pattern of a
      "just culture."#cn()
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
      unit's results were normal or dangerously poor.#cn()
    ],
    // -- The Intervention --
    [
      After whistleblowing and a public inquiry into deaths at the Bristol
      Royal Infirmary between 1984 and 1995, the Kennedy Inquiry
      recommended routine, risk-adjusted, specialty-level outcomes
      reporting. The reform built national registries — beginning with
      cardiac surgery and extending to other specialties — together with a
      commitment to publish results, including at the level of individual
      surgeons.#cn()
    ],
    // -- How It Worked --
    [
      The intervention was explicitly paired. The technical half — registry
      design, statistical risk adjustment so that surgeons taking hard
      cases are not penalized, and a publication architecture — was
      necessary but not sufficient. The cultural half — surgeons accepting
      that their comparative results would be visible — was equally
      load-bearing, and was the harder of the two to secure.#cn()
    ],
    // -- The Evidence --
    [
      The UK became one of the few countries that routinely publishes
      surgeon- and unit-level outcomes, and the cardiac-surgery registry is
      among the most mature specialty-outcomes regimes in any country.
      Outcomes data ceased to be the private property of clinicians and
      became a shared resource for patients, referrers, and surgeons
      themselves.#cn()
    ],
    // -- What Transferred --
    [
      Bristol is the foundational UK case for outcomes transparency as a
      paired-intervention deliverable, and its registry model has been
      extended across NHS specialties and influenced later national-quality
      reforms. It pairs with Keystone ICU (Case 14) as healthcare-outcomes
      interventions operating at different layers — the bedside protocol and
      the system-level measurement regime.#cn()
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
      or as a deliberate, sustained investment ahead of the minimum.#cn()
    ],
    // -- The Intervention --
    [
      Singapore Airlines chose sustained investment. From the 1980s it was
      an early adopter of Crew Resource Management and CRM-style culture
      work tuned to its operating context, and it committed to heavy
      simulator investment, a deliberately young fleet, and a strong
      internal reporting culture — maintaining these even during periods of
      rapid expansion.#cn()
    ],
    // -- How It Worked --
    [
      The carrier treated safety capability as a competitive differentiator
      rather than a regulatory burden, pairing technical investment —
      training systems, modern aircraft — with a culture of transparency
      and reporting. Investing ahead of regulatory minimums made the
      capability a managed system parameter, not a residual of cost-cutting
      decisions made elsewhere.#cn()
    ],
    // -- The Evidence --
    [
      The 2000 crash of Flight SQ006 — an attempted takeoff from a closed,
      partly-constructed runway at Taipei during Typhoon Xangsane, killing
      83 — tested the institution. Its response, documented in the Taiwan
      investigation, became a reference case in post-accident institutional
      learning: operational changes, training updates, and public
      transparency about what had happened and why, rather than
      defensiveness.#cn()
    ],
    // -- What Transferred --
    [
      Singapore Airlines is the case for sustained capability investment
      under competitive pressure, and the operational successor to Korean
      Air (Case 23): where Korean Air is a transformation forced by crisis,
      Singapore Airlines is deliberate investment sustained without one.
      Together they show two routes — crisis-driven and voluntary — to the
      same engineered safety capability.#cn()
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
  quote-source: "IATA Operational Safety Audit retrospectives",
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
  ),
  courses: ("LEN 8",),
)
