# Drafts — not published

Everything in this folder is excluded from the built site by `.mintignore`. Verified: these
pages return "Page Not Found" from `mint dev` and are not deployed.

This is a holding area, not a graveyard. The content here is finished or near-finished writing
that was pulled off the live site on 2026-08-29 so a short, polished site could ship to the
staging domain first, rather than launching with pages that still needed work.

## What's here

`work.mdx` plus `work/` — the "Work" section: an overview page and four entries (SMC Marine's
data layer, QRtub's origin story, the Acumatica invoice robot, the weekly safety email). These
were live and building cleanly before being moved here; nothing is broken about them.

## Promoting a page back to the live site

1. Move the file out of `drafts/` to its intended path (e.g. `drafts/work/qrtub.mdx` →
   `work/qrtub.mdx`).
2. Add it to the `navigation` array in `docs.json` in the same change — a page that isn't in
   `navigation` is still served by URL, it just won't appear in the sidebar.
3. If it's a `/work` page, re-point the redirects in `docs.json` that currently send
   `/services`, `/case-studies`, `/case-studies/*` and `/safetyculture` to `/`.
4. Check `reference/work-backlog.md` (gitignored, local only) for the raw material behind these
   and the entries not yet written up.

See `BRAND.md` for positioning and voice before editing any of it.
