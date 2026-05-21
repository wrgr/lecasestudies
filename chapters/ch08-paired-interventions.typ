// ============================================================
// Chapter 8 — What Works: The Paired Intervention
// "Technical Change + Cultural Change"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part II — What Works",
  number: "8",
  title: "The Paired Intervention",
  subtitle: "Technical change with cultural change.",
  epigraph: [The checklist alone did not work. The checklist plus the nurse's authority to enforce it did.],
  epigraph-source: "Keystone ICU project, Michigan, 2004",
)

// ---------------- CASE 12: CRM + CAST ----------------

#case(
  number: 12,
  title: "Crew Resource Management & CAST",
  year: "1981 – present",
  domains-list: ("aviation",),
  modes-code: "THN",
  impact: "83% reduction in U.S. commercial aviation fatality risk (1998–2008); 95% reduction in fatalities per 100M passengers over 20 years",
  diagram: dgm.dgm-crm,
  body: [
    In March 1977 two 747s collided on a foggy runway at Tenerife and 583
    people died. The cockpit voice recorder showed a junior first officer
    who knew something was wrong, tried twice to say so in indirect
    language, and deferred to the most senior captain in the airline. The
    accident was not a failure of skill. It was a failure of the system by
    which skill in one seat reached the other.

    Crew Resource Management, formalized by United Airlines in 1981, rebuilt
    the cockpit as a coordinated team. Communication protocols became
    explicit. Authority gradients were named and trained against. Briefings
    and debriefings became structured. CRM did not teach individual
    airmanship — it engineered the *system of interaction* in which
    airmanship operates.

    Twenty years later the Commercial Aviation Safety Team added the second
    half of the system: closed-loop hazard identification using operational
    data, prioritized safety enhancements, tracked implementation, and
    measured outcomes. CAST set itself an eighty-percent fatality-reduction
    target and exceeded it at 83% by 2007. It won the Collier Trophy in
    2008. The two interventions together — cultural redesign plus
    continuous evidence — define what a mature capability-engineering
    apparatus looks like.
  ],
  quote: [CRM succeeded because it treated crew coordination as an engineerable property of the system.],
  quote-source: "Paraphrasing Helmreich & Foushee, in Kanki et al., Crew Resource Management (2010)",
  sources-list: (
    [FAA Advisory Circular 120-51E, _Crew Resource Management Training_],
    [Helmreich, Merritt & Wilhelm, "The Evolution of Crew Resource Management Training in Commercial Aviation," _International Journal of Aviation Psychology_ (1999)],
    [CAST/FAA Safety Enhancement reports (2016, 2018)],
    [Collier Trophy citation, 2008; SKYbrary CRM article; EASA guidance],
  ),
  le-insight: [
    CRM is the canonical evidence that capability is engineerable at the
    system level, not just the individual. Tenerife was not solvable by
    hiring better pilots — it was solvable by changing the authority
    structure inside the cockpit. The intervention worked because it was
    *paired*: a technical change in procedure plus a cultural change in
    how the procedure was authorized. Either alone fails.
  ],
  lens-approach: [
    LENS treats CRM/CAST as the foundational success case across the
    curriculum. LEN 1 uses it as the problem-framing exemplar. LEN 2 uses
    CAST as the model closed-loop evidence system. LEN 8 uses CRM as the
    template for redesigning human roles in highly-automated environments —
    the same logic now being applied to AI-augmented systems.
  ],
  literature-items: (
    [Kanki, Helmreich & Anca, _Crew Resource Management_ (2010)],
    [Salas, Wilson, Burke & Wightman (2006) on team training],
    [Edmondson, _The Fearless Organization_ (2018)],
  ),
  reflection-list: (
    [Identify a high-consequence domain whose authority gradient absorbs information rather than transmitting it. What would the CRM equivalent intervention look like there?],
    [CRM is paired with CAST. What is the closed-loop evidence system in your domain — and if there is not one, what would it cost to build?],
  ),
  courses: ("LEN 1", "LEN 2", "LEN 8"),
)

// ---------------- CASE 14: KEYSTONE ICU ----------------

#case(
  number: 14,
  title: "Keystone ICU / Pronovost Checklist",
  year: "2004 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Central-line bloodstream infections reduced to near zero across 103 Michigan ICUs; 1,500 lives saved in 18 months; $75M saved; sustained at ten years",
  diagram: dgm.dgm-keystone,
  body: [
    Peter Pronovost's checklist for central-line insertion has five items.
    Wash hands. Clean the patient's skin with chlorhexidine. Drape the
    patient. Wear a mask, hat, sterile gown and gloves. Apply a sterile
    dressing. Nothing in the checklist was unknown to any physician it
    would govern. The question was not what to do — it was whether anyone
    would do it every time.

    The intervention paired the checklist with a cultural change: nurses
    were authorized — not merely permitted, but required — to stop the
    procedure if any step was skipped. That single authorization was the
    load-bearing element. In the prior architecture, a nurse who saw a
    physician skip a step had no procedural path to intervene without
    crossing the hospital's authority gradient. After Keystone, the path
    existed and was institutional.

    The result across 103 Michigan ICUs was the elimination of central-line
    bloodstream infections as a category. The typical ICU's quarterly
    infection rate fell to zero. Michigan's ICUs outperformed 90 percent of
    ICUs nationwide. The program has been adopted in more than forty states
    and replicated internationally. At ten-year follow-up, the effect has
    been sustained.
  ],
  quote: [The checklist was the technical intervention. The nurses' authority to enforce it was the cultural intervention. Neither worked without the other.],
  quote-source: "Paraphrasing Pronovost & Vohr, Safe Patients, Smart Hospitals, 2010",
  sources-list: (
    [Pronovost et al., "An Intervention to Decrease Catheter-Related Bloodstream Infections in the ICU," _New England Journal of Medicine_ 355 (2006)],
    [Lipitz-Snyderman et al., _BMJ_ (2011) — sustained effect at follow-up],
    [Agency for Healthcare Research and Quality, CUSP toolkit],
    [Pronovost & Vohr, _Safe Patients, Smart Hospitals_ (2010)],
  ),
  le-insight: [
    Keystone is the clearest evidence in healthcare that a technical
    intervention without authority intervention produces no durable change,
    and authority intervention without a technical artifact produces no
    measurable change. Both are necessary. The empirical record of
    Keystone is the strongest available argument for designing interventions
    as *pairs* — and treating the cultural half as engineering, not
    aspiration.
  ],
  lens-approach: [
    LENS uses Keystone in LEN 2 and LEN 3 as the canonical worked example
    of measurement linked to intervention. Studio projects require students
    to specify both halves of the pair, name the authority that authorizes
    the cultural half, and identify the measurement signal that will
    confirm or refute the effect. The course treats "is the cultural change
    actually authorized?" as falsifiable, not stated.
  ],
  literature-items: (
    [Gawande, _The Checklist Manifesto_ (2009)],
    [Bosk et al. (2009), "Reality check for checklists," _The Lancet_],
    [Edmondson, _The Fearless Organization_ (2018)],
  ),
  reflection-list: (
    [Identify an evidence-based protocol in your domain that is *known* to work but is not consistently performed. What is the authority change required to pair with it?],
    [Design the measurement signal that would confirm the cultural half of a Keystone-style intervention is actually being authorized — not merely declared.],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 5"),
)

// ---------------- CASE 16: INPO ----------------

#case(
  number: 16,
  title: "INPO and the Nuclear Academy",
  year: "1979 – present",
  domains-list: ("energy",),
  modes-code: "TKG",
  impact: "Zero significant radiation releases at U.S. commercial reactors since the founding of INPO; tracked safety indicators improved across the industry",
  diagram: dgm.dgm-inpo,
  body: [
    Three Mile Island did not produce a reactor accident at the next plant
    over. It produced an institution. Within nine months of the partial
    meltdown — before the official accident report was even finalized — the
    U.S. commercial nuclear industry founded the Institute of Nuclear Power
    Operations. The premise: an accident at any single plant would affect
    every operator's license, and no single utility could engineer its
    capability infrastructure alone.

    INPO set training and certification standards for every operator and
    supervisor across every plant. The National Academy for Nuclear
    Training, founded in 1985, accredited the training programs of each
    facility. INPO teams conducted regular plant evaluations and peer
    reviews — operators from one utility examining another's procedures,
    control rooms, and incident records. Findings were used for
    industry-wide learning, not competitive advantage.

    The pre-TMI culture had been characterized by what the Bulletin of the
    Atomic Scientists called "smugness." The post-INPO culture is
    characterized by mandated vigilance.
  ],
  quote: [Every utility recognized that an accident at any single plant would affect every operator's license to operate.],
  quote-source: "Paraphrasing the institutional analysis in Rees, Hostages of Each Other, 1994",
  sources-list: (
    [Nuclear Energy Institute, "Lessons from the 1979 Accident at Three Mile Island"],
    [World Nuclear Association — Three Mile Island Accident],
    [Rees, _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island_ (1994)],
    [Marsh (2019), "INPO and the Transformation of Nuclear Safety Culture"],
  ),
  le-insight: [
    INPO is the strongest evidence in any domain that capability engineering
    can be undertaken at the level of an *industry*, not just an
    organization. The conditions that made it possible — shared catastrophic
    exposure, regulatory legitimacy, an honest peer-review architecture —
    are not unique to nuclear. They appear wherever a single failure can
    damage every operator.
  ],
  lens-approach: [
    LENS uses INPO in LEN 9 as the canonical example of industry-level
    learning. Students identify structural conditions in their own domain
    that would permit (or block) an INPO-equivalent and design the
    peer-review architecture that would be required. LEN 1 uses the
    founding moment — nine months after TMI — to discuss the *speed* a
    credible response to catastrophe demands.
  ],
  literature-items: (
    [Rees (1994), _Hostages of Each Other_],
    [Weick & Sutcliffe, _Managing the Unexpected_ (2007)],
    [Kemeny Commission, _Report on TMI_ (1979)],
  ),
  reflection-list: (
    [What is the equivalent of "an accident at any single plant affects every operator" in your domain? If the answer is "nothing," what does that tell you?],
    [INPO was stood up in nine months. Pick a current cross-organizational capability problem and write the nine-month deliverable that would constitute a credible response.],
  ),
  courses: ("LEN 1", "LEN 9"),
)
