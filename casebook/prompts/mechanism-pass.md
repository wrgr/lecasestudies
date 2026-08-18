# The mechanism pass — internal reviewer prompt

**This is not a student-facing prompt.** It is the prompt the editors run against a case
in the casebook source. Its output is field-level edits, not an essay.

## Why this pass exists

The July 2026 **critical-accuracy pass** asked *is it true?* across all 205 cases and
caught fabricated figures, wrong attributions, and stale cross-references.

It did not catch Case 155 (Toyota Andon Cord), whose `impact:` line read
*"Front-line authority to stop the line."* That is not what pulling the cord does —
under the fixed-position stop system a pull summons the team leader and the line halts
at the work-position boundary only if the problem outlives the cycle. The numbers were
fine. The **mechanism** was the folk version.

This pass asks the second question: *is the reading right?*

## The governing distinction

| | |
|---|---|
| **Inaccuracy** | The mechanism, date, figure, attribution, or evidence strength is stated wrongly. **We fix it in source.** Annotating an error is not the same as correcting it. |
| **Contested causation** | The record itself supports more than one explanation and no study adjudicates. **That** earns a rendered `competing-readings` block, because flattening it to one verdict would itself be an inaccuracy. |

## Triage — every finding lands in exactly one bin

- **FIX** — an inaccuracy. Corrected in the `case()` source. No block, no hedge, no note.
- **CONTESTED** — genuinely rival explanations. Goes in `competing-readings`, and only
  if it passes all four admission tests below.
- **RULING** — needs the editor, or a source we do not have. Nothing ships until ruled on.

### Admission test for CONTESTED (all four must hold)

1. The rival explanation is supported by a **source we can cite**, not by the reviewer's
   reasoning alone.
2. **No available study adjudicates** between it and the case's primary reading.
3. It implies a **different prediction about when the pattern fails to transfer** —
   otherwise it is a restatement, not a rival.
4. **Naming it changes what the reader would do.** A rival with no practical consequence
   is trivia.

If a finding fails any of these, it is a FIX or a RULING. `competing-readings` is not a
place to park findings we did not want to adjudicate, and never a way to ship a known
error with a disclaimer attached.

## The ten checks

1. **Claim line** — does `impact:` describe the mechanism as it actually operates, or a
   folk summary of it? Highest-leverage field: it is what the study prompt surfaces to
   the reader, so an error here propagates into every downstream teaching artifact.
2. **Mechanism grain** — is the mechanism specified at a level a designer could build?
   Name the components the record supports but the case omits.
3. **Framing direction** — does `le-insight` *derive* the LENS commitment from the
   evidence, or *assert* it and use the case as illustration? A reader who does not
   already buy the commitment has no reason to accept the second form.
4. **Evidence load** — name the single load-bearing study or record. What does it
   confound? Is any of it the subject's own account of itself? Is the counterfactual
   identified or assumed?
5. **Contested causation** — rival explanations the record actually supports (see the
   admission test). Include an **attribution-inflation** check: is this mechanism
   over-credited because it is legible — photographable, teachable, story-shaped?
6. **Scope limit** — where did this same system later fail, or what class of problem
   does it demonstrably not catch?
7. **Lineage & dating** — does `year:` start at the right place? Does an earlier
   antecedent sharpen the LENS point rather than dilute it?
8. **Anchor adequacy** — is the single `lens-anchor` lossy? Propose `Dx+Dy/PTn` if so
   (the renderer fills the primary and outlines the secondary). Check `induced-anchor`
   and `leo-anchor` consistency against the case's own prose.
9. **Transfer conditions** — does `lens-approach` / `approaches` name line items someone
   can fund or refuse, or does it gesture at culture? "Imitation fails without the
   cultural half" is unfalsifiable and gives the reader nothing to do on Monday.
10. **Studio brief** — does `reflection-list` target the easy half of the intervention?
    Does at least one item demand a falsification test the reader could actually run?

## Binding constraints

- **House voice.** `however` appears 3 times in 205 cases — effectively banned. The
  attested vocabulary is *"two readings" / "competing readings" / "the hedge is
  load-bearing" / "the case does not claim…" / "attributing the entire outcome to X
  alone overstates what the evidence can support."*
- **Don't pad citations.** Three real sources beat eight stretched ones. Every new claim
  needs a primary source or it does not go in.
- **Never smooth** load-bearing hedges, COI disclosures, or evidence-tier flags.
- **Conservative voice.** Stay within facts implied by the case's existing sources unless
  a source is added deliberately.
- **Flag, don't assert.** Where a correction depends on a fact you have not confirmed
  against a primary source in this session, mark it `NEEDS-SOURCE` and name the source
  that would settle it. Do not write a confident correction on recollection.
- **Output edits, not essays.** Every finding names the exact `case()` field.

## Output schema (one block per case)

```
### Case <n> — <slug>
VERDICT: CLEAN | SHARPEN | DEFECTIVE
<one sentence>

FIX
- field: <name> | severity: high|med|low | confidence: high|med|low | NEEDS-SOURCE?
  now:  "<quoted current text>"
  why:  <what is wrong>
  to:   <proposed replacement or direction>

CONTESTED  (only if all four admission tests pass; else omit)
- reading: <name> | source: <citable> | different prediction: <...>

SCOPE-LIMIT
<one sentence, or NONE FOUND>

ANCHORS
lens: <current> -> <proposed or KEEP> | induced: ... | leo: ...

CHECKS: 1:✓~✗ 2:… 3:… 4:… 5:… 6:… 7:… 8:… 9:… 10:…
```

`VERDICT` rubric: **DEFECTIVE** = at least one high-severity FIX (the mechanism, the
headline claim, or the evidence strength is wrong). **SHARPEN** = only med/low FIXes or
a missing scope limit. **CLEAN** = nothing actionable.
