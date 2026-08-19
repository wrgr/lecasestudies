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
