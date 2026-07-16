# Learning Engineering Body of Knowledge — guided reader

A standalone [Astro](https://astro.build) site: a curated reader over the field's
Learning Engineering Body of Knowledge. It surfaces **learning journeys** —
ordered paths through the body of knowledge for a given starting point — and a
**knowledge map** to browse by area. It links to the canonical corpus
([lecommons.org](https://lecommons.org), [lebok.wiki](https://lebok.wiki)); it
does not duplicate it, and it is **not** the LENS program site.

## Layout

- `src/pages/` — `index` (home), `journeys/` (index + `[slug]` pathway pages),
  `knowledge-map/` (browse by area), `about`
- `src/content/journeys/` — MDX collection: one file per journey. Frontmatter
  declares the audience, the ordered `stops`, and the knowledge `areas` covered;
  the MDX body is the journey's lead voice. Schema in `src/content.config.ts`.
- `src/data/knowledge-areas.ts` — the knowledge-area spine journeys anchor to.
  **Interim taxonomy** (LECF domain synthesis) — reconcile against the canonical
  LEBoK areas before launch. See the file header.
- `src/components/` — `NavBar`, `AreaCoverage` (knowledge-area coverage strip)
- `src/layouts/Base.astro` — page shell, global styles

## Develop

```sh
npm install
npm run dev      # local dev server
npm run build    # builds into dist/
```

Add a journey by dropping a new `.mdx` file in `src/content/journeys/` — no code
change needed.

## Deploy (GitHub Pages)

`.github/workflows/deploy-gh-pages.yml` builds the site and publishes `dist/` to
the `gh-pages` branch on every push to `main`. In repo **Settings → Pages**, set
the source to the `gh-pages` branch.

Set the URL in `astro.config.mjs`:

- **Custom domain** (e.g. `lebok.org`): `site: "https://lebok.org"`, `base: "/"`,
  add a `public/CNAME` file with the domain, and set the `cname:` line in the
  workflow.
- **Project page** (`<user>.github.io/lebok`): `site: "https://<user>.github.io"`,
  `base: "/lebok/"`, no CNAME. All internal links already route through
  `import.meta.env.BASE_URL`, so this is a config-only switch.

## Splitting into its own repo

This directory is a **complete, self-contained project** so it can move to its
own repo (`wrgr/lebok`) whenever you're ready:

1. Create the new repo and copy this directory's contents to its **root**
   (the `.github/workflows/` file only runs from a repo root).
2. Commit, push to `main`, enable Pages on the `gh-pages` branch.
3. Point DNS / set the custom domain per above.

While it lives here as a subfolder of `lens-concentration`, the workflow is inert
(GitHub only runs workflows at the repo root) — build and preview locally.
