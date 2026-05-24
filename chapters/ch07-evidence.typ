// ============================================================
// Chapter 7 — The Evidence Gap
// "Measurement Systems That Can't See Their Own Failures"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "7",
  title: "The Evidence Gap",
  subtitle: "Measurement systems that cannot see their own failures.",
  epigraph: [People don't just die from heart attacks and bacteria, they die from system-wide failings and poorly coordinated care.],
  epigraph-source: "Martin Makary, BMJ, 2016",
)

#case(
  number: 31,
  title: "Medical Errors as Systemic Failure",
  year: "ongoing",
  domains-list: ("healthcare",),
  modes-code: "THNKG",
  impact: "Makary & Daniel (2016) estimate of ~250,000 U.S. deaths/year from medical error — third leading cause; estimate is widely cited and substantively contested",
  diagram: dgm.dgm-makary,
  kind: "failure",
  summary: [
    Medical error in the United States is not a single incident but a
    systemic condition that the system's own measurement instruments
    cannot see. In 2016, Makary and Daniel of Johns Hopkins estimated, in
    the _BMJ_, that medical errors cause more than 250,000 deaths a year —
    which would make them the third leading cause of death behind heart
    disease and cancer. Death certificates do not record medical error as
    a cause, so the problem is structurally invisible to the systems meant
    to track it. The 250,000 figure has been substantively contested on
    methodological grounds — a dispute that is itself a worked example of
    the gap-attribution problem. The Institute of Medicine raised the
    alarm in 1999; seventeen years later the problem persisted at scale.
  ],
  sections: (
    // -- Background --
    [
      Modern medicine generates vast amounts of data, yet its core
      mortality-measurement instrument — the death certificate — records
      a proximate physiological cause and has no field for medical error.
      Because the certificate is keyed to a billing-and-classification
      taxonomy built for disease, a death set in motion by a care-process
      breakdown is recorded under whatever organ ultimately failed, and the
      causal role of the system disappears into the physiology. As a result,
      harm caused by the care system itself is largely absent from the
      statistics that are supposed to govern it.#cn()
    ],
    // -- What Happened --
    [
      In 2016, surgeon Martin Makary and Michael Daniel published an
      analysis in the _BMJ_ estimating that medical errors cause more than
      250,000 deaths a year in the United States — which would rank third
      behind heart disease and cancer. Their core claim was that "people
      don't just die from heart attacks and bacteria, they die from
      system-wide failings and poorly coordinated care." By relocating the
      cause from the individual clinician to the coordination of care, the
      framing recast a ledger of isolated mistakes as a single
      population-scale failure mode the existing statistics were never built
      to count.#cn()
    ],
    // -- The Investigation --
    [
      The 250,000 estimate was substantively contested. Shojania and
      Dixon-Woods, writing in _BMJ Quality & Safety_ in 2017, challenged
      the extrapolation and the attribution method, arguing that counting
      deaths "due to" error is far harder than a single headline number
      implies. Their objection turned on counterfactual attribution — how
      confidently one can say a frail, already-dying patient would have
      survived but for the error — a judgement that resists the clean
      tallying a headline number demands. The dispute is itself a worked
      example of the gap-attribution problem: how much of a counted death is
      the learning system, how much the system design, how much the
      underlying disease.#cn()
    ],
    // -- The Capability Gap --
    [
      The deeper failure is one of measurement: a system that cannot see
      its own failure modes cannot manage them. With no field on the
      certificate and no reliable count, every safety program competes for
      resources against a harm that the official record renders invisible,
      so even effective interventions struggle to prove their worth. The
      missing capability is an instrument that captures medical error as a
      tracked cause of harm — and an attribution method robust enough that
      the resulting number can guide intervention rather than fuel a
      methodological stalemate.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The Institute of Medicine's _To Err Is Human_ (1999) had earlier
      estimated 44,000–98,000 annual deaths and catalyzed the
      patient-safety movement — TeamSTEPPS (Case 27), the WHO surgical
      checklist (Case 13), the Keystone ICU project (Case 14). Each of those
      reforms targeted a specific process — teamwork, the operating room, the
      central line — leaving the system-wide count untouched, so the headline
      mortality kept escaping measurement even as bounded harms fell. Yet
      later work, including a 2023 _NEJM_ study of inpatient harm, confirms
      the problem persists at scale: the interventions exist; the measurement
      and the implementation still lag.#cn()
    ],
  ),
  references: (
    [Makary, M. & Daniel, M. (2016), "Medical error — the third leading cause of death in the US," _BMJ_ — the 250,000 estimate and the quoted framing.],
    [Makary & Daniel (2016), _BMJ_ — death certificates do not capture medical error as a cause.],
    [Shojania, K. & Dixon-Woods, M. (2017), "Estimating deaths due to medical error," _BMJ Quality & Safety_ — methodological contestation.],
    [Institute of Medicine, _To Err Is Human_ (1999) — the 44,000–98,000 estimate.],
    [Bates, D. et al. (2023), "The Safety of Inpatient Health Care," _NEJM_ 388(2) — persistence of harm at scale.],
  ),
  quote: [People don't just die from heart attacks and bacteria, they die from system-wide failings and poorly coordinated care.],
  quote-source: "Martin Makary, press statements accompanying Makary & Daniel, BMJ (2016)",
  le-insight: [
    The Makary data is the anchor evidence for the LENS argument
    because of its scale, its provenance (Johns Hopkins), and its
    framing — system failure rather than individual error. The seventeen
    years between *To Err Is Human* and Makary's reassessment is also
    the implementation gap of Case 41 in another guise. Capability
    engineering exists to close that gap, and the cost of leaving it
    open is measured in lives at population scale.
  ],
  lens-approach: [
    LENS treats this case as the central evidence anchor of the entire
    curriculum. LEN 1 introduces it as the foundational problem
    statement. LEN 4 uses it as the canonical case for measurement
    systems that cannot see their own failures (death certificates do
    not capture the failure mode). LEN 10 uses it as the studio prompt
    for designing interventions at the scale required to shift the
    distribution.
  ],
  literature-items: (
    [Makary & Daniel (2016), BMJ],
    [Institute of Medicine, _To Err Is Human_ (1999)],
    [Bates et al. (2023), "The Safety of Inpatient Health Care," _NEJM_ 388(2)],
  ),
  reflection-list: (
    [Identify a measurement instrument in your domain that systematically fails to capture the failure modes it should be designed to surface. What would it cost to fix?],
    [Two hundred fifty thousand deaths a year is the third leading cause of death in the U.S. Design the measurement and intervention regime that would shift the curve over a five-year horizon. Estimate the deliverable and the evidence.],
    [Makary and Shojania disagreed not on whether error kills but on how to attribute a death to it. Specify an attribution method robust enough to survive that dispute — and name who would hold the authority to act on the number it produces.],
  ),
  approaches: (
    during: (
      [Design the mortality-recording instrument with an explicit field for care-process failure, so a system-caused death is captured rather than absorbed into the proximate physiological cause.],
      [Build the attribution method into the measurement from the start — specify the counterfactual test for "due to" error so the resulting count can guide action rather than collapse into dispute.],
      [Pair each safety intervention with the system-wide measure it is meant to move, so reforms are gated on demonstrated population effect, not on having been deployed.],
    ),
    after: (
      [Audit reported mortality against an independent count of care-related harm so the official statistics cannot stay blind to the failure mode they should surface.],
      [Monitor inpatient harm with active surveillance rather than waiting for the certificate, tracking the gap between proximate cause and system cause over time.],
      [Sustain the closure of the implementation gap — the seventeen years between alarm and reassessment — by holding the count and the intervention to the same measurement discipline.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 10", "LEN 6",),
)
