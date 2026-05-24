// ============================================================
// Chapter 6 — Knowledge Lost
// "Institutional Memory Degraded"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "6",
  title: "Knowledge Lost",
  subtitle: "Institutional memory degraded.",
  epigraph: [Schedulers are among the top ten highest-turnover positions in the VA.],
  epigraph-source: "Debra Draper, GAO Director of Health Care, testimony to the House Committee on Veterans' Affairs, 2019",
)

#case(
  number: 32,
  title: "VA Wait-Time Scandal",
  year: "2014",
  domains-list: ("gov",),
  modes-code: "GKN",
  impact: "Veterans died waiting for care; 300,000+ on waiting lists or waiting 6+ months; staff falsified records",
  diagram: dgm.dgm-va,
  kind: "failure",
  summary: [
    In 2014 the VA Inspector General found that staff at the Phoenix VA —
    and then nationwide — had created secret waiting lists and falsified
    appointment data to hide that veterans were waiting weeks or months for
    care; some died waiting while the system reported success. A 14-day
    access target, unrealistic given staffing, was met by hiding reality
    rather than surfacing it. The warning signs ran back fifteen years: GAO
    had flagged data-reliability problems since 2000, the IG since 2005, with
    no systemic fix — and schedulers, the staff operating the measurement,
    are among the VA's highest-turnover roles, so the institution kept losing
    the knowledge even to see it was lying to itself. The VA case is the
    book's canonical example of normalization of deviance applied to
    measurement itself.
  ],
  sections: (
    // -- Background --
    [
      The Veterans Health Administration measured access to care against a
      14-day appointment target — a target that, given staffing, was often
      unrealistic to meet honestly. Schedulers, the staff who operate that
      measurement, are among the VA's highest-turnover positions.#cn() The
      target functioned as the headline number leadership watched, so the
      pressure to show 14-day compliance bore down hardest on the very
      front-line role least equipped, through constant churn, to record the
      access data accurately or to question what the number was leaving out.
    ],
    // -- What Happened --
    [
      In 2014 the VA Office of Inspector General found that staff at the
      Phoenix VA — and then across the system — had created secret waiting
      lists and falsified appointment data to hide that veterans were waiting
      weeks or months for care. Some veterans died waiting, inside a system
      that, by its own metrics, was succeeding.#cn() The secret lists were the
      mechanism by which an impossible target was reconciled with reality:
      official records showed appointments inside 14 days while the true wait
      accumulated off the books, so the more the metric was gamed, the more
      confidently the reporting line above it declared the access problem
      solved.
    ],
    // -- The Investigation --
    [
      The warning signs went back fifteen years: GAO had flagged
      data-reliability concerns since 2000, and the VA IG had identified
      problems in 2005, 2007, and 2008, with the incoming administration
      warned in 2008 — none of which produced systemic change.#cn() GAO named
      scheduler training as a root cause: with schedulers among the top-ten
      highest-turnover roles, the institution perpetually lost the knowledge
      required even to run the measurement honestly, and five years on still
      reported data-reliability concerns.#cn() Each warning had named a real
      defect in how access was recorded, yet because the schedulers who held
      the practical knowledge of the system kept turning over, every wave of
      findings landed on a workforce that had to relearn the instrument from
      scratch, so the same defect resurfaced report after report.
    ],
    // -- The Capability Gap --
    [
      This is normalization of deviance applied to measurement itself. When
      the measurement system cannot capture reality — and the people
      operating it churn before the gaming can be unlearned — the gap between
      reported and actual performance becomes invisible. Veterans died inside
      a system whose numbers said it was fine, which is the lethal form of
      the evidence problem this book treats as a design failure, not a
      reporting one.#cn() An institution that cannot retain the staff who run
      its measurement loses not only accuracy but the memory that the number
      was ever wrong, so the gaming stops registering as deviance at all and
      hardens into the ordinary way the work is done.
    ],
    // -- Aftermath & Reform --
    [
      The scandal forced resignations, the Veterans Access, Choice, and
      Accountability Act (2014), and a long, uneven effort to rebuild
      scheduling and data integrity.#cn() Its lesson is that decision-grade
      evidence is a design requirement: an institution must be able to
      surface its own failures without relying on the very people
      incentivized — and too transient — to hide them. The Choice Act bought
      access by routing care outside the VA, but the underlying capability —
      a measurement the institution could trust even as its schedulers churned
      — was the harder thing to rebuild, and the data-reliability concerns
      that persisted for years afterward show why.
    ],
  ),
  references: (
    [VA Office of Inspector General, Report 14-02603-267 (2014) — secret waiting lists and falsified appointment data.],
    [GAO Veterans Health Administration reports (2000–2019) — fifteen years of data-reliability warnings.],
    [VA OIG reports (2005, 2007, 2008) — prior, unactioned findings.],
    [D. Draper (GAO), House VA Committee testimony, GAO-19-687T (2019) — "schedulers are among the top ten highest-turnover positions in the VA" (quoted).],
    [Veterans Access, Choice, and Accountability Act (2014) — the legislative response.],
    [C. Argyris & D. Schön, _Organizational Learning_ (1978); measurement-gaming literature.],
  ),
  quote: [Schedulers are among the top ten highest-turnover positions in the VA.],
  quote-source: "Debra Draper (GAO Director of Health Care), House VA Committee testimony, GAO-19-687T, July 2019",
  le-insight: [
    The VA case is the canonical example of measurement failure as a
    capability failure. The system that should have surfaced the gap
    instead generated reports that hid it. The turnover among
    schedulers — the human capability operating the measurement
    instrument — meant the institution lost the knowledge to even
    notice it was lying to itself. The case stands as the strongest
    argument in this book for treating decision-grade evidence as a
    design requirement, not a reporting requirement.
  ],
  lens-approach: [
    LENS treats the VA case in LEN 4 as the canonical evidence-gap case
    (the measurement system itself was the source of harm), in LEN 7 as
    a governance failure (multiple warnings unactioned over fifteen
    years), and in LEN 8 as a knowledge-loss case via turnover.
  ],
  literature-items: (
    [VA OIG, full reports (2014–present)],
    [Argyris & Schön (1978), _Organizational Learning_],
    [Tuckey & Pollack (2024), measurement-gaming literature],
  ),
  reflection-list: (
    [Identify a measurement system in your domain that is also operated by a high-turnover role. What is the institutional risk that the system stops measuring reality?],
    [Design the evidence pipeline that would have surfaced the Phoenix VA gap without relying on the people who were gaming the metrics.],
    [The 14-day target was unrealistic given staffing, so it was met by hiding reality. Identify a target in your organization that the people measured against it cannot honestly meet — and design the correction that surfaces the gap rather than burying it.],
  ),
  approaches: (
    during: (
      [Set access targets against actual staffing capacity, so the metric cannot be met only by falsifying it.],
      [Design the scheduling instrument so correct data entry is the path of least resistance, not a discipline that churning staff must be retrained into.],
      [Build an independent read on real wait times — separate from the staff incentivized to report them — into the measurement architecture from the start.],
    ),
    after: (
      [Audit reported access against an out-of-band signal (direct veteran survey, third-party booking records) with authority to act when the two diverge.],
      [Treat scheduler turnover as a measurement risk: monitor it, and protect the knowledge of how to run the instrument honestly against constant churn.],
      [Track whether old data-reliability findings keep recurring — a repeat finding is the signal that the institution is relearning the same gap rather than closing it.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

#case(
  number: 38,
  title: "GIFT and the Adoption Gap",
  year: "2012 – present",
  domains-list: ("defense", "education"),
  modes-code: "KGN",
  impact: "Active open-source ITS framework with demonstrated learning effectiveness; ubiquitous fielded adoption in routine military training has not been achieved",
  diagram: dgm.dgm-gift,
  kind: "frontier",
  summary: [
    The Generalized Intelligent Framework for Tutoring (GIFT) is an
    open-source framework, originated at the U.S. Army Research Laboratory,
    for authoring and delivering intelligent tutoring systems. Computer-based
    tutoring has been shown to be about as effective as expert human tutors
    in well-defined domains, and GIFT exists to lower the barrier to building
    it; the framework is actively developed, with regular releases and a
    peer-reviewed annual symposium. The puzzle is not that GIFT failed — it
    did not — but that ubiquitous fielded adoption across routine military
    training remains limited despite decades of supporting research. That gap
    is the canonical learning-engineering problem: the science is settled,
    the platform exists, the studies are positive — and the institutional
    pathway to scaled adoption is still being built.
  ],
  sections: (
    // -- The Shift --
    [
      Five decades of research established that computer-based tutoring can be
      about as effective as an expert human tutor in well-defined domains,
      and significantly better than traditional classroom instruction. The
      open question shifted from "does adaptive tutoring work?" to "why isn't
      it everywhere?"#cn() That shift matters because it moves the problem out
      of the laboratory: once the efficacy question is answered, every
      remaining obstacle to scaled use is institutional rather than scientific,
      and the field's research strength stops being the binding constraint.
    ],
    // -- What Is Emerging --
    [
      The Generalized Intelligent Framework for Tutoring (GIFT), originated
      under the U.S. Army Research Laboratory and now developed at DEVCOM, is
      an open-source framework for authoring, delivering, and evaluating
      intelligent tutoring systems — an effort to lower the authoring barrier
      that has historically made ITS expensive to build. It is actively
      maintained, with regular releases and a peer-reviewed annual
      symposium.#cn() Open-sourcing the framework and sustaining a research
      community around it directly attacks the cost-to-build problem, since the
      expense of authoring a tutor from scratch had long been the practical
      reason adaptive tutoring stayed confined to well-funded demonstrations.
    ],
    // -- The Capability Question --
    [
      So the puzzle is not failure — GIFT was not discontinued. It is that
      ubiquitous fielded adoption across routine military training remains
      limited despite a working framework and decades of positive research.
      The science is settled and the platform exists; what is missing is the
      institutional pathway to scaled use.#cn() This is the diagnostic feature
      of the case: the gap is not between idea and prototype but between a
      maintained, evidence-backed framework and the routine training pipelines
      that would have to adopt it, and that latter distance is the one no
      amount of further research closes.
    ],
    // -- Early Evidence --
    [
      The effectiveness evidence is strong — the tutoring-effectiveness
      literature is among the more robust in education — and GIFT-based
      studies continue to demonstrate learning gains. The bottleneck is not
      efficacy.#cn() Because the supporting literature is among the more
      robust in the field, a decision-maker hesitating to field adaptive
      tutoring cannot honestly point to weak evidence as the reason; the
      hesitation traces instead to the missing pathway that would let the
      proven approach be bought, integrated, and made routine.
    ],
    // -- Open Problems --
    [
      What has not been built is the adoption pathway: procurement that can
      buy adaptive tutoring, integration into existing training pipelines,
      instructor-workflow redesign, and the authority structure to make
      adaptive tutoring a default rather than an experiment.#cn() GIFT is the
      case in this book closest to the LENS discipline itself — proof that a
      working technology and settled science do not adopt themselves, and
      that the adoption pathway is an engineering deliverable in its own
      right. Each of those pieces — a contracting vehicle, a pipeline
      integration, a redesigned instructor workflow, an owner with authority —
      is a concrete artifact someone must build, and their absence, not any
      technical shortfall, is what keeps the framework experimental.
    ],
  ),
  references: (
    [K. VanLehn, "The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems," _Educational Psychologist_ 46(4) (2011) — tutoring effectiveness.],
    [GIFT Project, gifttutoring.org — the framework, releases, and development under ARL / DEVCOM.],
    [Editors' synthesis of the GIFT adoption record — active development but limited ubiquitous fielding (quoted).],
    [R. Sottilare, A. Graesser, X. Hu & H. Holden (eds.), _Design Recommendations for Intelligent Tutoring Systems_ (GIFTSym volumes); IJAIED Special Issue on GIFT (2017).],
    [J. Goodell & J. Kolodner, _Learning Engineering Toolkit_ (2022) — adoption as an engineering problem.],
  ),
  quote: [The technology works. The institutional pathway to ubiquitous fielded use does not yet.],
  quote-source: "Editors' synthesis of the GIFT adoption record",
  le-insight: [
    GIFT is the most directly relevant case in this book to the
    learning-engineering discipline itself. The technology works, the
    learning science works, the framework is active and supported. What
    has not been built is the institutional adoption pathway —
    procurement, training-pipeline integration, instructor workflow
    redesign, the authority structure — that would make adaptive
    tutoring a default rather than an experiment.
  ],
  lens-approach: [
    LENS treats GIFT in LEN 1 as the problem-framing case for the
    discipline, in LEN 8 as the foundational adoption-pathway case,
    and in LEN 10 (capstone) as a prompt for designing the institutional
    deliverables that would close an adoption gap of this shape.
  ],
  literature-items: (
    [GIFT Project documentation and GIFTSym 12 / 13 proceedings],
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_],
  ),
  reflection-list: (
    [GIFT exists, is supported, and works. Adoption at scale does not. What is the equivalent in your domain — an effective intervention whose adoption pathway has not been engineered?],
    [Design the institutional adoption deliverable that would move adaptive tutoring from "available framework" to "default routine practice" in one operational training pipeline.],
    [GIFT's bottleneck is procurement, pipeline integration, instructor-workflow redesign, and authority — not efficacy. For an effective tool in your domain, which of those four is the binding constraint, and who would have to own it for adoption to become the default?],
  ),
  approaches: (
    during: (
      [Treat the adoption pathway — procurement, pipeline integration, instructor-workflow redesign, authority — as a named deliverable of the program, not a follow-on hope.],
      [Build the tutoring capability against an existing training pipeline so integration is designed in, rather than fielding a framework and expecting pipelines to bend to it.],
      [Specify who holds the authority to make adaptive tutoring a default, so the decision to scale is owned rather than left to volunteers.],
    ),
    after: (
      [Measure fielded routine use, not just study-level learning gains, so the institution can see whether adoption is actually happening.],
      [Sustain the open-source framework and its community so the authoring-cost barrier it lowered does not quietly rise again as releases age.],
      [Audit each stalled pipeline to find which adoption artifact is missing — contracting vehicle, integration, workflow, owner — and treat that as the engineering gap to close.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 6",),
)

#case(
  number: 40,
  title: "xAPI / Total Learning Architecture — Interoperability Gap",
  year: "ongoing",
  domains-list: ("education", "defense"),
  modes-code: "KG",
  impact: "Despite xAPI adoption, most implementations remain siloed; cross-organizational learning-data interoperability largely unrealized",
  diagram: dgm.dgm-xapi,
  kind: "frontier",
  summary: [
    The Experience API (xAPI) was created to track learning experiences
    across platforms, and the Advanced Distributed Learning Initiative's
    Total Learning Architecture envisioned learning records, competencies,
    and credentials flowing across organizational boundaries to support
    continuous capability development — the kind of evidence infrastructure
    LENS depends on. In practice, xAPI implementations remain largely siloed
    inside individual learning-management systems; the cross-organizational
    data sharing that matters most for high-consequence domains has not
    materialized at scale. The technical standard exists and reference
    implementations exist; what lags is governance — who owns the data, what
    consent applies, how quality is assured. xAPI mirrors inBloom (Case 8) in
    structure — technology ahead of governance — across the whole
    learning-technology ecosystem. It is the book's case for treating data
    governance as a capability deliverable.
  ],
  sections: (
    // -- The Shift --
    [
      Learning increasingly happens across many systems — courses,
      simulators, on-the-job tools — and the field recognized it needed a
      common way to record those experiences, so capability could be tracked
      over a career rather than a single course.#cn() The career-long view is
      the point: a single course's records say little about whether a person
      can do the job, whereas experiences stitched across courses, simulators,
      and on-the-job tools are what let an institution reason about real
      capability rather than completed seat-time.
    ],
    // -- What Is Emerging --
    [
      The Experience API (xAPI) was built to do exactly that, and the
      Advanced Distributed Learning Initiative's Total Learning Architecture
      envisioned learning records, competency frameworks, and credentials
      flowing across organizational boundaries — the evidence infrastructure
      a discipline like LENS depends on.#cn() The vision was explicitly
      cross-boundary: records, competencies, and credentials that move with the
      learner between organizations are precisely the evidence base on which a
      capability discipline must stand, which is why the standard's promise
      mattered well beyond any single training shop.
    ],
    // -- The Capability Question --
    [
      In practice, xAPI implementations remain largely siloed inside
      individual LMS platforms. The cross-organizational data sharing — the
      capability most relevant to high-consequence operational domains — has
      not materialized at scale. The standard exists; the ecosystem it
      promised does not.#cn() The siloing is the diagnostic detail: the very
      cross-boundary flow that made the architecture worth building is the
      part that did not arrive, so the standard delivers tracking within each
      LMS while the career-long, cross-organizational record it envisioned
      stays out of reach.
    ],
    // -- Early Evidence --
    [
      The technical pieces work: the data model is sound and reference
      implementations exist. What has lagged is the governance — who owns the
      data, what consent frameworks apply, and how data quality is assured
      across organizations.#cn() With the data model proven and reference
      implementations in hand, the remaining obstacles are not engineering
      questions an organization can solve alone but agreements between
      organizations — ownership, consent, and assured quality — that no
      technical specification can settle on their behalf.
    ],
    // -- Open Problems --
    [
      xAPI mirrors inBloom (Case 8) in essential structure — technology in
      advance of governance — but across the whole learning-technology
      ecosystem rather than one initiative.#cn() It is the book's clearest
      case that an interoperability standard is necessary but not sufficient:
      without the governance to make organizations willing and able to share,
      the data stays in its silos, and the evidence infrastructure remains a
      diagram rather than a system. The parallel to inBloom is instructive
      because it shows the pattern is not particular to one failed project: a
      sound standard arriving ahead of the ownership, consent, and
      quality-assurance arrangements will stall the same way at any scale.
    ],
  ),
  references: (
    [Advanced Distributed Learning Initiative, Total Learning Architecture documentation — the cross-boundary vision.],
    [xAPI specification (#link("https://xapi.com/")[xapi.com]) — the technical standard and reference implementations.],
    [IEEE ICICLE proceedings on TLA adoption challenges — the persistence of siloed implementations.],
    [B. Saxberg, learning-engineering infrastructure essays; IEEE ICICLE LEBoK chapters on data and analytics.],
    [Cf. inBloom (Case 8) — technology in advance of governance.],
  ),
  quote: [The standard exists. The governance does not.],
  quote-source: "Editors' synthesis of ICICLE / ADL TLA discussion",
  le-insight: [
    xAPI/TLA is the technical-standard analog of the implementation
    gap — the discipline has the data model, the spec, and the reference
    implementations. What it does not have is the governance and
    institutional architecture to make cross-organizational learning
    data flow. This is the canonical case in this book for treating
    data governance as a capability-engineering deliverable.
  ],
  lens-approach: [
    LENS treats xAPI/TLA in LEN 4 as a data-governance and
    interoperability case and in LEN 8 as an example of organizational-
    learning infrastructure that has not scaled. The case is the
    technical underlay to the larger argument about evidence systems
    that decision-makers can trust.
  ],
  literature-items: (
    [ADL TLA documentation],
    [Saxberg, learning-engineering infrastructure essays],
    [IEEE ICICLE LEBoK chapters on data and analytics],
  ),
  reflection-list: (
    [Why has the xAPI standard not produced cross-organizational interoperability at scale? What governance condition is missing?],
    [Design the minimum governance architecture under which xAPI data could flow across two organizations in your domain.],
    [The xAPI data model is sound; what stalled was ownership, consent, and quality assurance across organizations. For a data-sharing effort in your domain, which of those three is the unresolved question — and who would have to agree for the data to actually flow?],
  ),
  approaches: (
    during: (
      [Specify the governance — data ownership, consent, and cross-organization quality assurance — as a deliverable alongside the technical standard, not after it.],
      [Design for the cross-boundary flow from the start, so the standard is not merely implemented inside each LMS but engineered to move records between organizations.],
      [Secure the inter-organizational agreements that no specification can settle, treating willingness-to-share as a thing to be built rather than assumed.],
    ),
    after: (
      [Audit whether learning data is actually crossing organizational boundaries, not just whether xAPI is nominally adopted within each silo.],
      [Monitor data quality across organizations continuously, since shared records are only trustworthy evidence if their quality is assured at the seams.],
      [Watch for the inBloom pattern — a sound standard outrunning its governance — and treat any stall as a missing-governance signal, not a technical defect.],
    ),
  ),
  courses: ("LEN 4", "LEN 8", "LEN 6",),
)

#case(
  number: 41,
  title: "Implementation Science in Healthcare — The 17-Year Gap",
  year: "ongoing",
  domains-list: ("healthcare",),
  modes-code: "KGN",
  impact: "Average time from research finding to clinical practice: 17 years; only ~14% of research findings ever reach practice",
  diagram: dgm.dgm-17year,
  kind: "frontier",
  summary: [
    Implementation science has a canonical finding: it takes an average of
    about seventeen years for research evidence to reach clinical practice,
    and only roughly 14% of research findings ever make it at all.
    This is not a single incident but a systemic condition — effective
    interventions exist; the system to adopt, sustain, adapt, and measure
    them at scale does not. Frameworks like the Active Implementation
    Frameworks (Fixsen et al., 2005) and EPIS (Aarons et al., 2011) were
    built specifically to attack this gap, and LENS threads implementation
    science throughout its curriculum in direct response. The seventeen-year
    gap is the meta-case for the whole book: every success case is a closure
    of this gap in one domain, every failure case the gap left open. The
    discipline exists to make seventeen years shorter.
  ],
  sections: (
    // -- The Shift --
    [
      Medicine generates more validated knowledge than it can absorb.
      Implementation science arose to study a stubborn fact: knowing what
      works and having it practiced are different problems, separated by
      years.#cn() Treating the two as one problem is the error the field
      formed to correct: a validated finding is not yet a changed practice,
      and the distance between them is itself a phenomenon to be studied,
      measured, and engineered rather than waited out.
    ],
    // -- What Is Emerging --
    [
      The canonical figures are stark: it takes an average of about seventeen
      years for research evidence to be integrated into clinical practice,
      and only roughly 14% of research findings ever make it at
      all.#cn() Read together, the two figures describe a pipeline that is
      both slow and leaky: most of what is learned never reaches the bedside
      at all, and the fraction that does arrives long after the patients who
      first needed it, so the delay is compounded by sheer attrition.
    ],
    // -- The Capability Question --
    [
      This is not a single case but a systemic condition — the same
      structural problem the medical-error data (Case 31) describes from the
      outcome side. Effective interventions exist; the institutional system
      to adopt, sustain, adapt, and measure them at scale does not.#cn()
      Where the medical-error data counts the harm at the far end of the
      pipeline, the translation figures name the mechanism that produces it:
      the same missing adoption-and-measurement system shows up as a delay
      from one vantage and as a body count from the other.
    ],
    // -- Early Evidence --
    [
      Frameworks built to attack the gap — the Active Implementation
      Frameworks (Fixsen et al., 2005) and the EPIS framework (Aarons et al.,
      2011) — show that implementation can be engineered rather than left to
      chance, and they inform LENS's choice to thread implementation science
      through every course rather than isolate it in a module.#cn() Threading
      the discipline through every course rather than confining it to a single
      module is itself a claim these frameworks support: if implementation is
      an engineerable property of any intervention, it cannot be quarantined
      as a specialty and must inform how every design is taught.
    ],
    // -- Open Problems --
    [
      The seventeen-year gap is the meta-case for this book. Every success
      case in the chapters ahead is a closure of the gap in one domain; every
      failure case is the gap left open.#cn() The open problem is general and
      unglamorous: building, funding, and owning the adoption-and-measurement
      pathway that turns a proven intervention into routine practice — which
      is, in one sentence, what the LENS discipline exists to do. Because the
      problem is general rather than domain-specific, no single clinical
      result closes it; what closes it is the repeatable, owned, and funded
      pathway that any proven finding can be run through, again and again.
    ],
  ),
  references: (
    [E. A. Balas & S. A. Boren (2000), _Yearbook of Medical Informatics_ — the ~17-year / ~14% translation figures.],
    [Z. Morris, S. Wooding & J. Grant, "The answer is 17 years, what is the question," _J. Royal Society of Medicine_ (2011) (quoted).],
    [D. Fixsen et al., _Implementation Research: A Synthesis of the Literature_ (2005) — the Active Implementation Frameworks.],
    [G. Aarons et al. (2011), the EPIS framework; L. Damschroder et al. (2009), CFIR.],
    [Cf. medical error as systemic failure (Case 31); Goodell & Kolodner, _Learning Engineering Toolkit_ (2022).],
  ),
  quote: [The answer is 17 years. What is the question?],
  quote-source: "Morris, Wooding & Grant, J Royal Soc Med, 2011",
  le-insight: [
    The 17-year gap is the structural problem that LENS exists to
    address. It is the difference between knowing what works and having
    it deployed. Every case in this book is a sample from a
    distribution governed by that gap. The success cases shorten it;
    the failure cases let it run.
  ],
  lens-approach: [
    LENS uses this case in LEN 1 as the foundational problem statement
    of the discipline, in LEN 10 as a studio constraint (designs must
    consider implementation, not just efficacy), and in LEN 8 as the
    central knowledge-transfer challenge. The case is referenced at
    least once in every required course.
  ],
  literature-items: (
    [Fixsen et al. (2005)],
    [Aarons et al. (2011), EPIS],
    [Damschroder et al. (2009), CFIR],
  ),
  reflection-list: (
    [Pick an evidence-based intervention in your domain. Estimate the gap between when the evidence became conclusive and when the intervention reached majority of practice. What did the gap cost?],
    [Design the deliverable that would shorten that gap by half in your domain. Be specific about who funds it, who owns it, and what evidence demonstrates the reduction.],
    [The translation pipeline is both slow and leaky — most findings never reach practice, and those that do arrive late. For your domain, is the binding problem the delay or the attrition, and what would you measure to tell which one to attack first?],
  ),
  approaches: (
    during: (
      [Design every intervention with its adoption-and-measurement pathway attached, so implementation is engineered in rather than left to chance after the evidence is published.],
      [Use an implementation framework (Active Implementation, EPIS) from the outset to plan adoption, sustainment, and adaptation as deliverables of the project.],
      [Name an owner and a funding line for the pathway, since a proven finding with no one accountable for fielding it is exactly what the gap is made of.],
    ),
    after: (
      [Measure both reach and speed — what fraction of practice has adopted the intervention and how long it took — to see the slow-and-leaky pipeline rather than assume publication equals uptake.],
      [Sustain and adapt fielded interventions, treating drift back to old practice as a measurable failure mode, not a one-time rollout that holds itself.],
      [Track the gap as a standing metric across the institution, so closing it in one domain becomes a repeatable pathway rather than a one-off success.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 6",),
)
