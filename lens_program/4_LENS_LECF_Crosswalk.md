LENS and the Learning Engineering Competency Framework

Crosswalk, Evidence Status, and Recommended Revisions to LENS Competency Domains

Working document for the ICICLE Competencies SIG conversation. Internal draft; Chatham House attribution conventions apply.

# Purpose

This document maps the five LENS competency domains against the proposed Learning Engineering Competency Framework (LECF), the nine-domain synthesis prepared for the IEEE standards pathway. It does three things: states the structural relationship between the two frameworks; provides a domain-level crosswalk with evidence status; and recommends specific revisions to LENS objectives. LENS objectives are revisable. The LECF targets field consensus and moves on a slower, evidence-gated track. Where the two pull against each other, LENS should adjust.

# The Structural Claim

LENS is a domain specialization and proficiency claim within the LECF, not a competing framework. Using the INCOSE analogy: the LECF defines what the field's competencies are; LENS trains practitioners to practitioner or lead-practitioner level in a subset of them, within high-consequence operational contexts, and adds domain-specific competencies the way INCOSE accommodates domain extensions. This single sentence carries both audiences. ICICLE sees LENS as an implementation site for a shared framework; SOE sees a program grounded in an emerging IEEE standard.

# Crosswalk

Evidence tags follow the LECF convention: [V] validated; [P] practice-grounded, no formal validation; [A] aspirational/proposed, requires new validation work.

| LENS Domain | LECF Mapping | Relationship | Evidence | Notes |
|---|---|---|---|---|
| LENS 1: Systems Thinking & Analysis | LECF 3 (Engineering & Systems Thinking), esp. 3.4 requirements & V&V | Extends | [P] / [A] | Adds capability requirements translation across the human-machine interface; no LECF counterpart |
| LENS 2: Learning Engineering Design | LECF 1 (Learning Sciences), 2 (Human-Centered Design), 6 (Process & Iteration) | Aligns | [P] | Shared field consensus territory; cleanest mapping |
| LENS 3: Data, Measurement & Evaluation | LECF 4 (Instrumentation), 5 (Analytics), 7 (Performance & Outcome Engineering) | Aligns + carries proposed extension | [V] / [P] / [A] | Strongest validation in both frameworks; gap attribution and outcome coupling are LECF Domain 7, flagged [A] |
| LENS 4: Context & Domain Fluency | No LECF analog | Diverges (new) | [A] | LECF is deliberately domain-agnostic; LENS makes domain fluency a competency; needs behavioral definition (see R1) |
| LENS 5: Emerging Systems & Futures | LECF 5.2 (responsible AI/ML), partial | Extends | [A] | Human-AI teaming and not-yet-fielded systems are absent from LECF and ICICLE/LEBOK |
| LENS ethics thread (distributed) | LECF 8 (Professional, Ethical & Collaboration Practice) | Aligns; different architecture | [P] | LECF houses ethics as a domain; LENS distributes it as a design constraint across all courses |

# What the Crosswalk Shows

LENS takes the LECF's least-validated territory and makes it the center of gravity. Domains 2 and 3 sit on consensus ground with the field's strongest evidence. Domains 1, 4, and 5, plus the gap-attribution and outcome-coupling material in Domain 3, are extensions: intellectually defensible, grounded in HSI and human performance technology, and unvalidated in learning engineering specifically. This is not a weakness to hide; it is the program's argument. But it sets two obligations. First, external documents must label extensions as proposed, never as field consensus. Second, LENS itself must generate the validation evidence, which is the subject of R3 below.

# Recommended Revisions to LENS Objectives

These take advantage of the stated flexibility in LENS objectives. Each is concrete enough to act on before the SIG conversation.

## R1. Rewrite Domain 4 with behavioral definitions

Current Domain 4 language (“high-consequence operational contexts, HSI frameworks, interdisciplinary team engagement”) names content, not competence. It is the only LENS domain that cannot survive the question: what does a person observably do that demonstrates this? Proposed replacement subcompetencies:

4.1 Translate domain constraints (regulatory, safety, operational tempo, security classification) into learning design requirements

4.2 Conduct stakeholder and context analysis in a high-consequence environment using an HSI framework, producing a documented context model

4.3 Communicate learning engineering decisions in the working vocabulary of a host domain, verified by domain stakeholder review

Each of these is assessable from capstone artifacts. The current language is not.

## R2. Declare the individual-attainment posture explicitly

The LECF follows the INCOSE convention: competencies a learning engineering capability must cover, often distributed across a team. LENS makes individual claims: competencies a graduate demonstrates. These are compatible but the crossing must be explicit. Recommended move: publish a one-page attainment profile stating which LECF subcompetencies a LENS graduate reaches at practitioner level, which at awareness level, and which are out of scope. The IBSTPI precedent (individual competencies validated against practitioners) supports this posture; adopt it by name in the SIG conversation. **Drafted:** `8_LENS_Attainment_Profile.md` fills this in against the 42-competency ICICLE *Essential Competencies* framework (practitioner / awareness / out-of-scope per competency, with the Individual/Team designation as warrant); it can be re-expressed against the nine LECF domains for the standards-pathway audience.

## R3. Build the Domain 7 validation pathway into LENS, with external sites

LECF Domain 7 (gap attribution, learning-to-operational-outcome coupling, transfer specification) is tagged [A] throughout and is the material most identified with this effort. LENS capstones are the natural evidence engine: rubrics scoring gap-attribution quality, documented coupling analyses, transfer measurement plans. One constraint is non-negotiable: if the only evidence for Domain 7 comes from LENS, it is self-validation. Recruit at least one or two external pilot sites through the SIG and the broader ICICLE community to generate independent practice evidence. This is also the strongest collaborative offer available for the SIG conversation: LENS contributes its evidence and invites the community to contribute theirs.

## R4. Anchor Domain 5 to the LECF and name the candidate extensions

LENS Domain 5 currently floats. Anchor it to LECF 5.2 (responsible AI/ML) and propose two named candidate subcompetencies for SIG debate:

Design capability development for human-AI teams, where task allocation between human and machine is itself a design variable

Specify learning and capability requirements for not-yet-fielded systems, working from system design artifacts rather than operational experience

Framing them as proposals for the field, rather than LENS-only content, converts a divergence into a contribution.

## R5. Keep ethics distributed; add the mapping statement

The architectural difference (LECF houses ethics as Domain 8; LENS threads it through every course) is a strength, consistent with the principle that deferred commitments do not materialize. The only fix needed is documentation: a short table stating where each LECF 8.x subcompetency is taught and assessed across LEN 1 through the capstone. Without it, reviewers will read the distributed approach as absence.

# Domain Language: Current vs. Recommended

| Domain | Current language | Recommended revision |
|---|---|---|
| LENS 1 | SE principles, human-system task analysis, capability requirements translation | Keep. Add explicit mapping language: “extends LECF Domain 3 with requirements translation across the human-machine interface.” Propose 3.5 as a candidate LECF subcompetency. |
| LENS 2 | Learning sciences application, evidence-based design at scale, transfer to high-stakes environments | Keep; split the transfer clause. “Transfer to high-stakes environments” belongs with LECF 7.3 (transfer specification), not with design. Moving it consolidates all [A] material in one place. |
| LENS 3 | Ethical instrumentation, learning analytics, operational performance criteria, gap attribution | Keep; label gap attribution and operational performance criteria as “proposed extensions to the field framework (LECF Domain 7)” in any external document. |
| LENS 4 | High-consequence operational contexts, HSI frameworks, interdisciplinary team engagement | Rewrite with behavioral definitions (R1). Current language is a knowledge area dressed as a competency. |
| LENS 5 | Human-AI teaming, capability development for not-yet-fielded systems, adaptive learning at scale | Keep; anchor to LECF 5.2 and propose two named candidate subcompetencies for SIG debate rather than leaving them free-floating (R4). |

# Framing for the SIG Conversation

Lead with credit: the Learning Engineering Process model, the Toolkit, and LEBOK define the knowledge map. The LECF proposes the behavioral competency layer LEBOK invites; LENS is a first implementation site.

Offer evidence, not territory: LENS capstone artifacts as documented practice for Domain 7, contingent on external pilot sites to avoid self-validation.

Hold the proficiency-level proposal in reserve: INCOSE-style levels per subcompetency are the highest-leverage next step for the framework, and the LENS attainment profile (R2) is a ready-made demonstration.

Do not attach credential or certification language to anything yet. The evidentiary bar (job-task analysis under ISO/IEC 17024 logic) is not met, and claiming otherwise costs credibility with exactly the audience that matters.

In plain language

The field framework says what every learning engineer should be able to do. LENS says: here is a program that builds those abilities to a professional level, in places where mistakes are expensive, and adds a few abilities the field has not yet agreed on. We are honest about which is which, and we are offering our students' work as part of the evidence the field needs.