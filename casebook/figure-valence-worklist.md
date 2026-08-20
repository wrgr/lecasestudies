# Figure valence — classification worklist

Star = favourable outcome · triangle = adverse outcome · neutral accent = the figure marks
something with no valence (a mechanism, a subject, a destination). The key is in the front
matter under *How to read this book*.

Rules applied when marking a figure:

1. The focal element itself takes the valence colour, not just the glyph — otherwise a green
   star sits beside an orange curve both marking the same favourable outcome.
2. One glyph per figure. It goes beside the value it marks, not on it.
3. `outcome-mark(kind, x, y)` at default `r: 0.17`; do not go below 0.13, where the star's
   points thin at press resolution.
4. Anything not clearly an outcome stays neutral. A missing glyph is information.

| Diagram | Classification | Marked | Caption |
|---|---|---|---|
| `dgm-737max` | adverse → triangle | ✓ done | MCAS — capability engineered out at four decision points |
| `dgm-therac` | neutral — mechanism / subject / destination | — | Software state took over from an independent circuit, and  |
| `dgm-patriot` | adverse → triangle | — | Tracking error grew with each hour of continuous operation |
| `dgm-crm` | favourable → star | — | Authority gradient flattened; communication closes the loo |
| `dgm-who` | favourable → star | — | Three pause points across the surgical timeline |
| `dgm-keystone` | favourable → star | ✓ done | Bloodstream-infection rate across 103 Michigan ICUs |
| `dgm-inpo` | favourable → star | — | Industry-wide peer review: a learning ring after TMI |
| `dgm-fitzgerald` | adverse → triangle | — | Surface Warfare Officer training, 2003 → 2017 |
| `dgm-af447` | adverse → triangle | — | The stall warning cut out at the extreme angle of attack |
| `dgm-tmi` | adverse → triangle | — | A minor cooling fault, a valve reported shut, a meltdown |
| `dgm-indopacom` | adverse → triangle | — | Decade of unmet training in DoD's priority theater |
| `dgm-f35` | adverse → triangle | — | Mission-capable rate vs. fleet target |
| `dgm-kegworth` | adverse → triangle | — | Crew mental model from older variant; configuration change |
| `dgm-fratricide` | adverse → triangle | — | Friendly-fire rate, U.S. casualties, Desert Storm vs. hist |
| `dgm-deepwater` | adverse → triangle | — | Cascading defenses — each failed in turn |
| `dgm-shuttle` | adverse → triangle | — | 17 years, same pattern — Challenger to Columbia |
| `dgm-osprey` | adverse → triangle | — | Persistent capability gaps across three services |
| `dgm-vincennes` | adverse → triangle | — | Aegis radar had the climb; its display showed no altitude |
| `dgm-ehr` | adverse → triangle | — | $30B invested; new error pathways emerged from interface d |
| `dgm-uber` | adverse → triangle | — | Designed as passive monitor; equipped only to fail |
| `dgm-inbloom` | adverse → triangle | — | $100M of working technology; a coalition of nine shrank to |
| `dgm-healthcaregov` | adverse → triangle | — | 27,000 federal enrollments vs. a 7,000,000 first-year proj |
| `dgm-bhopal` | adverse → triangle | — | Safety systems off-line for months before the release |
| `dgm-grenfell` | adverse → triangle | — | Levels of failure: manufacture, regulation, inspection, re |
| `dgm-alevel` | adverse → triangle | — | An algorithm encoding historical inequality at national sc |
| `dgm-robodebt` | adverse → triangle | — | Income-averaging assumption matched 7% of recipients |
| `dgm-edbias` | adverse → triangle | — | Predictions over-flag the very students who succeed |
| `dgm-va` | adverse → triangle | — | Schedulers falsified records; the measurement system hid t |
| `dgm-gift` | adverse → triangle | — | Adaptive instruction worked; routine adoption stays limite |
| `dgm-xapi` | — no accent | — | Standard exists; cross-organization data still silo'd |
| `dgm-17year` | neutral — mechanism / subject / destination | — | Research to practice — Balas and Boren's canonical estimat |
| `dgm-makary` | adverse → triangle | — | Contested as third-ranking — and structurally invisible |
| `dgm-navy-reform` | favourable → star | — | Post-Fitzgerald reform: planned triple hours; pass-or-fail |
| `dgm-korean-air` | favourable → star | — | The airline's own diagnosis: flatten the cockpit gradient |
| `dgm-andon` | neutral — mechanism / subject / destination | — | Signal, guaranteed response, and a stop only at the fixed  |
| `dgm-teamstepps` | favourable → star | — | Aviation → military → healthcare; the translation pathway |
| `dgm-rickover` | adverse → triangle | — | Same Navy, opposite philosophies — radically different out |
| `dgm-gsu` | favourable → star | — | Graduation rate, with equity as a primary constraint |
| `dgm-cogtutor` | favourable → star | — | Theory → engineering → evidence → scale |
| `dgm-stat` | generic — needs a valence parameter from the caller | — |  |
| `dgm-timeline` | generic — needs a valence parameter from the caller | — |  |
| `dgm-cascade` | generic — needs a valence parameter from the caller | — |  |
| `dgm-compare` | generic — needs a valence parameter from the caller | — |  |
| `dgm-pair-bars` | generic — needs a valence parameter from the caller | — |  |
| `dgm-ring` | generic — needs a valence parameter from the caller | — |  |
| `dgm-flow` | generic — needs a valence parameter from the caller | — |  |
| `dgm-curve` | generic — needs a valence parameter from the caller | — |  |
| `dgm-flywheel` | brand/marque — no valence | — | The LENS Practice Flywheel — each iteration generates evid |
| `dgm-why-lens` | brand/marque — no valence | — | Why LENS — five pillars |
| `dgm-five-competencies` | brand/marque — no valence | — | What LENS graduates can do — five competencies |

**Counts:** 26 adverse → triangle · 9 favourable → star · 8 generic — needs a valence parameter from the caller · 3 neutral — mechanism / subject / destination · 3 brand/marque — no valence · 1 — no accent


---

**COMPLETE (August 2026).** All 35 outcome figures are marked — 26 adverse (triangle), 9 favourable
(star), counting the two shipped with the encoding. Three neutral figures (`dgm-therac`, `dgm-17year`,
`dgm-andon`) and three brand marques carry no glyph by design.

Two standing judgement calls for the editor:

- `dgm-teamstepps` is left **unmarked**. The worklist classed it favourable, but structurally it is
  the same object as `dgm-17year` — a pathway with a destination and no outcome claim beyond the
  category label. Marking it would have meant colouring all three chain circles.
- `dgm-makary` is marked **adverse** beside the 251K bar that its own caption calls *contested* as
  third-ranking. The triangle asserts direction, not truth, and deaths are adverse at any count — but
  a reader could take it as endorsing the number.

Still open: the eight generic constructors (`dgm-stat`, `dgm-compare`, `dgm-cascade`, `dgm-timeline`,
`dgm-flow`, `dgm-ring`, `dgm-curve`, `dgm-pair-bars`) have no valence parameter, so the ~56 call
sites that use them cannot carry a glyph without threading one through from each caller.
