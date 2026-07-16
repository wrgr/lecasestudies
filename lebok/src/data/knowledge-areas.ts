// The knowledge-area spine the site organizes journeys around.
//
// Provenance: this interim taxonomy is the Learning Engineering Competency
// Framework (LECF) domain synthesis prepared for the IEEE standards pathway,
// used here as the field-level structure because it is the closest documented
// map we hold. It is NOT the LENS program's five competencies. Before launch,
// reconcile these ids/titles against the canonical IEEE ICICLE Learning
// Engineering Body of Knowledge areas at lebok.wiki and adjust as needed; the
// journey MDX files reference areas by `id`, so renaming a title is safe but
// changing an `id` means updating the journeys that cite it.

export interface KnowledgeArea {
  /** Stable slug used by journeys to declare which areas a stop touches. */
  id: string;
  /** Display title. */
  title: string;
  /** One-line description of what the area covers. */
  blurb: string;
}

/** Field-level knowledge areas, in canonical order. */
export const KNOWLEDGE_AREAS: KnowledgeArea[] = [
  {
    id: "learning-sciences",
    title: "Learning Sciences",
    blurb: "How people come to know and do — cognition, motivation, and the evidence base for learning.",
  },
  {
    id: "human-centered-design",
    title: "Human-Centered Design",
    blurb: "Designing learning experiences around real learners, tasks, and contexts of use.",
  },
  {
    id: "engineering-systems-thinking",
    title: "Engineering & Systems Thinking",
    blurb: "Requirements, verification, and treating capability as a property of the whole system.",
  },
  {
    id: "instrumentation",
    title: "Instrumentation",
    blurb: "Capturing trustworthy data from learning and work — what to measure and how.",
  },
  {
    id: "analytics",
    title: "Analytics",
    blurb: "Turning instrumented data into models and decisions, responsibly.",
  },
  {
    id: "process-iteration",
    title: "Process & Iteration",
    blurb: "The learning-engineering process model: iterate toward better outcomes with evidence.",
  },
  {
    id: "performance-outcome-engineering",
    title: "Performance & Outcome Engineering",
    blurb: "Coupling learning to operational outcomes: gap attribution, transfer, and impact.",
  },
  {
    id: "professional-ethical-practice",
    title: "Professional, Ethical & Collaboration Practice",
    blurb: "Working across disciplines and holding ethics as a design constraint throughout.",
  },
];

/** Lookup by id; returns undefined for an unknown area so callers can flag it. */
export function areaById(id: string): KnowledgeArea | undefined {
  return KNOWLEDGE_AREAS.find((a) => a.id === id);
}
