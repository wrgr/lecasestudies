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
  kind: "intervention",
  summary: [
    In March 1977, two 747s collided in fog at Tenerife and 583 people
    died — in part because a KLM flight engineer's twice-voiced doubt about
    the runway was overridden by his captain. The failure was not of skill
    but of the system by which skill in one seat reached another. Crew
    Resource Management, formalized by United Airlines in 1981,
    re-engineered the cockpit as a coordinated team: explicit communication
    protocols, named authority gradients, structured briefings. Twenty
    years later the Commercial Aviation Safety Team (CAST) added
    closed-loop analysis of operational data to find and fix hazards before
    they caused accidents. The pairing — cultural redesign plus continuous
    evidence — drove an 83% reduction in U.S. commercial-aviation fatality
    risk between 1998 and 2008, earning the 2008 Collier Trophy.
  ],
  sections: (
    // -- Background --
    [
      By the 1970s, accident investigations were repeatedly finding that
      crashes stemmed not from a lack of individual flying skill but from
      breakdowns in how a crew worked together. The 1977 Tenerife disaster
      — 583 dead — was the starkest example: a KLM flight engineer
      questioned, twice and indirectly, whether the runway was clear, and
      the senior captain dismissed him and continued the takeoff. The
      pattern that emerged was consistent across investigations — skilled
      crews failing not because anyone lacked competence, but because the
      crew's most senior voice could close off information held by a more
      junior one before it reached the decision.#cn()
    ],
    // -- The Intervention --
    [
      Crew Resource Management, formalized by United Airlines in 1981,
      treated crew coordination as an engineerable property of the system
      rather than a matter of personality. It introduced explicit
      communication protocols, named and trained against authority
      gradients, and instituted structured briefings and debriefings —
      rebuilding the cockpit as a team in which information from any seat
      could reach the decision. Rather than exhorting captains to listen
      better, it built coordination into the standard procedure itself, so
      the behavior that Tenerife had lacked became the trained default
      rather than a matter of individual temperament.#cn()
    ],
    // -- How It Worked --
    [
      CRM did not teach individual airmanship; it engineered the system of
      interaction in which airmanship operates. By making it legitimate and
      expected for a junior officer to challenge a captain, and by giving
      crews a shared protocol for doing so, it closed the path by which
      Tenerife-style deference had absorbed safety-critical information
      instead of transmitting it. The change was structural rather than
      attitudinal: a challenge that had once depended on a junior officer's
      nerve now had a named procedure behind it, so the same doubt that went
      unheard at Tenerife had an authorized route to the decision.#cn()
    ],
    // -- The Evidence --
    [
      Twenty years on, the Commercial Aviation Safety Team added the
      missing second half: closed-loop hazard identification on operational
      data, prioritized enhancements, tracked implementation, and measured
      outcomes. CAST set an 80% fatality-reduction target and exceeded it,
      reaching 83% by 2007 — work recognized with the 2008 Collier Trophy.
      Over twenty years, fatalities per 100 million passengers fell roughly
      95%. The loop closed on itself: data surfaced the next hazard,
      enhancements were prioritized against it, and the measured outcome fed
      back into the priorities, so improvement continued rather than
      plateauing once the cultural change had taken hold.#cn()
    ],
    // -- What Transferred --
    [
      CRM and CAST together define what a mature capability-engineering
      apparatus looks like: a cultural redesign paired with a
      continuous-evidence loop, where neither half works alone. The model
      has been exported to surgery, firefighting, and other
      high-consequence domains, and is now the template for redesigning
      human roles in AI-augmented systems. What transferred was not the
      specific protocols but the design logic itself — that coordination is
      an engineerable system property and that the cultural change needs a
      measurement loop to keep it honest over time.#cn()
    ],
  ),
  references: (
    [FAA Advisory Circular 120-51E, _Crew Resource Management Training_ — CRM protocols and authority-gradient training.],
    [Helmreich, Merritt & Wilhelm (1999), "The Evolution of Crew Resource Management Training in Commercial Aviation," _International Journal of Aviation Psychology_.],
    [Spanish CIAIAC / ALPA reports on the 1977 Tenerife collision — the overridden crew challenge.],
    [CAST/FAA Safety Enhancement reports (2016, 2018) — the closed-loop data process and the 83% reduction.],
    [Collier Trophy citation (2008); Kanki, Helmreich & Anca (2010), _Crew Resource Management_.],
  ),
  quote: [CRM succeeded because it treated crew coordination as an engineerable property of the system.],
  quote-source: "Paraphrasing Helmreich & Foushee, in Kanki et al., Crew Resource Management (2010)",
  le-insight: [
    CRM is the canonical evidence that capability is engineerable at the
    system level, not just the individual. Tenerife was not solvable by
    hiring better pilots — only by changing the authority structure
    inside the cockpit. The intervention worked because it was *paired*:
    a procedural change plus a cultural change in how the procedure was
    authorized. Either alone fails.
  ],
  lens-approach: [
    LENS treats CRM/CAST as the foundational success case across the
    curriculum. LEN 1 uses it as the problem-framing exemplar; LEN 4 uses
    CAST as the model closed-loop evidence system; LEN 2 uses CRM as the
    template for redesigning human roles in automated environments — the
    logic now being applied to AI-augmented systems.
  ],
  literature-items: (
    [Kanki, Helmreich & Anca, _Crew Resource Management_ (2010)],
    [Edmondson, _The Fearless Organization_ (2018)],
  ),
  reflection-list: (
    [Identify a high-consequence domain whose authority gradient absorbs information rather than transmitting it. What would the CRM equivalent intervention look like there?],
    [CRM is paired with CAST. What is the closed-loop evidence system in your domain — and if there is not one, what would it cost to build?],
    [CRM made a junior officer's challenge a named procedure rather than an act of nerve. Identify a moment in your domain where the right information depends on someone's courage, and design the protocol that would make raising it the expected default instead.],
  ),
  approaches: (
    during: (
      [Build the coordination behavior into standard procedure — explicit communication protocols, named authority gradients, and structured briefings — so it is the trained default, not a matter of temperament.],
      [Authorize the junior-to-senior challenge explicitly and drill it, so safety-critical information has a procedural route to the decision rather than depending on individual nerve.],
      [Stand up the evidence half from the start: instrument operational data so hazards can be found and prioritized before they cause an accident.],
    ),
    after: (
      [Run the closed loop continuously — surface hazards from data, prioritize enhancements, track implementation, and measure outcomes — so improvement does not plateau once the culture shifts.],
      [Set and exceed an explicit reduction target (the CAST model) so the intervention is judged against a measured outcome, not against its own activity.],
      [Export the design logic, not just the protocols, when transferring to new domains, adapting the paired cultural-plus-evidence structure to each setting.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 2", "LEN 3",),
)

// ---------------- CASE 14: KEYSTONE ICU ----------------

#case(
  number: 14,
  title: "Keystone ICU / Pronovost Checklist",
  year: "2004 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Central-line-associated bloodstream infections (CLABSI) reduced to near zero across 103 Michigan ICUs; ~1,500 lives saved in 18 months; ~$100M saved; sustained at ten years",
  diagram: dgm.dgm-keystone,
  kind: "intervention",
  summary: [
    Peter Pronovost's central-line checklist has five items — wash hands,
    clean the skin with chlorhexidine, drape the patient, use full barrier
    precautions, apply a sterile dressing — and not one of them was unknown
    to the physicians it governed. The question was never what to do, but
    whether it would be done every time. The Keystone project, launched
    across 103 Michigan ICUs in 2004, paired the checklist with a cultural
    change: nurses were not merely permitted but required to stop the
    procedure if a step was skipped. That authorization was the
    load-bearing element. Central-line-associated bloodstream infections
    fell to near zero, an estimated 1,500 lives and \$100 million were saved
    in eighteen months, and the effect was sustained at ten years.
  ],
  sections: (
    // -- Background --
    [
      Central-line-associated bloodstream infections were a common, often
      fatal complication of intensive care, and the steps to prevent them
      were well established and uncontroversial. The problem was
      reliability: in the existing culture, a nurse who saw a physician
      skip a sterile step had no procedural path to intervene without
      crossing the hospital's authority gradient. The knowledge was
      universal and the steps cheap; what was missing was any mechanism that
      made the right action happen every time rather than most of the time,
      which is precisely where a fatal infection finds its opening.#cn()
    ],
    // -- The Intervention --
    [
      In 2004, Peter Pronovost's team launched the Keystone ICU project
      across 103 Michigan units. It combined a simple five-item central-line
      checklist — hand hygiene, chlorhexidine skin prep, full-barrier
      draping, sterile gown-mask-gloves, and a sterile dressing — with an
      explicit authorization: nurses were required, not merely permitted,
      to stop any procedure in which a step was missed. The distinction
      between permitted and required was deliberate — a permission a nurse
      might decline to exercise against a senior physician became an
      obligation the institution stood behind, removing the personal risk of
      intervening.#cn()
    ],
    // -- How It Worked --
    [
      The checklist was the technical half; the nurses' enforcement
      authority was the cultural half, and it was the load-bearing one.
      Before Keystone, the path to intervene did not exist; after it, the
      path was institutional and expected. The pairing converted knowledge
      everyone already had into behavior that happened every time. The
      checklist gave the nurse an objective, impersonal basis for the stop —
      a missed item, not a judgment about the physician — which is what made
      the authority usable in practice rather than merely on paper.#cn()
    ],
    // -- The Evidence --
    [
      Across the Michigan ICUs, the median quarterly CLABSI rate fell to
      zero, and the state's units outperformed 90 percent of ICUs
      nationwide. The program was estimated to have saved roughly 1,500
      lives and \$100 million within eighteen months. Results were published
      in the _New England Journal of Medicine_ in 2006, and follow-up
      showed the effect sustained at ten years. The durability mattered as
      much as the size of the drop: an improvement that survives a decade is
      evidence the change was built into the system's structure rather than
      riding on the initial enthusiasm of a single project.#cn()
    ],
    // -- What Transferred --
    [
      Keystone became the clearest evidence in healthcare that a technical
      intervention without an authority change produces no durable
      improvement — and vice versa. The model was packaged as the AHRQ CUSP
      toolkit, adopted in more than forty states, and replicated
      internationally, establishing the design principle of intervening in
      matched technical-and-cultural pairs. Packaging the approach as a
      reusable toolkit was itself part of what transferred — it turned a
      single project's success into something other institutions could adopt
      without rediscovering the load-bearing role of the authority change.#cn()
    ],
  ),
  references: (
    [Pronovost, P. et al. (2006), "An Intervention to Decrease Catheter-Related Bloodstream Infections in the ICU," _NEJM_ 355 — the trial and the near-zero result.],
    [Pronovost & Vohr (2010), _Safe Patients, Smart Hospitals_ — the checklist-plus-nurse-authority pairing (paraphrased).],
    [Lipitz-Snyderman, A. et al. (2011), _BMJ_ — sustained effect at follow-up.],
    [Agency for Healthcare Research and Quality, CUSP toolkit — dissemination across states.],
    [Bosk, C. et al. (2009), "Reality check for checklists," _The Lancet_ — the authorization, not the list, as the active ingredient.],
  ),
  quote: [The checklist was the technical intervention. The nurses' authority to enforce it was the cultural intervention. Neither worked without the other.],
  quote-source: "Paraphrasing Pronovost & Vohr, Safe Patients, Smart Hospitals, 2010",
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
    LENS uses Keystone in LEN 4 and LEN 10 as the canonical worked example
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
    [Keystone made the nurse's stop an obligation the institution stood behind, not a personal risk. Identify a corrective action in your domain that currently costs the person who takes it, and design the institutional backing that would remove that cost.],
  ),
  approaches: (
    during: (
      [Pair the technical artifact with the authority change from the outset — a checklist plus the explicit, institution-backed right of a junior member to stop the procedure when a step is missed.],
      [Make the intervention an obligation rather than a permission, so the corrective action does not depend on an individual's willingness to challenge a senior colleague.],
      [Anchor the stop to an objective, impersonal trigger (a missed checklist item) so the authority is usable without it reading as a judgment of the more senior operator.],
    ),
    after: (
      [Measure the outcome directly (the CLABSI rate) and publish it, so the cultural half can be confirmed as authorized in practice rather than merely declared.],
      [Track the effect over years, not months, to confirm the change is built into the system's structure rather than riding on a project's initial enthusiasm.],
      [Package the paired design as a reusable toolkit so other institutions can adopt it without rediscovering the load-bearing role of the authority change.],
    ),
  ),
  courses: ("LEN 4", "LEN 10", "LEN 5"),
)

// ---------------- CASE 16: INPO ----------------

#case(
  number: 16,
  title: "INPO and the Nuclear Academy",
  year: "1979 – present",
  domains-list: ("energy",),
  modes-code: "TKG",
  impact: "No INES-level event at U.S. commercial reactors post-INPO; sustained improvement in INPO/WANO performance indicators across the industry",
  diagram: dgm.dgm-inpo,
  kind: "intervention",
  summary: [
    Three Mile Island did not produce a reactor accident at the next plant
    over — it produced an institution. Within months of the 1979 Kemeny
    Commission report, the U.S. commercial nuclear industry founded the
    Institute of Nuclear Power Operations on a stark premise: an accident
    at any single plant would threaten every operator's license, and no
    utility could engineer its safety capability alone. Funded by the
    utilities it evaluated and operating without statutory authority, INPO
    set training and certification standards, accredited every plant's
    programs through the National Academy for Nuclear Training, and ran
    peer evaluations in which operators from one utility scrutinized
    another's control rooms and records. The pre-TMI culture of complacency
    gave way to mandated vigilance. No U.S. commercial reactor has had a
    significant INES-level event since.
  ],
  sections: (
    // -- Background --
    [
      The 1979 partial meltdown at Three Mile Island exposed not just a
      plant-level failure but an industry with no shared mechanism for
      learning. The Kemeny Commission traced the accident in part to a
      pervasive "mindset" of complacency, in which each utility operated
      alone and no institution carried lessons from one plant to the rest.
      The structural problem sat above any single control room: a lesson
      learned at one plant had no path to the others, so the same latent
      failure could surface repeatedly across an industry that never
      compared notes.#cn()
    ],
    // -- The Intervention --
    [
      Within months of the Kemeny report, the utilities founded the
      Institute of Nuclear Power Operations. Its premise was that an
      accident anywhere threatened everyone's license to operate. INPO set
      training and certification standards for operators and supervisors,
      and in 1985 the National Academy for Nuclear Training began
      accrediting each facility's programs. The shared-exposure premise was
      what gave a body with no statutory power its teeth — every utility had
      a direct stake in every other utility's competence, because one
      failure could end the whole industry's license to operate.#cn()
    ],
    // -- How It Worked --
    [
      INPO's load-bearing mechanism was honest peer review: teams of
      operators from one utility examined another's procedures, control
      rooms, and incident records, reporting candidly because every utility
      was, in the title of one history, a hostage of the others. Funded by
      the utilities it evaluated and holding no statutory authority, INPO
      depended on shared catastrophic exposure to make its findings stick.
      Peer review by working operators rather than distant regulators also
      meant the examiners knew what to look for and the findings carried the
      weight of professional judgment, not just rule compliance.#cn()
    ],
    // -- The Evidence --
    [
      The post-TMI culture shifted from smugness to mandated vigilance, and
      U.S. commercial reactors have recorded no significant INES-level
      event since INPO's founding. Industry performance indicators tracked
      by INPO and its international counterpart WANO improved steadily and
      broadly across the fleet. The broad, steady improvement across the
      whole fleet — not just the strongest plants — is the signature of a
      learning mechanism working as designed: the laggards were pulled up by
      the same peer-review architecture that held the leaders to standard.#cn()
    ],
    // -- What Transferred --
    [
      INPO is the strongest evidence in any domain that capability
      engineering can be undertaken at the level of an entire industry
      rather than a single organization. Its enabling conditions — shared
      catastrophic exposure, regulatory legitimacy, and an honest
      peer-review architecture — recur wherever one operator's failure can
      damage every operator, and it informed the founding of WANO after
      Chernobyl. That the model crossed national borders to WANO is itself
      evidence that the design is portable: the enabling conditions, not the
      particular American institution, are what make the mechanism work.#cn()
    ],
  ),
  references: (
    [Rees, J. (1994), _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island_ — INPO's design and the "hostages" premise (paraphrased).],
    [_Report of the President's Commission on the Accident at Three Mile Island_ (Kemeny Commission, 1979) — the pre-TMI culture.],
    [Nuclear Energy Institute, "Lessons from the 1979 Accident at Three Mile Island"; National Academy for Nuclear Training — accreditation and peer evaluation.],
    [World Nuclear Association — Three Mile Island Accident; INPO/WANO performance indicators.],
    [Marsh (2019), "INPO and the Transformation of Nuclear Safety Culture."],
  ),
  quote: [Every utility recognized that an accident at any single plant would affect every operator's license to operate.],
  quote-source: "Paraphrasing the institutional analysis in Rees, Hostages of Each Other, 1994",
  le-insight: [
    INPO is the strongest evidence in any domain that capability
    engineering can be undertaken at the level of an *industry*, not just
    an organization. The conditions that made it possible — shared
    catastrophic exposure, regulatory legitimacy, an honest peer-review
    architecture — appear wherever a single failure can damage every
    operator.
  ],
  lens-approach: [
    LENS uses INPO in LEN 8 as the canonical example of industry-level
    learning: students identify the structural conditions in their own
    domain that would permit (or block) an INPO-equivalent and design the
    peer-review architecture required. LEN 1 uses the founding moment —
    nine months after TMI — to discuss the *speed* a credible response to
    catastrophe demands.
  ],
  literature-items: (
    [Rees (1994), _Hostages of Each Other_],
    [Weick & Sutcliffe, _Managing the Unexpected_ (2007)],
  ),
  reflection-list: (
    [What is the equivalent of "an accident at any single plant affects every operator" in your domain? If the answer is "nothing," what does that tell you?],
    [INPO was stood up in nine months. Pick a current cross-organizational capability problem and write the nine-month deliverable that would constitute a credible response.],
    [INPO held no statutory authority yet made its findings stick through shared catastrophic exposure and peer review. Design the non-statutory mechanism that could enforce a standard in your domain, and name the shared stake that would give it teeth.],
  ),
  approaches: (
    during: (
      [Found the body on shared catastrophic exposure — make explicit that one operator's failure threatens every operator's license — so members have a direct stake in each other's competence.],
      [Set common training, certification, and accreditation standards across the industry rather than leaving each organization to learn alone.],
      [Staff peer review with working operators, not distant regulators, so examiners know what to look for and findings carry professional weight beyond rule compliance.],
    ),
    after: (
      [Track fleet-wide performance indicators and confirm the laggards are being pulled up, not just the leaders held to standard — the signature of a learning mechanism working.],
      [Sustain candid peer review by keeping the body funded by and accountable to its members, so the honest examination that makes it effective does not erode into formality.],
      [Export the enabling conditions rather than the institution when scaling (as INPO informed WANO), adapting the shared-exposure-plus-peer-review design to each new context.],
    ),
  ),
  courses: ("LEN 1", "LEN 8", "LEN 3",),
)
