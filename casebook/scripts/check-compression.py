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
SCALE = {"k":1e3,"m":1e6,"mn":1e6,"million":1e6,"bn":1e9,"b":1e9,"billion":1e9}
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
    # word forms -> digits, on word boundaries so "hundreds" does not become "100s"
    for w, d in sorted(WORDNUM.items(), key=lambda kv: -len(kv[0])):
        s = re.sub(r'\b' + re.escape(w) + r'\b', d, s)
    s = s.replace(",", "")
    # scaled numerals -> absolute, so "7M" matches a body that says "seven million"
    s = re.sub(r'\b(\d+(?:\.\d+)?)\s*(' + "|".join(SCALE) + r')\b',
               lambda m: str(int(float(m.group(1)) * SCALE[m.group(2)])), s)
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

def load_baseline(root):
    p = os.path.join(root, BASELINE)
    if not os.path.exists(p): return set()
    return {l.split()[0] for l in open(p) if l.strip() and not l.startswith("#")}

def main(d="chapters", mode="report"):
    hits = 0; total = 0
    root = os.path.dirname(os.path.abspath(d)) or "."
    baseline = load_baseline(root) if mode != "write" else set()
    found = []
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
            if oi or ol:
                hits += 1
                bits = []
                if oi: bits.append("impact " + ",".join(oi))
                if ol: bits.append("le-insight " + ",".join(ol))
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
            else "gate" if "--gate" in args else "report")
    pos = [a for a in args if not a.startswith("--")]
    sys.exit(main(pos[0] if pos else "chapters", mode))
