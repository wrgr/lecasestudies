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
  epigraph: [Schedulers are among the top ten highest-turnover positions in the VA. There's constant turnover.],
  epigraph-source: "Government Accountability Office, 2019",
)

#case(
  number: 32,
  title: "VA Wait-Time Scandal",
  year: "2014",
  domains-list: ("gov",),
  modes-code: "GKN",
  impact: "Veterans died waiting for care; 300,000+ on waiting lists or waiting 6+ months; staff falsified records",
  diagram: dgm.dgm-va,
  body: [
    The VA Office of Inspector General found staff at the Phoenix VA —
    and subsequently nationwide — had created secret waiting lists and
    falsified appointment data to hide that veterans were waiting weeks
    or months for care. The fourteen-day target was unrealistic given
    staffing. The system adapted by hiding reality rather than
    surfacing it.

    GAO had flagged data-reliability concerns since 2000. VA OIG had
    identified problems in 2005, 2007, and 2008. The Obama transition
    team was warned in 2008. None produced systemic change. GAO flagged
    scheduler training as a root cause: schedulers are among the top
    ten highest-turnover positions in the VA, and the institutional
    knowledge required to game the system honestly was perpetually
    lost. Five years after the scandal, GAO still reported data-
    reliability concerns.

    This is Normalization of Deviance applied to *measurement itself.*
    When the measurement system cannot capture reality, the gap between
    reported and actual performance becomes invisible — and lethal.
    Veterans died inside a system that, by its own metrics, was
    succeeding.
  ],
  quote: [Schedulers are among the top ten highest-turnover positions in the VA. There's constant turnover.],
  quote-source: "GAO testimony, 2019",
  sources-list: (
    [VA Office of Inspector General Report 14-02603-267 (2014)],
    [GAO Veterans Health Administration reports (2000–2019)],
    [Federal News Network coverage (2019)],
    [CNN investigative reporting on the Phoenix VA],
  ),
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
    LENS treats the VA case in LEN 2 as the canonical evidence-gap case
    (the measurement system itself was the source of harm), in LEN 7 as
    a governance failure (multiple warnings unactioned over fifteen
    years), and in LEN 9 as a knowledge-loss case via turnover.
  ],
  literature-items: (
    [VA OIG, full reports (2014–present)],
    [Argyris & Schön (1978), _Organizational Learning_],
    [Tuckey & Pollack (2024), measurement-gaming literature],
  ),
  reflection-list: (
    [Identify a measurement system in your domain that is also operated by a high-turnover role. What is the institutional risk that the system stops measuring reality?],
    [Design the evidence pipeline that would have surfaced the Phoenix VA gap without relying on the people who were gaming the metrics.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 9"),
)

#case(
  number: 38,
  title: "GIFT Discontinuation",
  year: "2012 – ~2023",
  domains-list: ("defense", "education"),
  modes-code: "KGN",
  impact: "Demonstrated learning effectiveness but failed to achieve institutional adoption despite 10+ years of development",
  diagram: dgm.dgm-gift,
  body: [
    The Generalized Intelligent Framework for Tutoring (GIFT), developed
    by the U.S. Army Research Laboratory, was an open-source framework
    for authoring, delivering, and evaluating intelligent tutoring
    systems. Computer-based tutoring had been shown to be "as effective
    as expert human tutors in one-to-one tutoring in well-defined
    domains and significantly better than traditional classroom training
    environments" (VanLehn, 2011). GIFT aimed to lower the skill barrier
    for authoring ITS, deliver adaptive instruction, and provide
    evaluation tools.

    Despite demonstrated learning outcomes and substantial research
    investment, GIFT was discontinued — not because the technology did
    not work, but because of institutional and cultural resistance to
    adoption. As Goodell observes in the learning-engineering
    literature, fifty years of research have failed to make
    computer-based tutoring ubiquitous in military training.

    The case sits at the center of the LENS program's argument: the gap
    between learning-science discovery and scaled implementation is
    itself the problem the discipline exists to address.
  ],
  quote: [Fifty years of research have been unsuccessful in making CBTS ubiquitous in military training.],
  quote-source: "Goodell, learning engineering literature, 2022",
  sources-list: (
    [Sottilare et al. (2012), GIFT framework introduction, ARL],
    [_International Journal of AI in Education_ Special Issue (2017)],
    [LEBoK Knowledge Area 6, Learning Engineering Process],
    [Goodell on learning engineering, Leading Learning podcast (2021)],
  ),
  le-insight: [
    GIFT is the most directly relevant case in this book to the
    learning-engineering discipline itself. The technology worked. The
    learning science worked. The institutional adoption did not. The
    failure is the textbook example of why learning engineering exists
    as a discipline: to bridge the gap between effective intervention
    and scaled deployment.
  ],
  lens-approach: [
    LENS treats GIFT in LEN 1 as the problem-framing case for the
    discipline itself, in LEN 9 as a knowledge-transfer failure, and
    across the curriculum as the canonical example of why scaled
    implementation is harder than effective intervention.
  ],
  literature-items: (
    [Sottilare, Graesser, Hu & Holden (eds.), GIFT volumes],
    [Fixsen et al. (2005), _Implementation Research_],
    [Goodell & Kolodner (2022) on learning engineering as a discipline],
  ),
  reflection-list: (
    [What is the equivalent "GIFT" in your domain — the effective intervention that has not crossed the adoption boundary? Why has it not?],
    [Design the implementation-readiness deliverable that should accompany an effective intervention to make adoption tractable.],
  ),
  courses: ("LEN 1", "LEN 9"),
)

#case(
  number: 40,
  title: "xAPI / Total Learning Architecture — Interoperability Gap",
  year: "ongoing",
  domains-list: ("education", "defense"),
  modes-code: "KG",
  impact: "Despite xAPI adoption, most implementations remain siloed; cross-organizational learning-data interoperability largely unrealized",
  diagram: dgm.dgm-xapi,
  body: [
    The Experience API (xAPI) was developed to enable tracking of
    learning experiences across platforms, systems, and contexts — a
    foundational technology for the kind of evidence infrastructure
    LENS envisions. The Advanced Distributed Learning Initiative's
    Total Learning Architecture (TLA) envisioned an ecosystem where
    learning records, competency frameworks, and credential data flow
    across organizational boundaries to support continuous, adaptive
    capability development.

    In practice, xAPI implementations remain largely siloed within
    individual LMS platforms. Cross-organizational data sharing — the
    capability most relevant to high-consequence operational domains —
    has not materialized at scale. The governance infrastructure (who
    owns the data, what consent frameworks apply, how data quality is
    assured) has lagged far behind the technical standard.

    This is an implementation-science failure: the standard exists,
    reference implementations exist, but the institutional and
    governance conditions for scaled adoption do not. The case mirrors
    inBloom (Case 8) in its essential structure — technology in advance
    of governance — except that it spans the entire learning-technology
    ecosystem.
  ],
  quote: [The standard exists. The governance does not.],
  quote-source: "ADL TLA implementation review, ICICLE proceedings",
  sources-list: (
    [Advanced Distributed Learning Initiative, Total Learning Architecture],
    [IEEE ICICLE LEBoK],
    [xAPI specification, https://xapi.com/],
    [ICICLE proceedings on TLA adoption challenges],
  ),
  le-insight: [
    xAPI/TLA is the technical-standard analog of the implementation
    gap — the discipline has the data model, the spec, and the reference
    implementations. What it does not have is the governance and
    institutional architecture to make cross-organizational learning
    data flow. This is the canonical case in this book for treating
    data governance as a capability-engineering deliverable.
  ],
  lens-approach: [
    LENS treats xAPI/TLA in LEN 2 as a data-governance and
    interoperability case and in LEN 9 as an example of organizational-
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
  ),
  courses: ("LEN 2", "LEN 9"),
)

#case(
  number: 41,
  title: "Implementation Science in Healthcare — The 17-Year Gap",
  year: "ongoing",
  domains-list: ("healthcare",),
  modes-code: "KGN",
  impact: "Average time from research finding to clinical practice: 17 years; only ~14% of research findings ever reach practice",
  diagram: dgm.dgm-17year,
  body: [
    The canonical finding in implementation science: it takes an average
    of seventeen years for research evidence to be integrated into
    clinical practice, and only about fourteen percent of research
    findings ever make it. This is not a single case but a systemic
    condition — the same structural problem the Makary medical-errors
    data (Case 31) describes from the outcome side. Effective
    interventions exist; the system to adopt, sustain, adapt, and
    measure them at scale does not.

    The Active Implementation Frameworks (Fixsen et al., 2005) and the
    EPIS framework (Aarons et al., 2011) — both referenced in LENS
    curriculum design — were developed specifically to address this
    gap. The LENS commitment to threading implementation science
    throughout the curriculum, rather than as a standalone module, is a
    direct response to this evidence.

    The seventeen-year gap is the meta-case for this entire book. Every
    success case in Chapters 8 and 9 represents a closure of this gap
    in one domain. Every failure case represents the gap left open. The
    LENS discipline exists to make seventeen years shorter.
  ],
  quote: [The answer is 17 years. What is the question?],
  quote-source: "Morris, Wooding & Grant, J Royal Soc Med, 2011",
  sources-list: (
    [Balas & Boren (2000), Yearbook of Medical Informatics],
    [Morris, Wooding & Grant (2011), "The answer is 17 years..."],
    [Fixsen et al. (2005), _Implementation Research: A Synthesis_],
    [Aarons et al. (2011), the EPIS framework],
  ),
  le-insight: [
    The 17-year gap is the structural problem that LENS exists to
    address. It is the difference between knowing what works and having
    it deployed. Every case in this book is a sample from a
    distribution governed by that gap. The success cases shorten it;
    the failure cases let it run.
  ],
  lens-approach: [
    LENS uses this case in LEN 1 as the foundational problem statement
    of the discipline, in LEN 3 as a studio constraint (designs must
    consider implementation, not just efficacy), and in LEN 9 as the
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
  ),
  courses: ("LEN 1", "LEN 3", "LEN 9"),
)
