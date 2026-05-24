#!/usr/bin/env bash
# Structural + citation-integrity check for converted (4-page) cases.
#
# Uses `typst query` to read the invisible <cmeta> probes that lib/case.typ
# emits for every case built with `kind != none`, and verifies, per case:
#   • marker count (#cn()) == reference-list length   (citation parity)
#   • the case starts on a verso (even) page
#   • the LE Lens lands exactly 3 pages after the start (a 4-page unit)
#   • the reference list begins on page 3 of the unit
#
# Legacy 2-page cases emit no probe and are ignored, so this passes
# cleanly during incremental rollout. Exit non-zero on any failure.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "→ Querying case metadata (mode=print)..."
typst query --font-path fonts --input mode=print book.typ '<cmeta>' --field value > build/_cmeta.json

python3 - "$ROOT/build/_cmeta.json" <<'PY'
import json, sys
data = json.load(open(sys.argv[1]))

cases = {}
for m in data:
    cases.setdefault(m["n"], {})[m["role"]] = m

fails = 0
converted = 0
for n in sorted(cases):
    c = cases[n]
    start = c.get("start"); narr = c.get("narr-end"); lens = c.get("lens")
    if not (start and narr and lens):
        print(f"  ✗ Case {n}: incomplete probe set"); fails += 1; continue
    converted += 1
    msgs = []
    if narr["markers"] != narr["refs"]:
        msgs.append(f"marker/ref mismatch ({narr['markers']} markers vs {narr['refs']} refs)")
    if start["page"] % 2 != 0:
        msgs.append(f"starts on recto (page {start['page']})")
    span = lens["page"] - start["page"]
    if span != 3:
        msgs.append(f"not a 4-page unit (lens is {span} pages after start)")
    if narr["page"] - start["page"] != 2:
        msgs.append(f"references begin on unit page {narr['page'] - start['page'] + 1}, not 3")
    if msgs:
        print(f"  ✗ Case {n}: " + "; ".join(msgs)); fails += 1
    else:
        print(f"  ✓ Case {n}: {narr['refs']} refs, 4 pages, verso start")

print(f"\n{converted} converted case(s) checked, {fails} failure(s).")
sys.exit(1 if fails else 0)
PY

rm -f build/_cmeta.json
