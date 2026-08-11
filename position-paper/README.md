# LENS position paper + casebook case study

Two companion, mission-facing documents for prospective students and supporters
of the LENS concentration.

1. **`capability-not-content`** — *the position paper.* In high-consequence
   systems the unit of work is human-system **capability**, not instructional
   **content**, judged by *functional output* and *system impact* — and that is
   a discipline people can be trained in.
2. **`ai-workflow-case-study`** ("The Method Is the Message") — *a casebook case
   study.* How the casebook was built through **human-AI teaming**, with the
   pros, the cons, and the governance layer that made the speed safe. Reflexive:
   the volume was built the way it argues capability should be built, so its own
   making is a LENS case.

---

## 1. *Capability, Not Content* (position paper)

Thesis: in high-consequence systems the unit of work is human-system
**capability**, not instructional **content** — and that is a discipline people
can be trained in.

The argument is drawn entirely from material already in this repo: the five
LENS competencies (`lens_program/1_LENS_Five_Competencies.md`), the pre/post
concentration objectives (`lens_program/5_*`), the induced framework
(`casebook/competencies.md`), and the marquee cases in
`casebook/chapters/*.typ` (737 MAX, Air France 447, USS *Fitzgerald* &
*McCain*, VA wait-time scandal, Wells Fargo, Texas City, Houston EVAAS,
Keystone ICU, WHO Surgical Safety Checklist). Case facts (impact figures,
dates) were taken verbatim from the casebook source; the WHO-checklist hedge
is preserved rather than smoothed.

## 2. *The Method Is the Message* (casebook case study)

Subject: the human-AI workflow behind the casebook — an eight-pass discovery
sweep, parallel-subagent drafting, three-anchor tagging, mechanical format and
citation checks, and a two-pass human verification rubric. It sets AI's genuine
advantages (speed, breadth against a known bias, tireless rigor) beside its
genuine hazards (fabricated citations, confident misplacement, smoothing hedges,
bias amplification, cognitive offloading) and shows the governance move that
caught each one. Facts drawn from `casebook/METHODOLOGY.md` ("How this volume
was made"), `casebook/verification-log.md`, `casebook/AUDIT.md`, and CLAUDE.md;
the reference-validation counts (~951 checked; ~777 / ~121 / 10) and the
three human-caught misplacements (TMI, *Vincennes*, Texas City) are reported as
recorded.

## Files

- `capability-not-content.tex` / `.pdf` — the position paper, compiled, 6 pp.
- `ai-workflow-case-study.tex` / `.pdf` — the casebook case study, compiled, 6 pp.

## Build

```
latexmk -pdf capability-not-content.tex
latexmk -pdf ai-workflow-case-study.tex
```

Both share a preamble/palette. Requires a TeX Live install with `lmodern`,
`microtype`, `mdframed`, `titlesec`, `enumitem`, `xcolor`, `geometry`,
`hyperref`, `ragged2e` (all in `texlive-latex-recommended` / `-extra` plus the
`lmodern` package).
