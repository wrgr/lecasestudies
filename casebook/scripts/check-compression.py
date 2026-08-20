#!/usr/bin/env python3
"""Compression-fidelity check.

The casebook's compression fields (`impact`, `le-insight`) are written alongside the
narrative rather than derived from it, so nothing forces them to agree with the body.
Every confirmed defect of the August 2026 mechanism pass was of that shape.

`beats` and `quote` do not drift, because they reuse the body's own sentences — they
are derived. This check applies the cheapest mechanical proxy for the same discipline:

    every quantity asserted in `impact` or `le-insight` must have a counterpart
    in `summary` or `sections`.

It is a *lead* detector, not a verdict. A summary may legitimately say "67%" where the
body says "two-thirds"; the common word-forms are normalised, but not all of them.
Triage the output — do not treat a hit as a defect.

Usage:
    python3 scripts/check-compression.py                 report all leads
    python3 scripts/check-compression.py --write-baseline  record today's leads as accepted
    python3 scripts/check-compression.py --gate          fail only on leads NOT in the baseline
    python3 scripts/check-compression.py --phrases       flag retracted claims left in compression fields
    python3 scripts/check-compression.py --dangling      prose citing a block or flag the case does not set

`--phrases` is the second detector, added after the August 2026 spot check found the
inverse defect: the fact-check sweep corrected the narrative bodies of Cases 19 and 155
and left the retracted claim standing in the fields around them, so the case argued
against itself. It greps the whole compression set for phrasings the sweep retired. Like
the quantity check it produces leads, not verdicts — "stop the line" is correct prose in
a case about stopping a line.

`--gate` is the build mode. The existing leads are recorded in compression-baseline.txt
and do not block; a case that starts drifting after that does. That way the check
prevents regression without holding the build hostage to the backlog.
"""
import re, sys, glob, os

WORDNUM = {
    "two dozen":"24", "dozen":"12", "two-thirds":"67", "two thirds":"67",
    "one-third":"33", "a third":"33", "one third":"33",
    "half a million":"500000", "half a billion":"500000000",
    "ten":"10","eleven":"11","twelve":"12","thirteen":"13","fourteen":"14","fifteen":"15",
    "sixteen":"16","seventeen":"17","eighteen":"18","nineteen":"19","twenty":"20",
    "thirty":"30","forty":"40","fifty":"50","sixty":"60","seventy":"70","eighty":"80",
    "ninety":"90","hundred":"100","thousand":"1000","million":"1000000","billion":"1000000000",
}
SCALE = {"k":1e3,"m":1e6,"mn":1e6,"million":1e6,"bn":1e9,"b":1e9,"billion":1e9,"t":1e12,"tn":1e12,"trillion":1e12}
# identifiers that look like quantities but are not
STRIP = [
    # case cross-references, including lists: "Cases 55 and 57", "68 / 78 (CIRCUIT)"
    r'Cases?\s+\d+(\s*(?:,|and|/|&)\s*\d+)*',
    r'\b\d+\s*/\s*\d+\s*\((?:CIRCUIT|[A-Z]{2,})\)',
    # document, docket and identifier numbers
    r'GAO-[\d-]+', r'\d+\s*F\.\s*Supp\.\s*\d*d?\s*\d+', r'AAR-[\d/]+', r'NTSB[/\w-]*',
    r'PMC\d+', r'doi:\S+', r'§+\s*[\d.()a-z]+', r'\d{4}-\d+', r'TDC-[\d-]+',
    r'LEO-\d', r'D\d\+?D?\d?/PT\d', r'\bV-\d+\b', r'\bB-\d+\b', r'\b[A-Z]{2,}-\d+\b',
    # year ranges written short: "2011–15"
    r'\b(?:19|20)\d\d\s*[–—-]\s*\d{2}\b',
    # vague magnitudes are not quantities: "hundreds of millions", "thousands of"
    r'\b(?:several|many|a few|some)?\s*(?:hundreds|thousands|millions|billions)\s+of\b',
]

def quantities(s):
    for p in STRIP: s = re.sub(p, ' ', s)
    s = s.lower()
    s = s.replace(",", "")
    # scaled numerals -> absolute, BEFORE word forms become digits: otherwise
    # "700 million" turns into "700 1000000" and never matches an impact's "$700M"
    scale_re = r'\b(\d+(?:\.\d+)?)\s*(' + "|".join(SCALE) + r')\b'
    s = re.sub(scale_re, lambda m: str(int(float(m.group(1)) * SCALE[m.group(2)])), s)
    # word forms -> digits, on word boundaries so "hundreds" does not become "100s"
    for w, d in sorted(WORDNUM.items(), key=lambda kv: -len(kv[0])):
        s = re.sub(r'\b' + re.escape(w) + r'\b', d, s)
    # a word-scale that followed a spelled-out numeral: "seven million" -> "7 1000000"
    s = re.sub(r'\b(\d+(?:\.\d+)?)\s+(1000|1000000|1000000000)\b',
               lambda m: str(int(float(m.group(1)) * int(m.group(2)))), s)
    out = set()
    for m in re.finditer(r'\d+(?:\.\d+)?', s):
        v = m.group(0)
        if v in set("123456789"): continue          # ordinals / small counts: too noisy
        if re.match(r'^(18|19|20)\d\d$', v): continue  # years
        out.add(v)
    return out

def cases(text):
    lines = text.split("\n")
    for i, l in enumerate(lines):
        if not l.startswith("#case("): continue
        depth = 0; started = False
        for j in range(i, len(lines)):
            for ch in lines[j]:
                if ch == "(": depth += 1; started = True
                elif ch == ")": depth -= 1
            if started and depth == 0:
                yield "\n".join(lines[i:j+1]); break

def field(t, name, block=False):
    m = (re.search(name + r':\s*\[(.*?)\n  \],', t, re.S) if block
         else re.search(name + r':\s*"((?:[^"\\]|\\.)*)"', t, re.S))
    return m.group(1) if m else ""

BASELINE = "compression-baseline.txt"

# Claims the August 2026 fact-check sweep retracted in the body. Each was found still
# asserted in a compression field after the body had been corrected.
RETRACTED = [
    (r'\bstop the line\b',            "andon: the pull summons; the stop is the escalation"),
    (r'\binseparable\b',              "paired-authority: the trials do not decompose the bundle"),
    (r'\birreducible\b',              "paired-authority: ditto"),
    (r'\bneither worked without\b',   "paired-authority: ditto"),
    (r'\btoo afraid\b',               "andon: the copies lacked the funded response, not the nerve"),
    (r'\bthe empowerment was not\b',  "andon: ditto"),
    (r'\bcultural half\b',            "unfalsifiable; name the fundable conditions instead"),
    (r'\bis the variable\b',          "no study isolates a single variable in these bundles"),
    (r'\bwithin a minute\b',          "response-time figure with no source"),
    (r'\bburned up\b',                "MCO: destroyed in the atmosphere or thrown to heliocentric orbit"),
    (r'not independent academic evaluation', "check the source: peer review removes the tier claim"),
    (r'\bneither half\b',              "paired-authority: the record does not decompose the bundle"),
    (r'\beither (?:half )?alone fails\b', "paired-authority: untested counterfactual"),
    (r'because it was \*?paired\*?',   "paired-authority: asserts the pairing carried the result"),
]

def compression_regions(blk):
    """The fields that restate the body without being derived from it."""
    def blk_re(p):
        m = re.search(p, blk, re.S); return m.group(1) if m else ""
    return {
        "impact":         field(blk, "impact"),
        "summary":        field(blk, "summary", True),
        "le-insight":     field(blk, "le-insight", True),
        "lens-approach":  field(blk, "lens-approach", True),
        "beats":          blk_re(r'beats:\s*\((.*?)\n  \),'),
        "quote":          blk_re(r'quote:\s*\[(.*?)\],\n\s*quote-source'),
        "reflection":     blk_re(r'reflection-list:\s*\((.*?)\n  \),'),
        "approaches":     blk_re(r'approaches:\s*\((.*?)\n  \),'),
    }

def dangling_mode(d):
    """Prose that references a block or flag the case does not actually set.

    Removing an `evidence-flag` leaves any sentence promising its standing
    "future validation ongoing" render asserting something that no longer
    happens. A phrase grep cannot see that; this check pairs each reference
    with the presence of the field it names.
    """
    root = os.path.dirname(os.path.abspath(d)) or "."
    quarantined = set(re.findall(r'"([a-z0-9-]+)"',
                                 open(os.path.join(root, "lib", "quarantine.typ")).read()))
    REFS = [
        (re.compile(r'(evidence-tier flag|tier flag|flag (?:is )?rendered|rendered under the (?:case )?title|future validation ongoing)', re.I), "evidence-flag"),
        (re.compile(r'(disclosure (?:block|is rendered)|COI (?:is )?render)', re.I), "coi"),
        (re.compile(r'competing[- ]readings', re.I), "competing-readings"),
        (re.compile(r'what this case does not show', re.I), "scope-limit"),
    ]
    hits = 0; total = 0
    for f in sorted(glob.glob(os.path.join(d, "*.typ"))):
        for blk in cases(open(f).read()):
            n = re.search(r'number:\s*(\d+)', blk)
            slug = re.search(r'slug:\s*"([^"]+)"', blk)
            if not n or (slug and slug.group(1) in quarantined): continue
            total += 1
            # strip the metadata lines so only prose references remain
            prose = re.sub(r'^\s*(evidence-flag|coi|competing-readings|scope-limit|evidence-source):[^\n]*',
                           '', blk, flags=re.M)
            prose = re.sub(r'\s+', ' ', prose)
            for rx, field in REFS:
                m = rx.search(prose)
                if not m: continue
                if re.search(r'^\s*' + field + r':', blk, re.M): continue
                hits += 1
                print(f"  ✗ Case {n.group(1):>3} {slug.group(1)[:34]:36s} prose cites {field}, field absent")
                print(f"        {m.group(0)!r} — …{prose[max(0,m.start()-70):m.end()+70].strip()}…")
    print(f"\n{hits} dangling reference(s) across {total} active cases.")
    print("A reference to another case's flag is a false positive; check before editing.")
    return 0

def phrases_mode(d):
    root = os.path.dirname(os.path.abspath(d)) or "."
    quarantined = set(re.findall(r'"([a-z0-9-]+)"',
                                 open(os.path.join(root, "lib", "quarantine.typ")).read()))
    # Front matter states the book's claims at book level and is a compression
    # surface like any other: the "pair is irreducible" line outlived the case
    # corrections that retracted it.
    for fm in sorted(glob.glob(os.path.join(root, "frontmatter", "*.typ"))):
        txt = open(fm).read()
        for pat, note in RETRACTED:
            if re.search(pat, txt, re.I):
                print(f"  ~ {os.path.relpath(fm, root):<52s}")
                print(f"        {pat.replace(chr(92)+'b',''):<38s} {note}")
    hits = 0; total = 0
    for f in sorted(glob.glob(os.path.join(d, "*.typ"))):
        for blk in cases(open(f).read()):
            n = re.search(r'number:\s*(\d+)', blk)
            slug = re.search(r'slug:\s*"([^"]+)"', blk)
            if not n or (slug and slug.group(1) in quarantined): continue
            total += 1
            found = []
            for fname, txt in compression_regions(blk).items():
                for pat, note in RETRACTED:
                    if re.search(pat, txt, re.I):
                        found.append((fname, pat.replace(chr(92)+"b", ""), note))
            if found:
                hits += 1
                print(f"  ~ Case {n.group(1):>3} {slug.group(1)[:38]:40s}")
                for fname, pat, note in found:
                    print(f"        {fname:<14s} {pat:<38s} {note}")
    print(f"\n{hits} of {total} cases carry a retracted phrasing in a compression field.")
    print("Leads for triage, not defects: the same words can be correct prose elsewhere.")
    return 0

def diagram_strings(root):
    """Human-facing text of each named diagram, keyed by dgm-name.

    A diagram is a compression of its case in exactly the sense impact and
    le-insight are: a figure on the page that nothing reconciles against the
    prose. Colour literals and font names are stripped so only claims remain.
    """
    p = os.path.join(root, "lib", "diagrams.typ")
    if not os.path.exists(p): return {}
    src = open(p).read()
    names = [(m.start(), m.group(1)) for m in re.finditer(r'^#let (dgm-[a-z0-9-]+)', src, re.M)]
    out = {}
    for i, (s, n) in enumerate(names):
        e = names[i + 1][0] if i + 1 < len(names) else len(src)
        lits = [l for l in re.findall(r'"([^"]{1,90})"', src[s:e])
                if not re.match(r'^#[0-9A-Fa-f]{3,8}$', l)
                and l not in ("DM Sans", "Instrument Serif", "EB Garamond")]
        out[n] = " ".join(lits)
    return out

def load_baseline(root):
    p = os.path.join(root, BASELINE)
    if not os.path.exists(p): return set()
    return {l.split()[0] for l in open(p) if l.strip() and not l.startswith("#")}

def main(d="chapters", mode="report"):
    hits = 0; total = 0
    root = os.path.dirname(os.path.abspath(d)) or "."
    baseline = load_baseline(root) if mode != "write" else set()
    found = []
    dgms = diagram_strings(root)
    quarantined = set(re.findall(r'"([a-z0-9-]+)"',
                                 open(os.path.join(os.path.dirname(d) or ".",
                                                   "lib", "quarantine.typ")).read()))
    for f in sorted(glob.glob(os.path.join(d, "*.typ"))):
        for blk in cases(open(f).read()):
            n = re.search(r'number:\s*(\d+)', blk)
            slug = re.search(r'slug:\s*"([^"]+)"', blk)
            if not n or (slug and slug.group(1) in quarantined): continue
            total += 1
            body = " ".join([
                field(blk, "summary", True),
                " ".join(re.findall(r'sections:\s*\((.*?)\n  \),', blk, re.S)),
                " ".join(re.findall(r'beats:\s*\((.*?)\n  \),', blk, re.S)),
                " ".join(re.findall(r'diagram:\s*(.*?)\n  kind:', blk, re.S)),
                " ".join(re.findall(r'references:\s*\((.*?)\n  \),', blk, re.S)),
            ])
            bn = quantities(body)
            oi = sorted(quantities(field(blk, "impact")) - bn)
            ol = sorted(quantities(field(blk, "le-insight", True)) - bn)
            dref = re.search(r'dgm\.(dgm-[a-z0-9-]+)', blk)
            od = sorted(quantities(dgms.get(dref.group(1), "")) - bn) if dref else []
            if oi or ol or od:
                hits += 1
                bits = []
                if oi: bits.append("impact " + ",".join(oi))
                if ol: bits.append("le-insight " + ",".join(ol))
                if od: bits.append(dref.group(1) + " " + ",".join(od))
                num = n.group(1)
                found.append((num, slug.group(1), " | ".join(bits)))
                if mode != "gate" or num not in baseline:
                    mark = "✗" if (mode == "gate" and num not in baseline) else "~"
                    print(f"  {mark} Case {num:>3} {slug.group(1)[:38]:40s} {' | '.join(bits)}")

    if mode == "write":
        with open(os.path.join(root, BASELINE), "w") as fh:
            fh.write("# Compression-fidelity baseline — accepted leads as of this run.\n"
                     "# A quantity in impact/le-insight with no counterpart in the body.\n"
                     "# These are triaged leads, not accepted defects; the gate fails only\n"
                     "# on cases that are NOT listed here, so new drift is caught.\n")
            for num, slug, bits in found:
                fh.write(f"{num}\t{slug}\t{bits}\n")
        print(f"\nwrote {len(found)} leads to {BASELINE}")
        return 0

    if mode == "gate":
        new = [f for f in found if f[0] not in baseline]
        if new:
            print(f"\n{len(new)} case(s) drifted since the baseline. A quantity in "
                  f"impact/le-insight has no counterpart in the body.")
            print("Fix the field, or re-baseline deliberately with --write-baseline.")
            return 1
        print(f"compression fidelity: {len(found)} known leads, 0 new. OK")
        return 0

    print(f"\n{hits} of {total} cases carry a quantity in a compression field with no "
          f"counterpart in the body.")
    print("Leads for triage, not defects. See the module docstring.")
    return 0

if __name__ == "__main__":
    args = sys.argv[1:]
    mode = ("write" if "--write-baseline" in args
            else "gate" if "--gate" in args
            else "phrases" if "--phrases" in args
            else "dangling" if "--dangling" in args else "report")
    pos = [a for a in args if not a.startswith("--")]
    d = pos[0] if pos else "chapters"
    sys.exit(phrases_mode(d) if mode == "phrases"
             else dangling_mode(d) if mode == "dangling"
             else main(d, mode))
