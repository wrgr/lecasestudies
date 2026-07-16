// Content collection schema.
//
// `journeys` — curated paths through the field's Learning Engineering Body of
// Knowledge. Each journey is an ordered list of stops; every stop names the
// knowledge area it touches (see src/data/knowledge-areas.ts) and points onward
// to canonical field resources (lebok.wiki, lecommons.org) rather than
// duplicating them here. The MDX body is the journey's framing/lead voice.

import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "zod";

// A single onward link from a stop to a canonical field resource.
const resourceLink = z.object({
  label: z.string(),
  href: z.string().url(),
});

// One ordered stop within a journey.
const journeyStop = z.object({
  title: z.string(),
  // Knowledge-area id this stop advances (must match a KNOWLEDGE_AREAS id).
  area: z.string(),
  // Why this stop, here — the one- or two-sentence rationale shown inline.
  detail: z.string(),
  // Optional onward links to the canonical corpus (lebok.wiki, lecommons.org, etc.).
  links: z.array(resourceLink).default([]),
});

const journeySchema = z.object({
  title: z.string(),
  // ~1–2 sentence card hook shown on the journeys index.
  summary: z.string(),
  // Who this path is for, e.g. "New to learning engineering".
  audience: z.string(),
  // Knowledge-area ids this journey primarily develops — drives the coverage map.
  areas: z.array(z.string()).default([]),
  // The ordered spine of the journey.
  stops: z.array(journeyStop).min(1),
  // Index ordering + draft gating.
  order: z.number().int(),
  draft: z.boolean().default(false),
});

export const collections = {
  journeys: defineCollection({
    loader: glob({ pattern: "**/*.mdx", base: "./src/content/journeys" }),
    schema: journeySchema,
  }),
};
