// ============================================================================
// CLOSING CASE — "The Discipline We Build Next"
// ============================================================================
// The case about LENS itself. Per editor direction, this is the closing case
// of the book — included after all v1 and v2 case content, immediately before
// the back matter, in book.typ. It always
// carries the last appearance number (the slug "discipline-we-build-next" is
// the stable identifier across renumbering). The fit audit flags it as framing
// rather than an analyzable case; its prose is kept count-agnostic so it reads
// correctly regardless of the corpus size.

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 205,
  slug: "discipline-we-build-next",
  title: "The Discipline We Build Next",
  year: "ongoing",
  domains-list: ("education", "healthcare", "defense"),
  modes-code: "TKNGHD",
  impact: "Open: the case that has not yet been written. The discipline that this casebook documents is the one practitioners now in training must build.",
  diagram: dgm.dgm-stat(
    "Open",
    "the unwritten case",
    micro: "what the practitioners reading this volume do next is what fills it in",
    caption: "The case that has not yet been written",
  ),
  kind: "frontier",
  summary: [
    The cases that precede this one are closed: the
    investigations are complete, the failures diagnosed, the interventions
    evaluated. This one is open. It belongs to the practitioners now in
    training — the students of the LDT program and the LENS specialization,
    the graduates who will take positions in healthcare, defense, education
    at scale, and the human-AI frontier, and the institutions they will
    build. The strongest evidence for the discipline is the cumulative
    record of what its absence has cost; the strongest argument for its
    possibility is the record of what its presence has produced. Capability
    engineering in 2026 sits roughly where INPO sat in 1979 or CRM in 1981
    — evidence accumulating, practitioners in training, institutional
    architecture not yet complete. What the reader does next is what fills
    in this case.
  ],
  sections: (
    // -- The Shift --
    [
      Every preceding case in this book is closed: the investigation is
      complete, the failure diagnosed or the intervention evaluated. This
      one is open. It belongs to the practitioners now in training — the
      students of the LDT program and the LENS specialization, and the
      institutions they will build across healthcare, defense, education,
      and the human-AI frontier. What distinguishes this case is not a
      verdict already reached but a verdict still to be earned, written by
      the choices its readers make once they leave the page.#cn()
    ],
    // -- What Is Emerging --
    [
      What is emerging is a discipline. The argument of this volume is that
      capability is engineerable — that training, interfaces, evidence
      systems, and institutions can be designed rather than left to chance
      — and that the work of designing them is a teachable practice with
      its own methods and growing body of knowledge. If that argument
      holds, then the gaps the preceding cases document are not the price
      of progress but the absence of work that could have been done.#cn()
    ],
    // -- The Capability Question --
    [
      The capability question this case poses is the largest one: can the
      discipline be built fast enough, and at enough scale, to close the
      gaps the preceding cases document? The strongest evidence
      for the discipline is the cumulative record of what its absence has
      cost; the strongest argument for its possibility is the record of
      what its presence has produced — and the case stays open precisely
      because that question is answered not by argument but by what the
      next generation of practitioners actually builds.#cn()
    ],
    // -- Early Evidence --
    [
      The early evidence is the success cases themselves. Capability
      engineering in 2026 sits roughly where INPO sat in 1979 or CRM in
      1981 — a discipline whose evidence is accumulating, whose
      practitioners are being trained, and whose institutional architecture
      is not yet complete. Those precedents became mature institutions
      within a generation, which is the most that can yet be claimed here:
      a comparable trajectory is plausible, but it is not given, and the
      comparison is an invitation rather than a guarantee.#cn()
    ],
    // -- Open Problems --
    [
      No specific incident sits behind this case because the work is not
      done. The institutions of capability engineering that exist today are
      insufficient to the volume of capability work the world now requires.
      What the practitioners reading this volume do next — a failure
      prevented, a success engineered, an institution built — is what fills
      in this case, and the page is left deliberately unfinished so that the
      record of the discipline's possibility can still be added to.#cn()
    ],
  ),
  beats: (
    "The closing case belongs to practitioners now in training across the program's domains",
    "A teachable discipline of engineerable capability is emerging from training, interfaces, evidence, institutions",
    "Whether the discipline can be built fast enough to close the documented gaps",
    "Capability engineering sits where INPO did in 1979 or CRM in 1981",
    "What practitioners build next; a failure prevented, success engineered, institution built",
  ),
  approaches: (
    during: (
      [Treat capability as a system parameter to be specified and engineered from the outset of any deployment, not left to chance and diagnosed only after failure.],
      [Build the evidence system as a deliverable alongside the capability, so the discipline can show what its presence produces rather than only argue for it.],
      [Design the institution that will carry the practice forward, taking INPO and CRM as precedents for how a discipline matures within a generation.],
    ),
    after: (
      [Monitor whether the discipline is in fact closing the gaps the preceding cases document, treating the open case as a standing measure of progress.],
      [Sustain the institutional architecture once built, since the precedents show maturity is reached only by carrying the work across a generation.],
      [Keep the cumulative record of cost and of possibility current, so each failure prevented or success engineered is added to the evidence the discipline rests on.],
    ),
  ),
  references: (
    [LDT / LENS program statement, Johns Hopkins School of Education — the program and its commitments.],
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_ — the discipline's methods.],
    [The preceding cases of this volume — the cumulative record of cost and of possibility.],
    [INPO (Case 175) and CRM/CAST (Case 117) — institution-building precedents (1979, 1981).],
    [IEEE ICICLE Learning Engineering Body of Knowledge (LEBoK); the introduction to this volume.],
  ),
  quote: [Capability is engineerable. The institution to engineer it has not yet been built. That is the work.],
  quote-source: "LDT / LENS program statement, Johns Hopkins School of Education",
  le-insight: [
    Every case in this book is closed. This one is open. The
    discipline LENS represents is the discipline that closes cases
    that are now open. The institutions of capability engineering
    that exist in 2026 are insufficient to the volume of capability
    work the contemporary world requires. The graduates of this
    program are the people who will build the institutions that are
    insufficient now.
  ],
  lens-approach: [
    LENS is organized to produce the practitioners who can do this
    work. The curriculum's commitments — capability as a system
    parameter, evidence as a deliverable, ethics as design,
    implementation as a thread — are the operational form of the
    argument the preceding cases evidence. Every studio
    project (LEN 10) is a small attempt at this case.
  ],
  literature-items: (
    [Goodell & Kolodner (2022)],
    [LEBoK at lebok.wiki],
    [The introduction to this volume],
  ),
  reflection-list: (
    [What is the case you are positioned to add to this dataset in the next ten years — a failure prevented, a success engineered, an institution built?],
    [If this book is read by the practitioners who will write its next case, what should that case look like?],
    [Capability engineering in 2026 is compared here to where INPO stood in 1979 — a plausible trajectory, not a guaranteed one. What would have to be true a generation from now for that comparison to hold, and what is the first institution you would build to make it so?],
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 3",),
  scale: "big",
)
