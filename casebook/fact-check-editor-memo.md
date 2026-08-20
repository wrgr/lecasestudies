# Fact-check sweep — decisions for the editor

August 2026. Everything here was deliberately **not**
changed during the sweep, because it turns on editorial judgment rather than on what a document
says. Grouped by what kind of decision it is.

---

## 1. COI disclosures whose factual basis has moved

The rule is that institutional COI is disclosed even where every editor is personally detached,
and that detachment changes the wording, never the presence of the flag. Neither item below
removes a flag. Both change what the flag rests on, which is the editor's wording to choose.

**Case 48 — Johnson school-surveillance study.** The standing disclosure is "shared institution
(JHU SOE)" — School of Engineering. Odis Johnson's appointments are the School of Education, the
Bloomberg School of Public Health, and Krieger; co-author Jabbari is at WashU. The overlap is
real but it is *shared university*, not shared school. The case text also places Johnson in the
School of Engineering and should follow whatever the disclosure settles on.

**Case 68 — CIRCUIT.** The standing text reads "an editor of this volume is the senior author of
the underlying study." Gray-Roncal is fourth of five authors on the ASEE paper. If "senior
author" means principal investigator, the wording is right and only reads oddly; if it was meant
as byline position, it is wrong. Either way the flag stands.

**Case 198 — BRAIN Initiative.** Checked and found consistent with the sourcing; no change
needed. Recorded so a later reviewer does not re-open it.

---

## 2. Evidence-tier flags whose stated rationale no longer holds

In each case the *flag* may still be defensible; what has failed is the sentence in the case
explaining why it is there. Leaving both as they are means the case argues for a caveat on
grounds the corrected prose now contradicts.

| Case | Flag | What changed |
|---|---|---|
| 44 | `preprint-tier` | Kikuchi et al. is now peer-reviewed — *Japanese Journal of Radiology*, Jan 2026. |
| 71 | `preprint-tier` | Published at IEEE CSEE&T 2025, pp. 53–61, doi:10.1109/CSEET66350.2025.00012. |
| 76 | `preprint-tier` | Published as *TOCHI* 31(1) Art. 8, doi:10.1145/3622784; the arXiv item is its author preprint. |
| 154 | `practice-synthesis-tier` | Source is a peer-reviewed HFES proceedings paper, not outside-academic reporting. The real caveat is different and stronger: the paper reports a *process* and defers all outcomes to future papers. |
| 194 | `practice-synthesis-tier` | The load-bearing self-critique is peer-reviewed text in Kattel & Mergel, not practitioner reflection. |
| 181 | `journalism-tier` | Budget, 2023 conclusion, EBRAINS ESFRI listing and the 2015 mediation are all documented in the project's own record. |
| 190 | `journalism-tier` | The disclosure timeline is in a published 195-page report commissioned by Cruise's own board. |
| 200, 201 | — | Checked; rationales hold. No action. |

**Recommendation:** for 44, 71 and 76 the honest move is to retire the flag and say plainly what
is still open. For 154 the flag stays and the rationale is rewritten. For 181, 190 and 194 the
tier is arguably too weak for the evidence now in hand.

### Editor ruling, August 2026 — resolved

**Peer review removes the weak-evidence flag.** Where the underlying source turned out to be
peer-reviewed, the `evidence-flag` comes off and the caveat that actually mattered is restated
in the prose in its own right, rather than riding on a tier flag that no longer describes the
sourcing. Applied to:

| Case | Flag retired | Hedge now stated in its own terms |
|---|---|---|
| 18 | `preprint-tier` | Journal-published (medRxiv item is its preprint); the study stops at L1–L2 and does not reach L3 behaviour or L4 outcomes. |
| 44 | `preprint-tier` | Framework and transparency analyses are peer-reviewed but recent, and none follows the approved devices far enough to report outcome durability. |
| 71 | `preprint-tier` | Peer-reviewed at IEEE CSEE&T 2025; one cohort at one university, unreplicated. |
| 76 | `preprint-tier` | Synthesis peer-reviewed in *TOCHI* 31(1) Art. 8 (arXiv item is its author preprint); open question is whether the genre takes hold across the LE community. |
| 154 | `practice-synthesis-tier` | Peer-reviewed HFES proceedings paper; it reports a **process and no outcome**, and generalization beyond the studied subsystem stays open. |
| 194 | `practice-synthesis-tier` | The load-bearing self-critique is peer-reviewed text in Kattel & Mergel; open question is whether the generational-replacement plans carry through. |
| 202 | `practice-synthesis-tier` | Principles are peer-reviewed; the implementation literature behind them is still thin. |

**18 and 202 were not on the list above** — both were found during this pass carrying
`evidence-source: "peer-reviewed"` and a weak-evidence flag simultaneously, which is the same
defect stated on the case's own face. They are fixed on the same ruling.

The standing *"future validation ongoing"* sentence is the flag's language, so it was removed
wherever the flag was removed and replaced with the specific outstanding item.

**Still open — not covered by this ruling.** Cases **181** (HBP) and **190** (Cruise) keep
`journalism-tier`. Their sourcing is documented primary record rather than peer review, so the
ruling does not reach them; whether the tier is too weak for the evidence in hand remains the
editor's call.

**Related fix.** Case 181's `beats[5]` read *"opposite governance models, opposite trajectories —
governance is the variable"* — an N-of-2 isolation claim on a case that carries a binding
evidence-tier flag. Rewritten to "a contrast of two, not a controlled one."

---

## 2b. Compression fields left asserting claims the bodies retract

The August 2026 spot check read Cases 19, 98, 154 and 155 in their corrected state and found the
sweep had landed **unevenly inside each case**: the narrative body was corrected and the fields
around it were not, so a case argued against itself. Case 155's Evidence section said *"No study
isolates the cord's marginal contribution"* while its `beats` still said *"Toyota's protected
authority is the variable"*; Case 19 admitted the trial *"could not decompose"* the bundle while
its `le-insight` and pull quote still said *"Neither worked without the other."*

Fixed in this pass across `summary`, `beats`, `le-insight`, `lens-approach`, `quote`,
`reflection-list` and `approaches` for Cases 19, 98 and 155, plus Case 155's `references` (Adler
1993 and the NASA/NHTSA 2011 review, both load-bearing for the corrected Evidence section and the
`scope-limit`, were absent) and its `lens-anchor` (`D3/PT3` → `D3+D4/PT3`).

`scripts/check-compression.py --phrases` now greps the whole compression set for the phrasings
the sweep retired. It produces leads, not verdicts — "stop the line" is correct prose in a case
about stopping a line — but it turns this class of defect into something a reviewer can be handed
a worklist for. Current corpus state: 7 of 191 cases flagged, all triaged as legitimate usage.

**Resolved.** The `ch5b.typ` chapter epigraph read *"The cord was there to be pulled, and pulling
it was rewarded"* — the folk framing at chapter level, over a chapter whose lead case now retracts
it. Replaced with *"The mechanism was easy to copy. What made it work sat on a different budget
line."* — which is what the four cases in the chapter share once Andon is read correctly: the
responder staffing behind the cord, the verification and retraining budgeted into the INL cutover,
the multi-decade funding behind LWRS, and the measurement nobody has built for AI-augmented
coding. Imitation fails on a budget line, not on values.

---

## 3. The "cultural half" framing

Twelve passages across five cases still describe a paired intervention as having a technical
half and a "cultural half": **Case 19** (Keystone, ×5, main volume), **Case 24** (Bristol, ×3),
**Case 137** (×1), **Case 155** (Andon, ×1), **Case 177** (CIRAS, ×2). Case 19 says "the nurses'
enforcement authority was the cultural half, and it was the load-bearing one." The fact check
narrowed the Keystone claim itself — Berenholtz says nurses were *empowered* to stop
non-emergency procedures, not required — but the framing is a house-voice decision, and your
steer was that the cultural component is real and load-bearing without being the whole story.
They want one framing decision applied consistently, not twelve separate edits.

---

## 4. Claims a reviewer flagged but did not correct

Each of these is defensible as written and is recorded so a later pass does not "fix" it in the
wrong direction.

- **Case 130 (Vincennes).** A retrospective gives the death toll as 256. The case's 290 is right.
- **Case 177 (CIRAS).** Wikipedia gives a different RSSB transition date; the case follows the
  Strathclyde impact case study, which is the stronger source and the one it cites.
- **Case 134 (V-22).** GAO's fatal-accident tally and the compiled hull-loss record count
  different things. The case is internally consistent on the hull-loss basis its citation uses;
  GAO Appendix II would be a stronger anchor if you want it sourced to a primary document.
- **Case 165 (Camp Fire).** One `#cn()` in the Investigation section supports a framing of the
  regulator's role that no cited document makes a finding about. The claim is a characterization
  of the gap, not an attribution to a named body — flagged rather than corrected.
- **Case 172 (CrowdStrike).** The case's thesis survives and sharpens: the Content Validator
  existed and passed the update; the 6 Aug 2024 RCA locates the fault inside the validator (21
  fields expected, 20 supplied, no bounds check). Worth citing the RCA alongside the PIR.
- **Case 183 (Uber ATG).** The summary says the NTSB "placed heavy blame on Uber." The report
  opens by disclaiming that it assigns fault; what it did was name three ATG deficiencies as
  contributing. Framing, not error.
- **Case 182 (Amazon).** "Single-source" appears in four fields. Dastin's story is
  single-*outlet* but sourced to five people familiar with the matter.

---

## 5. Production consequence

The corrections lengthened the book.

| | Before | After |
|---|---|---|
| Main volume (print interior) | 265 pp | **275 pp** |
| Spine | 16.46 mm | **17.08 mm** |
| Complete edition | 849 pp | **883 pp** |

The cover wrap is generated from the interior page count, so the spine is re-derived
automatically by `scripts/build.sh` — but any externally prepared cover art needs the new width.
The full `build.sh` could not be run in this environment (ghostscript and poppler are absent, so
the grayscale flatten and the cover assembly are unavailable); both Typst compiles are clean and
the page counts above come from them.

---

## 6. Still open, deliberately

- **The tutor prompt.** Unwritten. It is a distribution channel for whatever the fields say, so
  it ships after the cases are correct, not alongside them.
- **Binding claims to sources.** Every case carries `#cn()` markers that resolve to nothing in
  particular, and `check-cases.sh` only checks that the *count* of references is at least the
  count of markers. That rule is what let Murphy-et-al-2020 sit under a finding belonging to
  Feng-et-al-2023 for a year: a real paper, real authors, right topic, right count, wrong
  finding. Numbering markers against specific reference entries is the fix, and no gate in the
  repo can catch this class today. Scoped separately — it is real work.
- **Diagrams.** Two jobs: an accuracy audit of the 50
  definitions (the Andon diagram still teaches the folk mechanism and carries an unsourced "85%
  resolved in 60 seconds"), and a style decision forced by a confirmed print defect — 352
  hard-coded colour values bypass the theme's grayscale switch, so gold and teal flatten to
  gray 170 and 162 and every colour distinction in all 93 diagram placements is invisible in the
  printed book.


---

## 2c. The two remaining decomposition claims — fixed, August 2026

The corpus-wide lesson audit found the retracted decomposition claim surviving in exactly two
more cases, both in the printed volume. Both are now fixed, on different grounds.

**Case 117 (CRM & CAST) — a fact error.** The case said "a cultural redesign paired with a
continuous-evidence loop, where *neither half works alone*", and its `le-insight` said "The
intervention worked *because it was paired*." Its own body says "Sixteen years later the
Commercial Aviation Safety Team (CAST) added…", and its `year:` field is "1981 – present". CRM
began at United in 1981 (from the NTSB recommendation on United 173); CAST was founded in 1997.
CRM ran sixteen years without CAST, so "neither half works alone" is refuted by the case's own
timeline. Rewritten to state the sequence and the limit: the 83 percent figure covers 1998–2008
and CAST and the FAA credit it to a portfolio of seventy enhancements alongside new aircraft and
regulation, which no source decomposes.

**Case 119 (ASRS) — an untested counterfactual.** The case said "Either half alone fails." ASRS
began operating in April 1976 with the immunity provision already in place, so there has never
been an ASRS-without-immunity period against which to test either half. Replaced with the
documented design history, which is stronger than the claim it displaces: the FAA established the
program itself on 30 April 1975 and signed the Memorandum of Agreement handing collection to NASA
on 15 August 1975, having judged that its own enforcement role would suppress the reporting the
program depended on. FAA AC 00-46F added to the reference list to carry the new dates.

**Checked and sound, recorded so it is not reopened.** Case 169 (Fukushima) says the record
"establishes that the INPO pattern is not self-executing." That is a negative claim, and one
counterexample is sufficient to support it. No change.

`competencies.md` §2 and §2.3 describe these interventions as pairing a measurement with an
authorized action; that survives both edits unchanged, because it asserts what the successful
cases had rather than what either half does alone.

### Corpus-wide lesson audit — result

| Check across all 191 active cases | Result |
|---|---|
| Lesson apparatus complete on every case | 191 / 191, no gaps |
| `le-insight` with no affirmative claim | 0 |
| Decomposition / isolation claims | 0 after these two fixes |
| Hard causal verbs | 1 (Case 169, sound) |
| "The clearest / canonical case for X" claims | 60, with **zero** subject collisions |
| `le-insight` ungrounded in its own body | 0 substantive |

`check-compression.py` gained two permanent modes from this work: `--phrases` (retracted
phrasings anywhere in the compression set) and `--dangling` (prose citing an evidence flag, COI
block, competing-readings or scope-limit the case does not actually set — the defect that let two
cases keep promising a render after their flag was removed).


---

## 7. Print check and the complete-edition pass — August 2026

### Print / pagination

Compiled both editions with `--font-path fonts` (earlier manual compiles omitted it, so their
page counts were meaningless; `check-cases.sh` always passed it and was always right).

- Main volume print interior: **275 pp**, trim + bleed **209.20 × 260.00 mm**, confirming 8×10
  with 3 mm all round. Complete edition: **881 pp**.
- 14 inter-case gaps = the 14 chapter dividers. LE-Lens spans: 9 cases at 1, 36 at 2, 3 at 3 —
  all inside the envelope. First case opens p.30, last Lens page p.231.

**Defect found and fixed: the interior was shipping at an odd page count.** `scripts/blank-leaves.typ`
exists and its own header says "Lulu binds in 4-page signatures", but `build.sh` never called it.
At 275 pp the printer would have padded with leaves we did not choose, and the spine was being
derived from the unpadded count. `build.sh` now pads to the next multiple of four **before**
computing the spine, and reads the blank page size off the compiled interior rather than trusting
a constant. `blank-leaves.typ`'s defaults were also stale — 145.7 × 221.9 mm, a trim size the book
no longer uses — now 209.20 × 260.00.

**Consequence for the cover: 275 → 276 pp, spine 17.08 → 17.14 mm.** Externally prepared cover art
needs the new width.

### The remaining 143 cases

The printed volume's treatment applied outward, with one honest difference in method: the 48
printed cases were rewritten by hand, one site at a time. At 167 sites the complete edition got a
rule-based pass using the same replacement vocabulary and an explicit keep list, then two
corrective passes and a spot-check. It is a lower grade of attention, and it is the right one for
the edition that does not go to press.

- **`load-bearing`**: 159 sites rewritten, 5 kept. The first pass over-applied *decisive* and made
  a new tic (7 "decisive hedges"); two corrective passes removed 33 redundant uses and fixed
  self-contradicting pairings like "the decisive nuance". Density is now ~0.7 per case, against
  2.7 per affected case before.
- **Copy edit**: 100 bare `US` → `U.S.`; 16 UK spellings corrected in body prose, with 7 left
  alone inside references, titles and quotations (the checker now excludes those spans).
- **Decomposition claims**: swept corpus-wide including `sections`, not just `le-insight`. Five
  hits, all false positives — pedagogy prompts ("what does the comparison reveal that neither
  division could see alone?") and validation-layer requirements. **Zero real claims remain.**

### Weakness scan — no demotion candidates, but one hole to watch

Scored all 191 on few references, short body, weak or unset evidence source, and a rendered tier
flag. Distribution: **128 cases at 0, 52 at 1, 11 at 2, none at 3 or above.** Only one case has
three or fewer references; none has a body under 60% of the median.

The eleven at 2 score there by pairing a journalism or practitioner source with a rendered
evidence-tier flag — which is the flag system working, not weakness. **Nothing is weak enough to
demote.**

**The hole to watch if that changes.** Induced cluster 4 (frontline authority, non-punitive
reporting, team-coordination redesign) holds **exactly ten cases** — 19, 38, 40, 117, 118, 119,
152, 155, 176, 177 — and `competencies.md` retains a top-level cluster only at ten or more.
Demoting any one of them drops the cluster below the framework's own induction rule. Six of the
ten are in the printed volume, so the exposure is real. Every other cluster has headroom: 2 has
43, 5 has 32, 3 has 29, 1 has 22, 8 has 21, 7 has 18, 6 has 15.


---

## 8. Deeper scrub of the 143 — August 2026

The rule-based pass over the complete-edition cases was run at a lower grade of attention than
the printed volume's hand-authored one. This pass went back over it properly, and the first thing
it found was damage the rule-based pass had caused.

### Damage from the rule-based de-tic — 12 sites, repaired

The substitution rules were applied with `re.IGNORECASE` against fixed-case replacements, and
several rewrote a phrase that a relative clause depended on. Two failure modes:

- **Lowercased sentence and block openings** (9 sites): Case 75 read "…across both mathematics and
  history. the hedges that matter are explicit"; Cases 65, 118, 123, 147, 151, 182 ×2 and 192
  opened a content block with a lowercase word.
- **Broken grammar** (3 sites): Case 37 read "the hedge that matters the Haibe-Kains comment
  delivers is that…", and Case 115 read "it carries the hedges that matter **that** GAO and DOT
  Inspector General reviews have repeatedly documented."

Repaired by restoring `load-bearing` where it is the grammatical fit (Cases 37, 115, 192) and
capitalising the rest. The printed volume was unaffected — it was rewritten by hand.

### Consistency battery, run on the 143 for the first time

Previously only the 48 printed cases had been through it.

| Check | Result |
|---|---|
| `lens-anchor` domains vs the domains named in `lens-approach` | **1 mismatch — Case 38** |
| LEN courses cited in prose but missing from `courses` | 0 |
| `leo-anchor` vs LEOs cited in prose | 0 |
| Mode-code and anchor-format validity | 0 |
| Within-case numeric conflicts | 38 flagged, **all false positives** |

**Case 38 (iPLEDGE) carried `lens-anchor: "D5/PT5"` while its own `lens-approach` says "LENS
D3/PT5" and teaches Domain 3 and Domain 4, with `leo-anchor: "LEO-4, LEO-3"` agreeing.** The
field was wrong against both the prose and the LEO anchor; corrected to `D3/PT5` to match what
the case says about itself. A dual `D3+D4/PT5` would also be defensible, since the prose teaches
both domains — editor's call.

The 38 numeric flags are all distinct entities sharing a noun: the IOM's 44,000–98,000 against
Makary's 250,000, the 80-hour week against the 16-hour first-year shift, Phase 1 against Phase 2
evaluations, separate dates for separate reports. None is an internal contradiction.

### Copy edit and fact check

- 12 UK spellings corrected in body prose (Cases 18, 34, 87, 170, 195 among them). Left alone
  after checking: Case 42's "professional judgement" sits inside a reference annotation
  paraphrasing Australian board guidance; Case 91's "behaviours" are the ODI ROMA framework's own
  terms; Case 78's "however low" is "no matter how low", not the banned discourse marker.
- **Case 51 (Atlanta Public Schools) — verified against the record and tightened.** The `impact`
  line is exactly right: 178 educators named, 38 of them principals, 35 indicted, 11 convicted,
  cheating found in 44 schools. The body rounded the same figure to "Around 180 educators were
  implicated"; now states the documented 178.
- Junction scan across every changed file: 0 doubled words, 0 severed sentences, 0 doubled
  adjectives.

### Where the two editions now stand

`load-bearing` sits at 11 sites in the printed volume and 11 in the complete-edition cases —
kept, in both, only where the structural metaphor is doing real work. `decisive` runs at roughly
0.66 uses per complete-edition case, which is ordinary usage rather than a tic.

---

# 9. Consolidated open items — August 2026

Everything below is awaiting an editor decision or is queued work. Nothing here is a defect left
unfixed; each is either a judgement that is not mine to make or an addition outside the scope of the
pass that found it. Grouped by what kind of decision it needs.

## 9.1 Anchor decisions — four of these change a printed connection figure

| Case | Question | Recommendation |
|---|---|---|
| **166 TMI** | Metadata read `3.1 / D3/PT4 / LEO-3` against a `lens-approach` stating 6.1, D5/PT4 *Navigating Sociotechnical Constraints*, LEO-5. `competencies.md` lists 166 under 6.1 and not 3.1, and its pairing partner 175 (INPO) carries 6.1 / D5/PT4 / LEO-5. **Reconciled to 6.1 / D5/PT4 / LEO-5, LEO-1.** | Keep — unless the D3 was a deliberate re-anchor rather than v2.1 remap collateral, in which case **this is the one change to reverse.** It alters the printed figure. |
| **74 Zhang/Scardamalia** | `induced-anchor: 2.2` is *protecting the measurement from gaming* — wrong subject for a knowledge-building case. But metadata and prose agree, so nothing contradicts. **Not changed.** | 2.3 |
| **127 Military fratricide** | `induced-anchor` moved 1.3 → 3.3 (recorded in `competencies.md`). `lens-anchor` stays D1/PT1. | If 3.3 stands, D3/LEO-3 may be the matching LENS pair, as for Case 130. Editor's call. |
| **122 Singapore Airlines** | Case carries `induced 1.4`; `competencies.md` lists it under 4.3 (authority gradient). 4.3 fits the narrative *worse* than the current anchor. **Not changed** — recorded rather than making the printed anchor contradict the case. | Leave, or fix `competencies.md`. |
| **92 Norway** | `induced 5.4` (change-control and disclosure). Case 82 was moved 5.4 → 5.1 on the same reasoning, but 92's own `lens-approach` explicitly defends the change-control reading. **Not changed.** | Editor's call whether the national-commission case belongs at 5.1. |
| **153 Equifax** | `leo-anchor: LEO-2` against `lens-anchor: D5/PT3`; nothing in the prose justifies LEO-2. **35 corpus cases carry LEO codes that differ from their D-number**, so this is convention territory, not a defect. | Decide the convention once, corpus-wide. |
| **198 BRAIN** | `lens-approach` claims a Domain 4 use that neither `lens-anchor` (D5+D1/PT4) nor `leo-anchor` carries. | Anchoring decision, not a factual error. |

**`competencies.md` bookkeeping:** Case 36 is filed under 8.4 while the case carries `induced 2.1`,
and it appears under no 2.x listing. **Case 37 is not filed anywhere.** Neither was changed — a
unilateral framework edit is not something a citation pass should make.

## 9.2 The one editorial addition I would recommend

**Repeat-slot additions, five cases.** A marker whose claim needs a second slot of a source the tuple
already carries once. The house convention solves this exactly — the same source in several slots,
each with a claim-specific annotation, as Case 1 does with Leveson & Turner across refs 1–3. It is an
*addition*, not a reorder, so no agent made one under the no-add rule.

- **48 Johnson** (standing COI) — one Johnson & Jabbari entry plus three cross-reference pointers.
  Marker 1 correctly holds Johnson, so marker 2 — the study's *headline findings* — necessarily lands
  on a pointer. No permutation fixes this.
- **20 TREWS** — the RCT-pending hedge names "the Adams et al. paper" in prose with no Adams slot left.
- **5 Epic Sepsis** — markers 1 and 2 both want Wong; marker 1 now carries Habib for the framing claim.
- **147 Takata** — marker 5's capability-gap claim has no positional source.
- **138 MIL-STD-1472H** — markers 2, 3 and 4 legitimately need the same standard.

## 9.3 Claims with no supporting reference anywhere

These have no positional signature and no automated gate can see them. Each needs a source added or
the claim scoped back — neither is an ordering fix.

- **199 Waymo, marker 1** — the 2022 California ruling permitting Waymo to withhold trade-secret
  safety detail from the DMV public-records process. No source in the tuple, none verifiable. Because
  markers and refs are both six, correcting markers 2–6 forces an unrelated Cruise entry into
  position 1. **A `// NAKED CLAIM` comment marks it in `chapters/ch7b.typ`** — do not "fix" it by
  re-rotating.
- **179 JHU dashboard, marker 3** — the CRC's racial-data-transparency accounting, positionally citing
  the Hub's *closure announcement*. Structural cause: **the case's closing section carries no `#cn()`
  marker at all**, so both closure sources have nowhere to attach and one drifted onto marker 3.
- **95 PBIS** — the "more than 25,000 schools" count and "Sugai and Horner's 2020 synthesis" are
  asserted in prose with nothing in the tuple.
- **144 Kodak, marker 5** — the Fujifilm diversification contrast.
- **77, marker 4** — the CIRCUIT-pair claim has no CIRCUIT reference in the tuple.
- **161, marker 3** — "the most influential investigation in the agency's history" is an editorial
  judgement with no dedicated source.

## 9.4 Structural, and would renumber a case

- **124 USS Fitzgerald / McCain** — the McCain fatigue finding ("fourteen bridge watchstanders
  averaging just over 4.9 hours") **carries no marker**, while reference 11 — an unbound NTSB entry on
  exactly those sleep hours — sits past the last marker. Adding a marker renumbers the case.
- **102 AF447** — 78 FR 67800 is unbound and is the co-target of marker 7's FAA clause; the positional
  reference covers the EASA/ICAO two-thirds of the same sentence. No reordering improves it.

## 9.5 Verification items surfaced but not resolved

- **95** — prose names *McIntosh, Mercer, Nese & Ghemraoui (2016)*; the reference reads *McIntosh,
  Mercer, Nese, Strickland-Cohen & Hoselton (2016)*. Author-list mismatch.
- **55** — Engler's own arithmetic is off: 12.1 → 14.8 is 22.3%, not the 23.3% printed. The case
  reproduces the source faithfully, so it was **not** altered. A note may be warranted.
- **143** — the case uses Knight's realized pre-tax $440M over the SEC's $460M; the divergence is
  disclosed in the reference.
- **84** — Evidence for ESSA rates Cognitive Tutor "Strong" on a +0.04 weighted mean. The registry's
  inconsistency, faithfully reproduced.
- **146** — the timeline diagram's cascade timestamp and "operator unaware 51 min" label are both
  defensible readings of the Task Force chronology; left, flagged.
- **157 and 175** carry no `evidence-source`. Consistent with the 57 v1 cases left unflagged for
  editor judgement (CLAUDE.md task 1), so absence is defensible, not a defect.

## 9.6 Standing COI and framing decisions, still open

- COI wording for **Cases 48 and 68**, whose institutional basis moved.
- The **"cultural half" framing** across Cases 19, 24, 137, 177 — twelve passages, five cases.
- **`dgm-teamstepps`** left unmarked in the valence pass: structurally a pathway figure like
  `dgm-17year` (neutral), though the worklist classed it favourable.

## 9.7 Queued work, not decisions

| Item | Size |
|---|---|
| `verification-log.md` human content-read column | 205 rows still `auto-prefill` |
| `// VERIFY:` bibliographic re-confirmations | 19, in `ch2a` ×8, `ch2b` ×4, `ch6a` ×3, `ch6b` ×4 |
| Binding `#cn()` markers by **name** rather than position | Would make the citation contract unbreakable rather than merely checked — the alignment pass and its gate both exist because position is fragile |
| Residual `check-cite-order.py` flags | 33 of 191 at score ≥3, each accounted for case by case in the batch reports: repeat-convention artifacts, single-copy conflicts, and proper-noun bleed |
