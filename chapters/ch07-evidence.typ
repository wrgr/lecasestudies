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
  impact: "250,000+ deaths/year in the U.S. — third leading cause of death",
  diagram: dgm.dgm-makary,
  body: [
    Not a single incident but a systemic condition. Makary & Daniel
    (2016), publishing in the *BMJ* from Johns Hopkins, estimated
    medical errors cause more than two hundred fifty thousand deaths
    annually in the United States — third leading cause of death behind
    heart disease and cancer. The key argument: "People don't just die
    from heart attacks and bacteria, they die from system-wide failings
    and poorly coordinated care." Death certificates do not capture
    medical error as a cause, so the problem is structurally invisible
    to the measurement systems that should track it.

    The Institute of Medicine's *To Err Is Human* (1999) had earlier
    estimated 44,000–98,000 deaths annually and catalyzed the patient-
    safety movement, TeamSTEPPS (Case 27), surgical checklists (Case 13),
    and Keystone ICU (Case 14). The Makary study — seventeen years later
    — showed the problem persists at scale despite significant
    intervention. The gap between effective interventions and their
    consistent implementation across six thousand U.S. hospitals is
    itself a capability-engineering problem.

    Hopkins is also the institution producing this casebook. The data
    is not external to the argument.
  ],
  quote: [People don't just die from heart attacks and bacteria, they die from system-wide failings and poorly coordinated care.],
  quote-source: "Makary & Daniel, BMJ, 2016",
  sources-list: (
    [Makary & Daniel, "Medical error — the third leading cause of death in the US," _BMJ_ (2016)],
    [Institute of Medicine, _To Err Is Human_ (1999)],
    [World Health Organization, World Patient Safety Day reports],
    [AHRQ Patient Safety Network statistics],
  ),
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
    statement. LEN 2 uses it as the canonical case for measurement
    systems that cannot see their own failures (death certificates do
    not capture the failure mode). LEN 3 uses it as the studio prompt
    for designing interventions at the scale required to shift the
    distribution.
  ],
  literature-items: (
    [Makary & Daniel (2016), BMJ],
    [Institute of Medicine, _To Err Is Human_ (1999)],
    [Bates, Singh & Wachter (2023) on patient-safety progress],
  ),
  reflection-list: (
    [Identify a measurement instrument in your domain that systematically fails to capture the failure modes it should be designed to surface. What would it cost to fix?],
    [Two hundred fifty thousand deaths a year is the third leading cause of death in the U.S. Design the measurement and intervention regime that would shift the curve over a five-year horizon. Estimate the deliverable and the evidence.],
  ),
  courses: ("LEN 1", "LEN 2", "LEN 3"),
)
