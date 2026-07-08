#!/usr/bin/env bash
# verification-status.sh — summarize the per-case verification log.
#
# Parses casebook/verification-log.md and prints:
#   - overall progress (cases reviewed / total)
#   - per-chapter progress
#   - per-check status counts (✓ / ~ / ✗ / —)
#   - the list of open issues (rows with ✗ in any check column)
#
# A case is "reviewed" if ANY of its 7 check columns is non-empty (✓, ~, ✗, or ?).
# Run from the casebook/ directory or via `bash scripts/verification-status.sh`.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LOG="$ROOT/verification-log.md"

if [ ! -f "$LOG" ]; then
  echo "error: $LOG not found" >&2
  exit 1
fi

# Chapter ranges (case-number ranges). Update if the chapter structure changes.
declare -A CHAPTER_LO=( [1A]=1   [1B]=11  [2A]=45  [2B]=65  [3A]=96  [3B]=114 [4A]=124 [4B]=136 [5A]=143 [5B]=154 [6A]=158 [6B]=170 [7A]=175 [7B]=189 [CLO]=200 )
declare -A CHAPTER_HI=( [1A]=10  [1B]=44  [2A]=64  [2B]=95  [3A]=113 [3B]=123 [4A]=135 [4B]=142 [5A]=153 [5B]=157 [6A]=169 [6B]=174 [7A]=188 [7B]=199 [CLO]=200 )
declare -A CHAPTER_NAME=(
  [1A]="Healthcare & Patient Safety — what fails"
  [1B]="Healthcare & Patient Safety — what works + frontier"
  [2A]="Education, Training & Workforce — what fails"
  [2B]="Education, Training & Workforce — what works + frontier"
  [3A]="Aviation & Aerospace — what fails"
  [3B]="Aviation & Aerospace — what works + frontier"
  [4A]="Defense & National Security — what fails"
  [4B]="Defense & National Security — what works + frontier"
  [5A]="Industry, Energy & Enterprise — what fails"
  [5B]="Industry, Energy & Enterprise — what works + frontier"
  [6A]="Disaster Prevention & Recovery — what fails"
  [6B]="Disaster Prevention & Recovery — what works + frontier"
  [7A]="Algorithms, Governance & Public Systems — what fails"
  [7B]="Algorithms, Governance & Public Systems — what works + frontier"
  [CLO]="Closing — The Discipline We Build Next"
)
CHAPTERS=(1A 1B 2A 2B 3A 3B 4A 4B 5A 5B 6A 6B 7A 7B CLO)

# Parse the per-case table — every line that begins with "| <digit>" is a data row.
# Columns (1-indexed, after splitting on "|"):
#   2 = case number
#   3 = slug
#   4 = title
#   5 = anchors
#   6 = clarity
#   7 = refs real
#   8 = refs support
#   9 = conclusions
#   10 = no overclaim
#   11 = anchor fit
#   12 = x-refs
#   13 = reviewer
#   14 = date
#   15 = notes
# (column 1 is the leading "" before the first |).

awk -v chaplo_keys="${!CHAPTER_LO[*]}" '
BEGIN { FS = "|" }
# Match data rows: starts with "| ", then a digit, then a backticked slug
# (the backtick requirement excludes rubric/example tables that also begin
# with a numeric first column).
/^\|[[:space:]]+[0-9]+[[:space:]]+\|[[:space:]]*`/ {
  n = $2 + 0
  for (i = 6; i <= 12; i++) {
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", $i)
  }
  # Determine whether the case is reviewed: any of cols 6-12 is non-empty and not "—".
  reviewed = 0
  for (i = 6; i <= 12; i++) {
    if ($i != "" && $i != "—") { reviewed = 1; break }
  }
  print n, reviewed, $6, $7, $8, $9, $10, $11, $12
}
' OFS="\t" "$LOG" > /tmp/_vstatus.tsv

# Counts
total_cases=$(wc -l < /tmp/_vstatus.tsv | tr -d ' ')
reviewed_cases=$(awk '$2==1' /tmp/_vstatus.tsv | wc -l | tr -d ' ')

# Per-check pass/note/fail/unreviewed counts
declare -A CHK_PASS CHK_NOTE CHK_FAIL CHK_BLANK
CHECKS=(clarity refs_real refs_support conclusions no_overclaim anchor_fit x_refs)
for col in 3 4 5 6 7 8 9; do
  key=${CHECKS[$((col-3))]}
  CHK_PASS[$key]=$(awk -v c=$col '$c=="✓"' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
  CHK_NOTE[$key]=$(awk -v c=$col '$c=="~"' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
  CHK_FAIL[$key]=$(awk -v c=$col '$c=="✗"' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
  CHK_BLANK[$key]=$(awk -v c=$col '$c=="" || $c=="—"' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
done

# Per-chapter reviewed counts
declare -A CH_REVIEWED CH_TOTAL
for ch in "${CHAPTERS[@]}"; do
  lo=${CHAPTER_LO[$ch]}
  hi=${CHAPTER_HI[$ch]}
  CH_TOTAL[$ch]=$(awk -v l=$lo -v h=$hi '$1>=l && $1<=h' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
  CH_REVIEWED[$ch]=$(awk -v l=$lo -v h=$hi '$1>=l && $1<=h && $2==1' /tmp/_vstatus.tsv | wc -l | tr -d ' ')
done

# Output
echo "Verification status — Capability Matters Casebook ($(date +%Y-%m-%d))"
echo "================================================================"
echo
printf "Overall progress: %d of %d cases reviewed (%.1f%%)\n" \
  "$reviewed_cases" "$total_cases" \
  "$(awk "BEGIN{print $reviewed_cases*100/$total_cases}")"
echo

echo "Per-chapter progress"
echo "--------------------"
for ch in "${CHAPTERS[@]}"; do
  rv=${CH_REVIEWED[$ch]}
  tt=${CH_TOTAL[$ch]}
  if [ "$tt" -gt 0 ]; then
    pct=$(awk "BEGIN{printf \"%3.0f\", $rv*100/$tt}")
  else
    pct="  -"
  fi
  printf "  Ch %-4s %-52s %3d / %3d  (%s%%)\n" "$ch" "${CHAPTER_NAME[$ch]:0:52}" "$rv" "$tt" "$pct"
done
echo

echo "Per-check status (across all cases — blank = not reviewed)"
echo "----------------------------------------------------------"
printf "  %-14s  %4s %4s %4s %4s\n" "check" "✓" "~" "✗" "—"
for key in "${CHECKS[@]}"; do
  pretty=$(echo "$key" | tr '_' ' ')
  printf "  %-14s  %4d %4d %4d %4d\n" "$pretty" "${CHK_PASS[$key]}" "${CHK_NOTE[$key]}" "${CHK_FAIL[$key]}" "${CHK_BLANK[$key]}"
done
echo

# Open issues — rows with ✗ in any check column. Re-parse the log to include slug/title/notes.
issues=$(awk -F'|' '
/^\|[[:space:]]+[0-9]+[[:space:]]+\|/ {
  has_x = 0
  for (i = 6; i <= 12; i++) {
    val = $i; gsub(/^[[:space:]]+|[[:space:]]+$/, "", val)
    if (val == "✗") has_x = 1
  }
  if (has_x) {
    n = $2 + 0
    title = $4; gsub(/^[[:space:]]+|[[:space:]]+$/, "", title)
    notes = $15; gsub(/^[[:space:]]+|[[:space:]]+$/, "", notes)
    # which checks failed
    failed = ""
    cols[1]="clarity"; cols[2]="refs real"; cols[3]="refs support"
    cols[4]="conclusions"; cols[5]="no overclaim"; cols[6]="anchor fit"; cols[7]="x-refs"
    for (i = 6; i <= 12; i++) {
      val = $i; gsub(/^[[:space:]]+|[[:space:]]+$/, "", val)
      if (val == "✗") {
        if (failed != "") failed = failed ", "
        failed = failed cols[i-5]
      }
    }
    printf "  Case %3d: %s  [%s]\n", n, title, failed
    if (notes != "" && notes != "—") printf "      notes: %s\n", notes
  }
}
' "$LOG")

if [ -n "$issues" ]; then
  echo "Open issues (cases with ✗ on any check)"
  echo "---------------------------------------"
  echo "$issues"
else
  echo "Open issues (cases with ✗ on any check): none"
fi

rm -f /tmp/_vstatus.tsv
