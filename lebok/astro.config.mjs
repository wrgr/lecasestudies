// @ts-check
import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";

// Standalone site for a field-level Learning Engineering Body of Knowledge reader.
// It links through to lecommons.org for the shared corpus; it does not duplicate it,
// and it is NOT the LENS program site.
//
// Deployment target decides `site` + `base`:
//   - Custom domain (e.g. https://lebok.org)  -> site: that URL, base: "/", add public/CNAME.
//   - GitHub project page (wrgr.github.io/lebok) -> site: "https://wrgr.github.io", base: "/lebok/".
// Every internal link routes through `import.meta.env.BASE_URL`, so switching between the two
// is a config-only change. Placeholder below assumes a future custom domain; update on first deploy.
export default defineConfig({
  site: "https://lebok.example.org",
  base: "/",
  integrations: [mdx()],
});
