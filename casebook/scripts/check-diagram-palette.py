#!/usr/bin/env python3
"""Figure-palette guard.

Two ways the diagram palette degrades, both invisible until the book is printed:

1. **Grayscale collision.** The print interior flattens to DeviceGray. Two tokens
   that appear in the same figure and sit close on the gray ramp lose the edge
   between them — a filled shape against a rule with nothing to separate it. The
   August 2026 audit found accent-soft and rule 9 levels apart in 15 figures and
   dim and rule 15 apart in 19. Minimum separation for co-occurring tokens: 22.

2. **Hard-coded colour.** A literal rgb("#…") bypasses the grayscale switch
   entirely, so it prints at whatever luma it happens to have.

Usage:  python3 scripts/check-diagram-palette.py      (exit 1 on any violation)
"""
import re, sys, os

MIN_SEP = 22
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
theme = open(os.path.join(ROOT, "lib", "theme.typ")).read()
diags = open(os.path.join(ROOT, "lib", "diagrams.typ")).read()

gray = {}
for m in re.finditer(r'#let _dgm-([a-z-]+)-g\s*=\s*rgb\("#([0-9A-Fa-f]{6})"\)', theme):
    gray[m.group(1)] = int(m.group(2)[0:2], 16)
if not gray:
    print("could not read the grayscale ramp from lib/theme.typ"); sys.exit(1)

names = [(m.start(), m.group(1)) for m in re.finditer(r'^#let (dgm-[a-z0-9-]+)', diags, re.M)]
fail = 0

# 1. hard-coded colour literals
lits = re.findall(r'rgb\("#[0-9A-Fa-f]{3,8}"\)', diags)
if lits:
    fail += 1
    print(f"✗ {len(lits)} hard-coded colour literal(s) in diagrams.typ — these bypass the grayscale switch")

# 2. co-occurring tokens too close on the ramp
seen = {}
for i, (st, n) in enumerate(names):
    end = names[i + 1][0] if i + 1 < len(names) else len(diags)
    body = diags[st:end]
    used = sorted({t for t in gray if re.search(r'\bdgm-' + re.escape(t) + r'\b', body)})
    for a in range(len(used)):
        for b in range(a + 1, len(used)):
            x, y = used[a], used[b]
            d = abs(gray[x] - gray[y])
            if d < MIN_SEP:
                seen.setdefault((x, y, d), []).append(n)
for (x, y, d), ds in sorted(seen.items(), key=lambda kv: kv[0][2]):
    fail += 1
    print(f"✗ {x} ({gray[x]}) and {y} ({gray[y]}) are {d} apart — under {MIN_SEP} — and co-occur in "
          f"{len(ds)} figure(s): {', '.join(ds[:6])}{' …' if len(ds) > 6 else ''}")

if fail:
    print(f"\n{fail} palette violation(s). Respace the ramp in lib/theme.typ, or stop using the pair together.")
    sys.exit(1)
print(f"figure palette: {len(names)} diagrams, {len(gray)} tokens, no collisions under {MIN_SEP} gray levels, no hard-coded literals. OK")
