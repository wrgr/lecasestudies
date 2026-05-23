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
directions: where capability was absent or eroding (Part I — the
failure modes), and where it was successfully engineered (Part II —
paired interventions).

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

The successful institutions in Part II — INPO operators trained to
challenge their reactor team, Keystone ICU nurses authorized to halt
a procedure (Case 14), the Nuclear Navy's questioning attitude (Case
28), the first-officer authority CRM built into the cockpit (Case
12) — all engineered for capability **and** for the operator's
capacity to think against the procedure when the procedure was
wrong.

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

Every case in the book was reviewed by the editors and hand-checked
by students for:

- **Source existence.** The cited sources exist and are findable.
- **Attribution fairness.** Quoted material is fairly represented.
- **Account accuracy.** The case-study narrative is an accurate
  account of the incident and the investigations it draws on.

Items where the source could not be confirmed are marked
"Paraphrasing…" so the attribution is honest about what is the
author's reconstruction and what is verbatim from the record.

The audit record of citations checked and changes made is maintained
in [AUDIT.md](AUDIT.md) alongside the source repository.

---

## Editorial conventions

### Spread architecture

Each case is a two-page **verso/recto spread** in the printed book:

- **Verso (left, even page):** the case itself — domain tags, title,
  failure-mode codes, impact line, a code-generated diagram, and the
  narrative.
- **Recto (right, odd page):** the *Learning Engineering Lens* — pull
  quote, LE Insight, LENS Approach, reflection questions, sources,
  further reading, and LEN course tags.

`pagebreak(to: "even", weak: true)` in `lib/case.typ` forces each
case to start on a verso. When a case overflows, a blank-page anchor
is inserted before the next case so the spread architecture is
preserved.

### Blank-page anchors as editorial signal

Half Letter production carries ~24 trailing blank pages; US Letter
carries ~3. These are not waste — they mark the cases whose narrative
or LE Lens has room to be expanded without breaking the layout. The
editorial workflow uses these blanks as a worklist:

1. Identify cases with a trailing blank in Half Letter.
2. Check whether the corresponding US Letter rendering has room at
   the bottom of the LE Lens page.
3. Where both conditions hold, expand:
   - one additional reflection question, anchored to existing body
     content
   - one or two sentences of analytical depth in the LE Insight or
     LENS Approach, drawing strictly on facts implied by the
     existing sources
   - one additional Further Reading entry where canonical works are
     widely associated with the case
4. Rebuild and verify the net page-count effect on both trims.

An expansion pass on the eight thinnest cases (13 WHO Surgical
Checklist, 21 Summit Learning, 25 EHR/CPOE, 28 Rickover Training,
45 Mark 14 Torpedo, 46 Operation Eagle Claw, 94 COMPAS,
95 Radiology AI) absorbed 5 Half Letter blanks while introducing
only 3 in US Letter — a net reduction of 2 across the two builds.

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
