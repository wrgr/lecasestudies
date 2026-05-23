// ============================================================
// Chapter 8 — additional paired-intervention cases
// (Chapter divider lives in ch08-paired-interventions.typ;
//  this file just appends more cases to that chapter.)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 13,
  title: "WHO Surgical Safety Checklist",
  year: "2008 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Death rate 1.5% → 0.8%; complications down >33%; adopted by the majority of surgical providers worldwide",
  diagram: dgm.dgm-who,
  body: [
    A single-page, nineteen-item checklist applied at three critical
    junctures: before anesthesia, before incision, and before the
    patient leaves the operating room. Atul Gawande's team at Harvard
    and Brigham & Women's piloted the checklist across eight hospitals
    in eight countries representing diverse economic and operational
    conditions — from Toronto to Manila, Tanzania to London. The result,
    published in NEJM in 2009, was a near halving of the surgical death
    rate and a one-third reduction in serious complications.

    The checklist itself was the artifact. The intervention was the
    *system of pauses* it created — three forced moments in which a
    team that would otherwise be moving had to stop, look at each
    other, and confirm shared state. The pauses were the load-bearing
    element. The list of items was less important than the requirement
    to halt and run through them aloud.

    Gawande's framing — that gaps in teamwork and safety practices in
    surgery are substantial in countries both rich and poor — was
    confirmed in every site. The intervention scaled because it
    addressed the same gap everywhere. A subsequent Ontario population
    study (Urbach et al., NEJM 2014) found no statistically significant
    mortality reduction after mandated province-wide adoption, raising
    the implementation-fidelity question that the success cases in
    this book repeatedly surface: the artifact is only as effective
    as the surrounding system that authorizes its honest use.
  ],
  quote: [Gaps in teamwork and safety practices in surgery are substantial in countries both rich and poor.],
  quote-source: "Haynes, Weiser, Berry et al., NEJM, 2009",
  sources-list: (
    [Haynes et al., "A Surgical Safety Checklist to Reduce Morbidity and Mortality," _NEJM_ (2009)],
    [Urbach et al., "Introduction of Surgical Safety Checklists in Ontario, Canada," _NEJM_ (2014)],
    [WHO Safe Surgery Saves Lives campaign documentation],
    [Gawande, _The Checklist Manifesto_ (2009)],
    [ScienceDaily, surgical-checklist long-term outcomes],
  ),
  le-insight: [
    The Surgical Safety Checklist is the canonical evidence that a tiny
    artifact — one page, nineteen items — can produce population-scale
    effects when paired with the structural change of *requiring a
    pause.* The checklist alone is paper. The pause alone is anxiety.
    Together they constitute the smallest effective capability
    intervention in the dataset. The Ontario follow-up underscores the
    secondary requirement: the artifact carries the effect only when the
    institution actually enforces the pause. Where mandate replaced
    authorization, the measured effect attenuated.
  ],
  lens-approach: [
    LENS uses the WHO checklist in LEN 10 (capstone) as the canonical
    end-to-end design exemplar: a problem identified, a minimal
    artifact prototyped, a multi-site pilot, a measurement regime, and
    global scale-out. LEN 4 examines the measurement architecture that
    made the effect provable.
  ],
  literature-items: (
    [Haynes et al. (2009), NEJM],
    [Gawande, _The Checklist Manifesto_ (2009)],
    [Bosk et al. (2009), "Reality check for checklists"],
  ),
  reflection-list: (
    [What is the smallest possible capability artifact in your domain that, paired with a required pause, would shift outcomes?],
    [The WHO checklist was studied across eight countries. Design the multi-site evaluation that would establish whether your candidate intervention generalizes.],
    [The Ontario mandated rollout produced no measurable mortality reduction. What governance signal would have surfaced the fidelity gap between authorized use and compliance check-off before the trial was declared a failure?],
  ),
  courses: ("LEN 4", "LEN 10"),
)

#case(
  number: 15,
  title: "Navy Surface Warfare Readiness Reform",
  year: "2018 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Tripled ship-driving training hours; 10 pass-or-fail career assessments; Ready-for-Sea Assessments — 3 of 18 forward-deployed ships immediately sidelined",
  diagram: dgm.dgm-navy-reform,
  body: [
    Direct response to the Fitzgerald and McCain collisions (Case 1).
    The Navy restored the Surface Warfare Officers School from
    CD-ROM-based self-study to classroom plus simulator instruction.
    Maritime Skills Training Centers were established on both coasts.
    Ten pass-or-fail assessments were created throughout a SWO's
    career path; three of them are no-go gates. The service adopted
    aviation-style debriefing methodology and instituted Ready-for-Sea
    Assessments — operational evaluations of forward-deployed ships
    against a deliverable standard. Three of the first eighteen
    forward-deployed ships were immediately sidelined.

    GAO has noted that the Navy still lacks systematic evaluation of
    whether the reforms work. The capability intervention happened, the
    investment was substantial, but decision-grade evidence on outcomes
    is incomplete. This is itself a LENS argument: the reform happened;
    the measurement to know if it worked has not.

    The case is a live, in-progress success: structural change real,
    evidence of effect outstanding.
  ],
  quote: [The Navy still lacks systematic evaluation of whether the reforms work.],
  quote-source: "Paraphrasing GAO-21-168 on Navy readiness reform, 2021",
  sources-list: (
    [GAO-20-154 and GAO-21-168, Navy readiness reform],
    [Readiness Reform Oversight Council, One-Year Report (2019)],
    [USNI News reform coverage (2020, 2022)],
    [SWOS Norfolk and San Diego training-center documentation],
  ),
  le-insight: [
    The Navy reform is a paired intervention in progress: technical
    (training restored, simulators procured, assessments created) plus
    cultural (debriefing, gate ownership). What it lacks is the third
    half: evidence that the intervention has worked. LENS treats this
    as a teachable case for what mature capability engineering should
    include from the start — the measurement infrastructure that lets
    the institution know whether its investment is producing the
    capability it bought.
  ],
  lens-approach: [
    LENS uses Navy SWO reform in LEN 10 (capstone) as a worked exercise in
    capability intervention at scale, and in LEN 4 as a case where the
    measurement infrastructure has lagged the intervention. Students
    design the evidence regime that should accompany the reform.
  ],
  literature-items: (
    [GAO Navy readiness series],
    [Naval Postgraduate School theses on SWO training reform],
    [Edmondson, _Teaming_ (2012)],
  ),
  reflection-list: (
    [Navy SWO reform happened without an evidence regime to confirm it worked. Identify a current reform in your domain and the evidence regime that should accompany it.],
    [Design the dashboard the Chief of Naval Operations should have to know whether SWO capability is improving in time-series.],
  ),
  courses: ("LEN 4", "LEN 10", "LEN 5"),
)

#case(
  number: 23,
  title: "Korean Air Safety Transformation",
  year: "2000 – present",
  domains-list: ("aviation",),
  modes-code: "TN",
  impact: "From industry pariah (16 aircraft written off, 700+ lives lost, 1970–1999) to spotless passenger safety record since 1999",
  diagram: dgm.dgm-korean-air,
  body: [
    Between 1970 and 1999, Korean Air had one of the worst safety
    records in commercial aviation. The loss rate was seventeen times
    higher than United Airlines. In 1999, the president of South Korea
    called the airline's record "an embarrassment to the nation."
    Delta, Air France, and Air Canada all suspended code-sharing
    agreements. The FAA downgraded South Korea's aviation safety
    rating.

    The NTSB investigation of Korean Air Flight 801 — Guam, 1997, 229
    killed — identified cultural authority gradients as a root cause:
    junior officers were culturally unable to challenge the captain's
    erroneous decisions. In 2000 Korean Air brought in David Greenberg
    from Delta to overhaul flight operations. Key interventions:
    mandated English fluency for all pilots (removing the Korean-
    language hierarchy from the cockpit), CRM training adapted for a
    high-power-distance culture, external consulting from Boeing and
    Delta, and fleet modernization.

    The result: no fatal passenger accidents since 1997. The Air
    Transport World Phoenix Award in 2006 recognized the
    transformation. Cultural legacy is not destiny when it is
    deliberately redesigned.
  ],
  quote: [Korean Air's record before 2000 was changed by an external intervention into cockpit culture, not by criticism of it.],
  quote-source: "Editors' synthesis of NTSB findings on KAL 801 and the Korean Air transformation",
  sources-list: (
    [NTSB Aircraft Accident Report, KAL Flight 801 (2000)],
    [Air Transport World Phoenix Award documentation (2006)],
    [Gladwell, _Outliers_ (2008) — Korean Air chapter],
    [Korean Air corporate safety reports],
  ),
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
    paired in this book with the Toyota Andon Cord (Case 24) as
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
  ),
  courses: ("LEN 2", "LEN 8"),
)

#case(
  number: 24,
  title: "Toyota Production System / Andon Cord",
  year: "1950s – present",
  domains-list: ("industrial",),
  modes-code: "NG",
  impact: "85% of andon activations resolved within 60 seconds; defect-propagation cost minimized; the system adopted globally",
  diagram: dgm.dgm-andon,
  body: [
    The andon cord empowers any assembly-line worker to stop the entire
    production line when they detect a defect or abnormality. The
    inversion of authority is the entire point: the lowest-ranking
    person on the floor has the power to halt
    million-dollar-per-hour operations. The cord itself is trivially
    cheap. The authority it confers is the design.

    The case is critical for capability engineering because when
    American automakers copied the andon cord in the 1980s and 1990s,
    *workers were too afraid to pull it.* The tool was there; the
    empowerment was not. Toyota's system works because it pairs the
    technical mechanism (the cord) with a cultural system: psychological
    safety, supervisor response protocols, no-blame problem solving,
    and the codified "Five Whys" root-cause method. When the line stops
    at Toyota, average resolution time is 4.2 minutes and the team
    treats the stop as a learning opportunity, not a failure.

    The Andon Cord is the manufacturing counterpart to the Keystone
    nurse-authority intervention (Case 14). Same logic, different
    industry, same load-bearing element.
  ],
  quote: [When American manufacturers copied the andon cord, workers were too afraid to pull it.],
  quote-source: "Paraphrasing Liker, The Toyota Way (2nd ed., 2020)",
  sources-list: (
    [Liker, _The Toyota Way_ (2nd ed., 2020)],
    [Shingo, _A Study of the Toyota Production System_ (1989)],
    [Spear & Bowen, "Decoding the DNA of the Toyota Production System," _HBR_ (1999)],
    [Womack & Jones, _Lean Thinking_ (1996)],
  ),
  le-insight: [
    The Andon Cord is the foundational evidence that authority
    interventions and technical artifacts are inseparable. The cord
    means nothing without the protected authority to pull it. The
    protected authority means nothing without the cord to act through.
    The pair is irreducible — and that irreducibility is the LENS
    co-optimization commitment in physical form.
  ],
  lens-approach: [
    LENS uses the Andon Cord in LEN 2 as the foundational example of
    paired technical-cultural intervention, in LEN 8 to discuss
    cross-domain transfer (and why imitation without the cultural half
    fails), and in LEN 10 as a studio exemplar of minimal-artifact
    design.
  ],
  literature-items: (
    [Liker (2020), _The Toyota Way_],
    [Spear & Bowen (1999), HBR],
    [Rother, _Toyota Kata_ (2009)],
  ),
  reflection-list: (
    [Identify a technical artifact in your domain whose effectiveness depends entirely on a protected authority. Is the authority protected, or only declared?],
    [American manufacturers copied the cord without the authority. What is the equivalent surface-level imitation you have observed in your domain, and what was missing?],
  ),
  courses: ("LEN 10", "LEN 2", "LEN 8"),
)

#case(
  number: 27,
  title: "TeamSTEPPS",
  year: "2006 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Improved teamwork, communication, and patient-safety culture across diverse settings; OR on-time first start +21%; adopted by thousands of healthcare organizations",
  diagram: dgm.dgm-teamstepps,
  body: [
    Developed jointly by the Agency for Healthcare Research and Quality
    and the Department of Defense, TeamSTEPPS is the healthcare analog
    of Crew Resource Management (Case 12) — an evidence-based team-
    training framework derived from fifty years of research in
    aviation, military, and nuclear domains, adapted for clinical
    settings. It trains four core competencies: communication,
    leadership, situation monitoring, and mutual support.

    TeamSTEPPS is explicitly the translation pathway from
    high-reliability-organization research into clinical practice —
    precisely the kind of cross-domain capability transfer LENS is
    designed to teach practitioners to execute. Its development history
    (military → healthcare) and its ongoing evidence base make it the
    strongest exemplar in the dataset of LENS competency domains in
    action.

    The intervention is also evidence that the seventeen-year gap of
    Case 41 can be shortened by deliberate engineering. TeamSTEPPS
    moved from research to scaled deployment in years, not decades,
    because the implementation infrastructure was funded as part of the
    intervention.
  ],
  quote: [TeamSTEPPS represents the translation pathway from high-reliability research into clinical practice.],
  quote-source: "Editors' synthesis drawing on AHRQ TeamSTEPPS 3.0 (2023) and Salas et al.",
  sources-list: (
    [AHRQ TeamSTEPPS 3.0 Curriculum (2023)],
    [American Hospital Association Team Training Center],
    [PMC studies on TeamSTEPPS outcomes (multiple)],
    [DoD / AHRQ partnership documentation],
  ),
  le-insight: [
    TeamSTEPPS is the canonical evidence that cross-domain capability
    transfer is engineerable and that it can shorten the implementation
    gap dramatically when the transfer is funded as part of the
    intervention rather than as an afterthought. The four competencies
    map directly to the LENS curriculum's argument for what capability
    engineering competence looks like as a deliverable.
  ],
  lens-approach: [
    LENS treats TeamSTEPPS in LEN 8 as the canonical cross-domain
    transfer case and in LEN 1 as evidence that the program's core
    proposition — that learning engineering is a discipline — has
    institutional precedent. Studio projects (LEN 10) reference
    TeamSTEPPS as the worked example of cross-domain adaptation
    methodology.
  ],
  literature-items: (
    [AHRQ TeamSTEPPS documentation],
    [Salas, Rosen, Held & Weissmuller (2009) on cross-domain team training],
    [Weaver, Dy & Rosen (2014), patient-safety implementation],
  ),
  reflection-list: (
    [What is the cross-domain transfer your domain has not yet executed? What evidence base in another industry should it draw on?],
    [TeamSTEPPS funded its implementation infrastructure. Design the implementation-infrastructure budget for an equivalent transfer in your domain.],
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 3",),
)

#case(
  number: 28,
  title: "U.S. Nuclear Navy / Rickover Training Model",
  year: "1954 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Zero reactor accidents in 60+ years of U.S. Naval nuclear operations; the most demanding nuclear operator training program in the world",
  diagram: dgm.dgm-rickover,
  body: [
    Admiral Hyman Rickover established a training and qualification
    culture for the Naval Nuclear Propulsion Program that has produced
    zero reactor accidents across thousands of reactor-years of
    operation — including on submarines operating under extreme
    conditions. The program requires every nuclear-trained officer and
    enlisted sailor to pass rigorous qualification programs with
    zero-defect standards. Operators must demonstrate competence
    through oral examination by senior nuclear-qualified officers. The
    culture emphasizes personal accountability, technical mastery, and a
    questioning attitude — operators are trained to challenge
    assumptions, including those of superiors.

    The contrast with surface warfare training (pre-Fitzgerald, Case 1)
    is the sharpest internal comparison in the dataset. Same
    institution, same era, opposite approaches to human capability,
    radically different safety outcomes. The nuclear Navy invested in
    rigorous, continuous capability engineering from inception. The
    surface Navy cut training to CD-ROMs and paid the price.

    Same Navy. Two philosophies. The choice shows up in the casualty
    columns.
  ],
  quote: [Human experience shows that people, not organizations or management systems, get things done.],
  quote-source: "Paraphrasing Admiral Hyman G. Rickover, Congressional testimony, 1979",
  sources-list: (
    [Naval Nuclear Propulsion Program documentation, NRC/DOE],
    [Naval History and Heritage Command, Rickover archives],
    [GAO-21-168 comparison of nuclear and surface Navy training],
    [Polmar & Allen, _Rickover: Father of the Nuclear Navy_ (2007)],
  ),
  le-insight: [
    The Nuclear Navy is the longest-running continuous capability-
    engineering program in any high-consequence domain. The choice to
    treat training as a system parameter rather than as a cost center
    has produced sixty-plus years of zero reactor accidents. The
    contrast with the Surface Navy is the cleanest available test of
    what happens when capability is engineered versus when it is
    deferred. The cost of the program — the qualification ladder, the
    oral examinations graded against zero-defect standards, the
    continuous re-qualification — is the price the institution pays
    for the safety record. The choice is visible on the budget line.
  ],
  lens-approach: [
    LENS treats the Rickover model in LEN 8 as the foundational
    organizational-learning case and in LEN 5 as a worked example of
    capability requirements traceable from operational analysis through
    qualification standards. The internal Navy comparison anchors the
    program's core argument about capability as a system parameter.
  ],
  literature-items: (
    [Polmar & Allen (2007), _Rickover_],
    [Duncan, _Rickover and the Nuclear Navy_ (1990)],
    [GAO Navy training-comparison series],
  ),
  reflection-list: (
    [Identify an institution that operates two divisions under different capability philosophies. What does the comparison reveal that neither division could see alone?],
    [Rickover's standard was zero-defect oral examination. What is the equivalent in your domain — and would you survive it?],
    [The Nuclear Navy's safety record is paid for by a durable, visible training budget. What is the equivalent line-item investment in your domain that a comparable safety claim would require — and is it being made?],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
)

#case(
  number: 39,
  title: "Georgia State University Predictive Analytics",
  year: "2012 – present",
  domains-list: ("education",),
  modes-code: "TK",
  impact: "Six-year graduation rate 32% → 54%; equity gaps in graduation eliminated; 2,000+ more graduates per year",
  diagram: dgm.dgm-gsu,
  body: [
    Georgia State implemented a predictive-analytics system tracking
    eight hundred risk factors per student, triggering proactive
    advising interventions when students showed early warning signs.
    Critically, the system was designed with equity as a primary
    constraint: the explicit goal was to eliminate, not reproduce,
    existing graduation gaps. Advisors use the alerts as prompts for
    human intervention, not automated decisions — maintaining human
    judgment in the loop.

    The graduation rate went from thirty-two percent to fifty-four
    percent. The graduation rate for Black students rose to match the
    overall rate. Pell-eligible students graduate at the same rate as
    non-Pell students. GSU went from a regional commuter school with a
    third of its students graduating to a national model with a
    majority graduating — and the gain was distributed equitably.

    The key difference from the algorithmic-bias cases (35, 36, 37):
    GSU designed equity into the system from the start, used
    predictions to trigger *more* human support rather than automated
    gatekeeping, and measured outcomes by demographic group as a
    primary accountability metric.
  ],
  quote: [Predictions trigger support, not gatekeeping.],
  quote-source: "Editors' synthesis of the GSU advising model, drawn from Renick & Strom (2020) and New York Times coverage (2018)",
  sources-list: (
    [Georgia State University institutional research and Strategic Plan reports],
    [_New York Times_, "How Colleges Know You're Not Finishing" (2018)],
    [EDUCAUSE Review on GSU predictive advising],
    [Complete College America Game Changers documentation],
  ),
  le-insight: [
    GSU is the positive counterpart to A-Level (35), Robodebt (36), and
    educational algorithmic bias (37). The same technical capability —
    a predictive model — was deployed under a different design
    constraint and produced an equity outcome rather than an equity
    harm. The case is the strongest available evidence that the
    *construct definition* and the *human-loop architecture* determine
    whether a predictive model produces good or harm, not the model
    itself.
  ],
  lens-approach: [
    LENS treats GSU as the canonical positive case for predictive
    analytics in education. LEN 4 examines the measurement architecture
    that made equity a primary outcome. LEN 7 examines the governance
    structure that kept the system as decision support rather than
    automated decision. LEN 1 uses it as a problem-framing exemplar.
  ],
  literature-items: (
    [Renick & Strom (2020) on GSU's advising transformation],
    [Mayer-Schönberger & Cukier, _Learning with Big Data_ (2014)],
    [Bowen, Chingos & McPherson, _Crossing the Finish Line_ (2009)],
  ),
  reflection-list: (
    [What is the difference between GSU's predictive analytics and the algorithmic-bias cases of Chapter 5? Be specific about what makes the GSU implementation work.],
    [Design the equity-as-primary-constraint version of a predictive system in your domain. What would you measure first?],
  ),
  courses: ("LEN 1", "LEN 4", "LEN 7"),
)

#case(
  number: 42,
  title: "Cognitive Tutor / Carnegie Learning",
  year: "1990s – present",
  domains-list: ("education",),
  modes-code: "T",
  impact: "Randomized controlled trials showed significant learning gains; RAND study found positive effects on Algebra I achievement; adopted across 3,000+ schools",
  diagram: dgm.dgm-cogtutor,
  body: [
    Carnegie Learning's Cognitive Tutor, developed from John Anderson's
    ACT-R cognitive architecture at Carnegie Mellon, is the most
    rigorously evaluated intelligent tutoring system in education. It
    uses Bayesian knowledge tracing to model individual student mastery
    and adapts instruction accordingly. The RAND Corporation's
    evaluation found statistically significant positive effects on
    Algebra I achievement.

    This is a learning-engineering success story in the discipline's
    own terms: learning science (ACT-R theory) → engineering (Cognitive
    Tutor software) → evidence (RCTs, RAND evaluation) → scaled
    implementation (three thousand-plus schools). It demonstrates the
    LE process working as intended.

    The limitations are instructive: Cognitive Tutor works best in
    well-defined domains (algebra) and less well in ill-structured
    ones. It is the canonical evidence that the LE pipeline works *for
    problems that fit the pipeline* — and the open question is whether
    the same discipline can deliver for problems that do not.
  ],
  quote: [Cognitive Tutors demonstrate the LE process working: theory → engineering → evidence → scale.],
  quote-source: "Editors' synthesis of Anderson et al. (1995) and Koedinger & Corbett (2006)",
  sources-list: (
    [Anderson, Corbett, Koedinger & Pelletier, "Cognitive Tutors: Lessons Learned," _JLS_ (1995)],
    [RAND Corporation Algebra I evaluation],
    [Koedinger & Corbett (2006), Cambridge Handbook of the Learning Sciences],
    [Carnegie Learning, https://www.carnegielearning.com/],
  ),
  le-insight: [
    Cognitive Tutor is the canonical evidence that the learning-
    engineering process exists, works, and produces measurable
    benefits at scale — when the problem is tractable. It is also the
    canonical case for what tractability looks like: well-defined
    domain, decomposable skill model, instrumentable interface,
    rigorous evaluation. The frontier for the discipline is whether the
    same pipeline can deliver in the operational, ill-structured
    domains where capability matters most.
  ],
  lens-approach: [
    LENS uses Cognitive Tutor in LEN 1 as the foundational LE-process
    exemplar, in LEN 4 as the canonical case for Bayesian knowledge
    tracing as a measurement instrument, and in LEN 9 as a technical
    case for model-based adaptive instruction.
  ],
  literature-items: (
    [Anderson et al. (1995), _Journal of the Learning Sciences_],
    [Koedinger & Corbett (2006), Cambridge Handbook of the Learning Sciences],
    [Aleven et al. (2016), example-tracing tutors],
  ),
  reflection-list: (
    [Cognitive Tutor works best in well-defined domains. Identify a problem in your domain that is currently ill-structured. What would have to be true to make the LE pipeline applicable?],
    [The case is the strongest evidence the LE process works. What is the equivalent piece of evidence required to demonstrate the same pipeline in a non-cognitive domain — for example, surgical skill, or operational watchstanding?],
  ),
  courses: ("LEN 1", "LEN 4", "LEN 9"),
)
