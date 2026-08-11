# Position paper — *Capability, Not Content*

A mission-facing position paper for prospective students and supporters of the
LENS concentration. Thesis: in high-consequence systems the unit of work is
human-system **capability**, not instructional **content**, judged by
*functional output* and *system impact* — and that is a discipline people can be
trained in.

The argument is drawn entirely from material already in this repo: the five
LENS competencies (`lens_program/1_LENS_Five_Competencies.md`), the pre/post
concentration objectives (`lens_program/5_*`), the induced framework
(`casebook/competencies.md`), and the marquee cases in
`casebook/chapters/*.typ` (737 MAX, Air France 447, USS *Fitzgerald* &
*McCain*, VA wait-time scandal, Wells Fargo, Texas City, Houston EVAAS,
Keystone ICU, WHO Surgical Safety Checklist). Case facts (impact figures,
dates) were taken verbatim from the casebook source; the WHO-checklist hedge
is preserved rather than smoothed.

## Companion piece

The reflexive casebook **case study** on how the volume was built through
human-AI teaming — *The Method Is the Message* — lives with the volume it
documents, at **`casebook/ai-workflow-case-study.tex`** (alongside
`METHODOLOGY.md`). It shares this paper's preamble/palette and reads as its
companion.

## Files

- `capability-not-content.tex` — LaTeX source (single file, `article` class).
- `capability-not-content.pdf` — compiled, 6 pp.

## Build

```
latexmk -pdf capability-not-content.tex
```

Requires a TeX Live install with `lmodern`, `microtype`, `mdframed`,
`titlesec`, `enumitem`, `xcolor`, `geometry`, `hyperref`, `ragged2e`
(all in `texlive-latex-recommended` / `-extra` plus the `lmodern` package).
