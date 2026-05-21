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
  body: [
    Seven people in the Chicago area died after taking Tylenol capsules
    that had been laced with potassium cyanide. Johnson & Johnson did
    not know who had done it or how widespread the contamination was.
    The company's response — recall every Tylenol product nationwide
    (thirty-one million bottles), suspend all advertising, and
    publicly engage with the FBI and FDA — was at the time
    unprecedented in U.S. corporate practice. The recall cost the
    company approximately one hundred million dollars and the
    immediate confidence of its institutional investors.

    The reform that followed reshaped consumer-product packaging
    worldwide. Tamper-evident seals, blister packs, and caplet form
    factors became standard. The FDA promulgated tamper-resistant
    packaging regulations within months. Tylenol recovered its market
    share within a year.

    The case is the canonical positive example in U.S. business
    education of institutional response to a crisis driven by
    capability commitment rather than legal minimization. The
    Johnson & Johnson Credo, written in 1943, had pre-specified that
    the company's first responsibility was to customers. The 1982
    response was a direct application of that pre-specified
    commitment.
  ],
  quote: [We were guided by our Credo. The patients came first.],
  quote-source: "Paraphrasing James Burke (J&J CEO), public statements during the Tylenol crisis, 1982",
  sources-list: (
    [Kaplan, T., _The Tylenol Crisis_ (2014)],
    [FDA Final Rule on Tamper-Resistant Packaging (1982)],
    [Greyser, _Johnson & Johnson: The Tylenol Tragedy_ (HBS case, 1992)],
  ),
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
    institutional governance under crisis and in LEN 3 (Studio) as a
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
  courses: ("LEN 3", "LEN 7"),
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
  body: [
    The Aviation Safety Reporting System, administered by NASA on
    behalf of the FAA since 1976, accepts confidential reports from
    pilots, controllers, mechanics, and cabin crew about safety
    incidents, near-misses, and concerns. The system is explicitly
    non-punitive: reporting an incident to ASRS confers immunity from
    FAA enforcement action for the conduct reported, subject to
    specified limits. The architecture is designed to make reporting
    the rational choice for the operator and to make the data flow
    to the institution that can use it.

    Over fifty years and more than two million reports, ASRS has
    accumulated the largest single repository of aviation safety
    information in the world. Specific aviation incidents — automation
    surprise patterns, runway incursions, fatigue effects — were
    first identified at scale through ASRS data before they reached
    formal investigation thresholds. The architecture has been
    studied and emulated in other domains: PSRS for patient safety,
    CHIRP for maritime, similar systems for rail and nuclear.

    ASRS is the canonical success case for evidence-architecture
    paired with institutional commitment to non-punitive use.
  ],
  quote: [ASRS is the model for confidential, voluntary, non-punitive incident reporting in any high-consequence domain.],
  quote-source: "Paraphrasing James Reason, Managing the Risks of Organizational Accidents, 1997",
  sources-list: (
    [NASA ASRS Program documentation and annual reports],
    [Reason (1997), _Managing the Risks of Organizational Accidents_],
    [NASA ASRS Program Briefing materials and annual reports (Linda Connell, director)],
  ),
  le-insight: [
    ASRS is the canonical positive case for paired-intervention
    evidence architecture. The technical artifact (the reporting form
    and the database) is paired with the cultural commitment to
    non-punitive use. Either alone fails. Together they have produced
    the most comprehensive operational-safety dataset in any domain.
  ],
  lens-approach: [
    LENS uses ASRS in LEN 2 as the foundational positive case for
    evidence architecture and in LEN 9 for institutional commitment
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
  courses: ("LEN 2", "LEN 9"),
)

#case(
  number: 90,
  title: "Bristol Heart Babies Reform",
  year: "1991 – present",
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
  body: [
    The Bristol Royal Infirmary was found, through whistleblowing and
    subsequent inquiry, to have substantially worse outcomes in
    pediatric cardiac surgery than other UK centers for years. The
    Kennedy Inquiry produced a report that is one of the most
    influential UK healthcare inquiries in the modern era. The report
    identified the institutional capability gap as the absence of
    routine specialty-level outcomes reporting. Surgeons did not know
    how their results compared with peers. Patients did not know.
    Referral patterns did not respond to the actual outcome data.

    The reform that followed produced national specialty-level
    outcomes registries — first in cardiac surgery, subsequently in
    multiple specialties. The UK is now one of the few countries with
    routinely published surgeon-level outcomes data. The
    capability — patients, referrers, and surgeons themselves
    knowing what the outcomes actually are — was constructed as a
    paired intervention: a technical registry plus institutional
    commitment to publish.

    Bristol is the foundational UK case for outcomes-transparency
    as a paired-intervention deliverable.
  ],
  quote: [Outcomes data must cease to be the private property of clinicians and become a shared institutional resource.],
  quote-source: "Paraphrasing the Kennedy Inquiry Final Report (Learning from Bristol), 2001",
  sources-list: (
    [Kennedy QC, I. (2001), _Learning from Bristol: The Report of the Public Inquiry into Children's Heart Surgery at the Bristol Royal Infirmary 1984–1995_],
    [Society for Cardiothoracic Surgery in GB & Ireland, national outcomes reports],
    [Berwick, _A Promise to Learn — A Commitment to Act_ (2013)],
  ),
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
    LENS uses Bristol in LEN 2 for outcomes-transparency as a paired-
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
  courses: ("LEN 2", "LEN 7"),
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
  body: [
    Singapore Airlines invested in safety capability across decades in
    a way that distinguishes it from carriers operating under
    comparable conditions. The airline's training regime, simulator
    investment, fleet age policy, and reporting culture have produced
    sustained safety performance even during periods of rapid growth.
    Singapore Airlines was an early adopter of CRM and an early
    investor in CRM-style culture work tuned to its operating
    context.

    The SQ 006 accident in 2000 — runway incursion at Taipei in a
    typhoon — produced a sustained institutional self-examination
    that became a case study in the literature on post-accident
    institutional learning. The airline's response — operational
    changes, training updates, public transparency about what had
    happened and why — is referenced in commercial aviation as one
    of the model post-accident institutional responses.

    The case is positioned in this book as the operational successor
    to Korean Air (Case 23): an Asian carrier that engineered its
    safety capability deliberately and sustained the investment
    across decades.
  ],
  quote: [Singapore Airlines has consistently invested in safety capability ahead of regulatory minimums.],
  quote-source: "IATA Operational Safety Audit retrospectives",
  sources-list: (
    [Taiwan Aviation Safety Council, _SQ006 Accident Investigation Final Report_ (2002)],
    [Singapore Airlines Safety Reports (multiple years)],
    [IATA Operational Safety Audit (IOSA) documentation],
  ),
  le-insight: [
    Singapore Airlines is the case for sustained capability investment
    in a competitive industry. The carrier has chosen safety
    capability investment as a primary differentiator. The result
    over decades is a safety record that distinguishes it from peers
    operating under comparable conditions.
  ],
  lens-approach: [
    LENS uses Singapore Airlines in LEN 9 for sustained institutional
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
  courses: ("LEN 9",),
)
