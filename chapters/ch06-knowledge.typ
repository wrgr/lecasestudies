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
  quote: [Schedulers are among the top ten highest-turnover positions in the VA.],
  quote-source: "Debra Draper (GAO Director of Health Care), House VA Committee testimony, GAO-19-687T, July 2019",
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
  title: "GIFT and the Adoption Gap",
  year: "2012 – present",
  domains-list: ("defense", "education"),
  modes-code: "KGN",
  impact: "Active open-source ITS framework with demonstrated learning effectiveness; ubiquitous fielded adoption in routine military training has not been achieved",
  diagram: dgm.dgm-gift,
  body: [
    The Generalized Intelligent Framework for Tutoring (GIFT) is an
    open-source framework for authoring, delivering, and evaluating
    intelligent tutoring systems. It was originated under the U.S. Army
    Research Laboratory; following the 2019 Army Futures Command
    reorganization, the program moved with its host (the Learning in
    Intelligent Tutoring Environments laboratory) into DEVCOM Soldier
    Center, where it remains under active development. The framework
    issues regular releases — 2025-1 in September 2025, with a cloud
    deployment at cloud.gifttutoring.org — and convenes an annual
    GIFTSym symposium that publishes peer-reviewed proceedings.

    Computer-based tutoring has been shown to be "as effective as expert
    human tutors in one-to-one tutoring in well-defined domains and
    significantly better than traditional classroom training
    environments" (VanLehn, 2011). GIFT itself sits at the center of
    the field's effort to lower the authoring barrier for adaptive
    instruction. The case in this casebook is not that GIFT has been
    discontinued — it has not. The case is that *ubiquitous fielded
    adoption of adaptive tutoring across routine military training
    pipelines remains limited* despite five decades of research on
    intelligent tutoring and more than a decade of active GIFT
    development. The gap between framework and fielded routine use
    is the case.

    This is the canonical learning-engineering problem: the science is
    settled, the platform exists, the studies are positive, and the
    institutional pathway to scaled adoption is still being built.
  ],
  quote: [The technology works. The institutional pathway to ubiquitous fielded use does not yet.],
  quote-source: "Author summary of the GIFT adoption record (uncited)",
  sources-list: (
    [GIFT Project, gifttutoring.org — Overview, News, and Releases pages],
    [Sottilare, Graesser, Hu & Holden (eds.), _Design Recommendations for Intelligent Tutoring Systems_, GIFTSym volumes],
    [_International Journal of AI in Education_, Special Issue on GIFT (2017), DOI: 10.1007/s40593-017-0149-9],
    [VanLehn, K. (2011), "The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems," _Educational Psychologist_ 46(4)],
  ),
  le-insight: [
    GIFT is the most directly relevant case in this book to the
    learning-engineering discipline itself. The technology works. The
    learning science works. The framework is active and supported. What
    has not been built is the institutional adoption pathway: the
    procurement, training pipeline integration, instructor workflow
    redesign, and authority structure that would make adaptive tutoring
    a default rather than an experiment.
  ],
  lens-approach: [
    LENS treats GIFT in LEN 1 as the problem-framing case for the
    discipline, in LEN 9 as the foundational adoption-pathway case,
    and in LEN 3 (Studio) as a prompt for designing the institutional
    deliverables that would close an adoption gap of this shape.
  ],
  literature-items: (
    [GIFT Project documentation and GIFTSym 12 / 13 proceedings],
    [Fixsen et al. (2005), _Implementation Research: A Synthesis_],
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_],
  ),
  reflection-list: (
    [GIFT exists, is supported, and works. Adoption at scale does not. What is the equivalent in your domain — an effective intervention whose adoption pathway has not been engineered?],
    [Design the institutional adoption deliverable that would move adaptive tutoring from "available framework" to "default routine practice" in one operational training pipeline.],
  ),
  courses: ("LEN 1", "LEN 3", "LEN 9"),
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
  quote-source: "Author summary of ICICLE / ADL TLA discussion (uncited; flag for citation)",
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
