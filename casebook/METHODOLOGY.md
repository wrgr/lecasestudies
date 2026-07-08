# Methodology

How *Capability Matters* was assembled, the framing it argues for, and
the editorial conventions it uses. This file documents the
methodology so future contributors can extend the casebook without
relitigating decisions.

The intellectual frame here is summarized from the LENS Positioning
Argument and the LENS Objectives & Course Mapping (separate program
documents available to editors). The casebook is the evidence base
for that argument — these notes connect the two.

---

## The central claim

**Capability is a system parameter.** Every complex system depends on
what people can do inside it. That dependency is measurable,
designable, and too important to leave to chance. The cases in this
book are the evidence base for that claim, examined from both
directions: where capability was absent or eroding (the failure cases
in the "what fails" half of each chapter), and where it was
successfully engineered (the "what works + frontier" half).

## Capability as the interface

Capability is not a property of the person alone (that is
*competence*) or of the system alone (that is *performance*). It is
the **interface** between what a system requires of its human
operators and the impact the system has to deliver.

A capability gap can originate on either side of the interface — in
human development, in system design, in organizational performance,
or in the interaction among them. Distinguishing which is itself a
measurement and engineering problem. The casebook calls this **gap
attribution** and treats it as the diagnostic move the rest of the
discipline depends on. Every case in Part I is, in part, an exercise
in attribution: the proximate actor is obvious; the architecture that
produced the gap is what the case exists to make legible.

## Agency as a design constraint

The capability discipline can be misread as optimization: produce
operators whose behavior matches a specification. That reading
collapses the very property the cases reveal as load-bearing.

**Agency** — the capacity of operators to exercise independent
judgment, adapt to novel conditions, and shape the systems they work
within — is preserved as a design constraint on every intervention.
Capability without agency is automation. The goal is not operators
who comply with a system specification but operators who can perform,
adapt, and lead when the system encounters conditions it was not
designed for.

The successful institutions in the "what works" half of the book —
INPO operators trained to challenge their reactor team, the Keystone
ICU's authorisation for nurses to halt a procedure, the Nuclear Navy's
questioning attitude, the first-officer authority CRM built into the
cockpit — all engineered for capability **and** for the operator's
capacity to think against the procedure when the procedure was wrong.
*(Cases are queryable by slug — `keystone-icu-pronovost-checklist`,
`u-s-nuclear-navy-rickover-training-model`,
`crew-resource-management-and-cast` — and by current number via the
case matrix at the front.)*

## Three commitments threaded through the curriculum

The LENS curriculum carries three commitments through every required
course; the casebook is organized to make each one visible in the
case record:

1. **Communication, translation, and integration within and across
   disparate systems.** A striking number of failure cases are, at
   their proximate cause, translation or integration failures across
   boundaries — language, convention, unit, role, agency, discipline,
   or subsystem-to-subsystem. Mars Climate Orbiter (metric ↔
   imperial), Tenerife (takeoff-clearance language under time
   pressure), Patriot Dhahran (manufacturer's runtime assumption ↔
   operator's actual runtime), Eagle Claw (rotary ↔ fixed-wing ↔
   ground ↔ command across services), 9/11 (cross-agency). The
   successful cases are equivalently exercises in disciplined
   translation.
2. **AI as both creative partner and epistemic risk.** AI can
   accelerate the capability flywheel — generating, adapting, and
   evaluating interventions — and it can quietly offload the
   thinking. Which one it does is a design and governance decision,
   not a property of the tool.
3. **Human agency as a design constraint.** See the section above.
   Agency runs through the curriculum as a commitment that survives
   even in the AI-assisted cases at the frontier (Chapter 9).

## The Practice Flywheel

LENS treats capability development as an iterative cycle, not a
one-time intervention:

> **Identify → Activate → Prototype → Analyze → Transition**

The cases that produced sustained outcomes — CRM and CAST, INPO,
Keystone ICU, the WHO Surgical Safety Checklist, TeamSTEPPS — all
share this loop structure. They were built, measured, rebuilt,
remeasured, and rebuilt again. The institutional capability to
sustain the loop is what distinguishes them from interventions whose
effects decayed.

The pedagogical commitment of LENS is that the practitioner who
graduates can identify, instrument, and close the next such loop
before the next case is written.

## Managing constraints and risk

Capability engineering always operates inside constraints — budget,
schedule, regulation, institutional will, politics, ethics, public
trust — and many of the binding ones are not technical. Managing
those constraints and the risk they carry is part of the discipline,
not a precondition to it.

A specific consequence: the loop has a legitimate **negative
result**. Reading the constraint space accurately enough to
recognize when external, non-technical factors have narrowed the
solution space to the point where a particular capability goal is no
longer realistic to pursue is itself a valid project outcome —
documented, defended, and used to guide the work. It is not a
failure. It redirects effort toward reachable goals, surfaces the
non-technical barriers for the stakeholders who can change them, and
prevents the more expensive failure of driving an infeasible target
all the way into operation before it collapses there. "Not like
this, not yet" is a result a capability engineer must be able to
deliver.

## Decision-grade evidence

Evidence of sufficient rigor, relevance, and timeliness that a
decision-maker can act on it. Not all evidence is decision-grade. A
research finding may be rigorous but not actionable. A dashboard may
be timely but not valid. Decision-grade evidence connects learning
outcomes to operational impact through transparent methods and
governance, at the speed and scale that operational contexts require.

## Speed and scale

Paired design parameters. **Speed** is the rate at which evidence
cycles turn — how quickly capability development responds to evidence
about performance. **Scale** is the scope across which capability
must function — within and across disparate systems, organizations,
and contexts. High-consequence operational domains demand both: slow
or small-scale capability development is functionally equivalent to
no capability development.

---

## How this volume was made

The casebook was assembled using AI tools as part of the same
Practice Flywheel its case studies argue for. AI was the dual entity
the curriculum names: a creative partner that accelerated drafting,
cross-referencing, layout, citation lookup, and editorial pass — and
an epistemic risk that had to be hand-checked against the record.

Every case in the book is reviewed by the editors. The per-case
manual review is scaffolded as a two-pass rubric (quality scan +
content scan, 5–15 min/case target) in
[verification-log.md](verification-log.md), with the seven check
columns being: clarity · references exist · references support the
claim · conclusions reasonable · no overclaim · anchor fit · cross-
references resolve. Six of the seven are auto pre-filled by mechanical
detection across all 200 cases; the seventh (*conclusions reasonable*)
requires a human read.

Before press, an automated references-validation pass checked all
~951 references against publisher / agency / DOI sources. The pass
came in at **VERIFIED ~777 / UNCERTAIN ~121 / ISSUE 10** — a 1.05%
ISSUE rate, with all ten ISSUE-class items resolved in source before
print (full record in [AUDIT.md](AUDIT.md) §"Automated references
validation").

Items where the source could not be confirmed are marked
"Paraphrasing…" so the attribution is honest about what is the
author's reconstruction and what is verbatim from the record.

The audit record of citations checked and changes made is maintained
in [AUDIT.md](AUDIT.md) alongside the source repository.

---

## Editorial conventions

### Case architecture

Each v2 case occupies **four pages** in a consistent "3 + 1" structure;
shorter v1 cases land at three pages where the dual-anchor + COI /
evidence-tier render is light. `scripts/check-cases.sh` permits 3–5
page envelopes:

- **Pages 1–3 — the case study.** A shaded ~130-word "In brief" summary,
  then a five-beat sourced narrative under fixed section headings (the
  beats vary by case `kind` — failure, intervention, or frontier; see
  `section-sets` in `lib/theme.typ`). Inline `#cn()` markers carry numbered
  citations; the code-generated diagram sits on page 2, and the numbered
  reference list closes the narrative.
- **Final page — the Learning Engineering Lens.** Pull quote, LE
  Insight, LENS Approach, reflection questions, the during/after
  approaches block, the team-block (T/D/N/H/G/K), sources, and further
  reading. *(The per-case LEN-course chips were dropped from the
  printed body per editor decision (June 2026); courses remain as case
  metadata and surface in the back-matter `course-index.typ`.)*

Cases flow with a weak page break (`pagebreak(weak: true)` in
`lib/case.typ`) and are **not** forced to start on a verso, so the
units pack without inserting blank pages. `scripts/check-cases.sh`
(run via `make check`) reads invisible `<cmeta>` probes to verify, for
every case: citation parity (marker count == reference-list length),
the 3–5 page envelope, and that the reference list begins on page 2.

### Conservative voice for additions

When expanding cases editorially, stay strictly within facts implied
by the case's existing sources. Reflection questions should anchor
to content already in the body. New Further Reading entries should
be works canonically associated with the case in the published
literature, not novel discoveries.

### Failure-mode taxonomy

The six failure modes (Training Gap, Designed Out, Normalization of
Deviance, Human-System Interface, Governance & Trust, Knowledge &
Institutional Memory) are *not* mutually exclusive. Most cases carry
two or three modes; the primary mode is listed first, contributing
modes follow.

### Grayscale-safe palette

The named palette in `lib/theme.typ` is tuned for L\* spacing so
production grayscale renderings preserve the visual hierarchy. Where
color carries meaning in diagrams, shape and stroke pattern (solid /
dashed / dotted, circle / square / outline-only) carry the same
information so the distinction survives a B&W print.

A ghostscript pass on the production builds catches any hardcoded
`rgb()` literals inside `cetz` diagrams and flattens them to true
grayscale (`-sProcessColorModel=DeviceGray
-sColorConversionStrategy=Gray`).

---

## Iteration

The casebook is itself an iteration artifact. The volume is not
finished — it is the first iteration of a reference dataset that
LENS will continue to develop. Revisions will follow reader feedback,
reviewer findings, and the program's own ongoing practice: adding
new cases as the operational record grows, correcting the record
where it can be improved, and updating the LENS course crosswalk as
the curriculum itself iterates.

Corrections, new cases, and reader feedback are welcomed.
