#!/usr/bin/env bash
# Refreshes the local mirror of QRtub's BRAND.md and GLOSSARY.md from
# github.com/qrtub/qrtub (private repo — relies on `gh` already being
# authenticated). QRtub is a Teralis product with its own brand/terminology
# doc; this repo keeps a read-only copy in reference/qrtub/ to write
# consistent copy about it (e.g. the "Also built: QRtub" card on
# index.mdx) without duplicating or drifting from the source of truth.
#
# Defaults to `main`. If there's an open PR touching BRAND.md/GLOSSARY.md,
# main is stale — pass its branch name as $1 instead (this bit us once:
# PR #23, docs/brand-and-claude-review, was +231/-67 and +173/-51 ahead of
# main on these two files).
set -euo pipefail
cd "$(dirname "$0")/.."

REF="${1:-main}"

# Uses gh's own built-in jq engine (--jq) throughout — deliberately never
# shells out to a standalone `jq` binary, which isn't guaranteed to be
# installed (it wasn't, here, and the failure was silent enough under
# `set -e` inside an `if` condition that a stale main/ overwrote a correct
# PR-branch fetch on the very next run without ever showing this warning).
OPEN_PR_LINES=$(gh pr list --repo qrtub/qrtub --state open \
  --json number,headRefName,files \
  --jq '.[] | select(.files | any(.path == "BRAND.md" or .path == "GLOSSARY.md")) | "  #\(.number) (\(.headRefName))"')

if [ "$REF" = "main" ] && [ -n "$OPEN_PR_LINES" ]; then
  echo "Warning: open PR(s) touch BRAND.md/GLOSSARY.md — main may be stale:" >&2
  echo "$OPEN_PR_LINES" >&2
  echo "Re-run with the branch name as an argument to pull from the PR instead." >&2
fi

for f in BRAND.md GLOSSARY.md; do
  gh api "repos/qrtub/qrtub/contents/$f?ref=$REF" -H "Accept: application/vnd.github.raw" \
    > "reference/qrtub/$f"
  echo "synced reference/qrtub/$f from $REF"
done

# Stamped so CLAUDE.md's staleness check has something to compare against —
# file mtimes aren't reliable for this (a fresh clone/checkout resets them
# to checkout time, not the last real sync).
date -u +%Y-%m-%d > reference/qrtub/.last-synced
echo "$REF" >> reference/qrtub/.last-synced
