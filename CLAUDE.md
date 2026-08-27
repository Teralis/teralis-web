# Teralis Web

Marketing site for Teralis Pty Ltd (`teralis.io`), replacing an existing Webflow site. ~6 static
pages: services, case studies, contact, privacy. Nothing on the site is personalized or dynamic.

Built on [Mintlify](https://mintlify.com). Pages are MDX with YAML frontmatter, configuration
lives in `docs.json`, and Mintlify hosts and deploys it — changes to the default branch go to
production via the Mintlify GitHub app.

**Read [BRAND.md](BRAND.md) before writing any customer-facing copy, adding a case study or
service, or making a scope/tone call.** This file covers build mechanics; BRAND.md covers
positioning, voice, who the site is for, and what's deliberately left off it.

## Migration status

The Astro site's content has been ported into Mintlify pages: `index.mdx`, `work.mdx` plus
`work/`, `contact.mdx`, and `privacy.mdx`. `services.mdx` and `case-studies.mdx` no longer
exist as separate concepts — see BRAND.md's "Site structure: Work, not Services" for why and
when that changed (2026-08-28). `docs.json` carries Teralis navigation, colours, footer, and
redirects from the old `/services`, `/case-studies`, and `/case-studies/*` URLs to their `/work`
equivalents. Migration from the old Astro repo itself is complete; it's no longer mirrored
anywhere in this repo — see "No local copy of the old site" below before assuming anything from
it is still available on disk.

Real Teralis brand assets are in: `favicon.png` and `logo/{light,dark}.png` (built from a
256×256 master that was in `image-inbox/`, since deleted — see git history), and `images/` for
client logos, the QRtub wordmark, and case-study photography.

- `images/clients/*.{svg,png}` — 10 real client logos (SMC Marine, AnewX, Lendlease, Silcar,
  Taronga, SeaO2, nbn co, ARENA, Transport for NSW, Junttan), shown as a small tiled grid on
  `index.mdx` (see "Client logo tiles," below `custom.css`'s section).
- `images/qrtub-logo.svg` — real QRtub wordmark, used on `index.mdx`'s "Also built" card.
- `images/case-studies/smc-marine.webp` and `anewx-sr75-crew.webp` — real client photography,
  wired into `work/smc-marine.mdx` and the AnewX telemetry card on `work.mdx`. (The folder is
  still named `images/case-studies/` — cosmetic, not worth the churn of renaming to match
  `work/`.)

Still placeholder, still to do:

- `README.md` is still the Mintlify starter kit readme.
- The contact form is a `mailto:` link. The Astro site's form pointed at an unprovisioned
  Formspree endpoint, so there has never been a working form.
- DNS cutover: the canonical domain decision (from the old site's URL audit, no longer available
  locally) was apex `teralis.io`, not `www.teralis.io` — Webflow's hosting default was `www`, but
  the audit found near-zero indexed content/backlink equity on the live site to protect, so there
  was no cost to switching. Cutover needs a redirect rule sending `www.teralis.io` →
  `teralis.io`, the reverse of Webflow's current setup; that's zone-level DNS config, not
  something `docs.json` can express.
- No case-study image yet for `ai-summary-email` — see "AI-generated image" below.

The old site's nav was Home / Case studies / Contact, with page titles rendered as
`{title} · Teralis`.

### No local copy of the old site

`astro-ref/` (a stripped, git-free clone of `teralis-web-astro`) was removed on 2026-08-27 once
its useful content had been ported — it existed only as a working reference during migration,
never as something to keep long-term. It had already been re-cloned once before removal, because
the first clone predated 8 commits (a redesign, real client photos, a logo carousel) — so treat
the upstream repo as having kept moving after this point too. If something is needed from it
later — more copy, another asset, the design system, the reference dossier below — re-clone
`https://github.com/Teralis/teralis-web-astro` fresh rather than assuming an old snapshot is
still accurate, strip it to content/assets only (drop tooling, config, `.astro` markup), and
delete the clone again once done.

**Lost with it, not otherwise recorded in this repo:** the per-client hrefs used in the old
carousel (`ClientLogoCylinder.astro` — check the Astro repo's git history if a client logo needs
its link restored or corrected), and the reference dossier described below.

### AI-generated image — not yet wired in

The old site's `ai-summary-email.webp` (case study: "A Monday 6am email that reads the whole
week for you") was visibly AI-generated — garbled inbox text, a distorted digital clock, a
fictional "Project Ba\*d Co." hard-hat logo. The Astro repo's own `.claude/skills/image-inbox/`
skill required flagging this explicitly rather than presenting it as authentic, since the site's
positioning is against overclaiming — so it was deliberately left out rather than wired in
silently, and wasn't copied over before `astro-ref/` was removed. This vignette has since gained
its own dedicated page, `work/safety-email.mdx`, without the image (its Mitti/OpenAI mechanism
was independently confirmed and written up — see `reference/work-backlog.md`). If a real
screenshot or photo becomes available, it can still be added there.

### No carousel

The old site's client logos rendered as a CSS-only 3D rotating drum (perspective + `rotateY`/
`translateZ`, no JS). Mintlify has no equivalent built-in component, and building one would mean
a custom snippet with its own CSS animation — not attempted here. The client row on `index.mdx`
is a static flex row of linked logos instead. Revisit only if the animation is something the
user actually wants, not by default.

### Sourcing new images (translated from the old site's CLAUDE.md)

The old site defaulted to [Openverse](https://api.openverse.org) for stock photos — keyless,
CC0-first, attribution tracked when a CC-BY result is used instead. That policy is about
*sourcing*, not the Sharp/`astro:assets` pipeline that consumed it, so it still applies here:
prefer CC0, credit CC-BY visibly, and never hotlink a third-party image URL directly — download
it into this repo first.

What doesn't carry over is the build-time optimization step (Astro's `<Image>` + Sharp). Mintlify
has no build-time image pipeline, so anything dropped into `image-inbox/` needs to be optimized
*before* it's committed. The old site's `scripts/process-inbox-image.mjs` was plain Node +
`sharp` with no Astro dependency — worth pulling from the Astro repo's git history as a template
for this repo's eventual optimisation script (resize to a max edge, re-encode to `.webp`, and
strip metadata — `sharp` does that last part by default, just never call `.withMetadata()`).

## Reference material

**No longer available locally.** A dossier on Teralis (`reference/README.md` — what Teralis
does, the SMC Marine build, how Teralis relates to QRtub; `reference/company-details.md` —
entity name, ABN, GST, and the reasoning on publishing an address; `reference/martin-philipp-
profile.md` — background, for bio copy) lived under `astro-ref/reference/` and was removed with
the rest of that folder. The facts already pulled from it into this repo (the ABN, in the privacy
page and below) are still fine to use; anything beyond that means re-cloning
`teralis-web-astro`'s `reference/` folder specifically. Write customer-facing copy (services,
case studies, about) from a source like that, not from general knowledge about the company.

### QRtub brand/glossary sync

`reference/qrtub/BRAND.md` and `GLOSSARY.md` are a read-only mirror of the same files in
`github.com/qrtub/qrtub` (private repo, product built by Teralis, brand and canonical
terminology). Write anything QRtub-related — the "Also built" card on `index.mdx`, any future
QRtub mention — against these, not general knowledge, same rule as the Teralis dossier above.

**At the start of any session that touches QRtub-related copy**, check
`reference/qrtub/.last-synced` (first line: date it was last synced, second line: which ref).
If it's more than ~30 days old, or missing entirely, run:

```
./scripts/sync-qrtub-reference.sh
```

The script itself checks for open PRs on `qrtub/qrtub` touching either file and warns rather than
silently trusting `main` — this already mattered once: PR #23
(`docs/brand-and-claude-review`) was +231/-67 on `BRAND.md` and +173/-51 on `GLOSSARY.md` ahead of
`main`, substantial enough that syncing from `main` while it's open would be actively misleading.
If the script warns about an open PR, re-run with that branch name as an argument instead of
trusting the warning-and-proceed default. Check whether #23 (or whatever's open at the time) has
merged before deciding which ref is actually current.

This check is session-opportunistic, not a guarantee — it only runs if a session happens to
touch this repo after the mirror goes stale. There's no cron job keeping it fresh
unconditionally; that was a deliberate choice over building one, not an oversight.

## Standing constraints

**No third-party trackers.** No Google Analytics. Flag before adding any script or embed served
from another domain. Mintlify's built-in analytics are the approved option. If a contact form is
reintroduced via Formspree, never enable its reCAPTCHA option — it loads a Google script; use the
honeypot field (`_gotcha`) instead.

**Privacy page is required before launch.** It needs: controller identity (Teralis Pty Ltd,
ABN 76 152 898 649), what any form collects, who processes it, and a contact method. No street
address — this was a deliberate decision in the (now-removed) company-details reference doc;
re-clone `teralis-web-astro`'s `reference/` folder if the original reasoning is needed again. If
the site ships without a form, the page still needs to describe what Mintlify's hosting collects.

## Content draft workflow

New content starts hidden until it has been reviewed, rather than publishing the moment a file
exists. `.mintignore` excludes `drafts/` and `*.draft.mdx`, so:

- Draft a new page as `<name>.draft.mdx`, or put it in `drafts/`.
- Leave it out of the `navigation` array in `docs.json` while it is a draft.
- Promote it by renaming to `<name>.mdx` and adding to `navigation` in the same change.

Nothing is currently drafted this way. The two former service drafts
(`services/custom-builds.draft.mdx`, `services/safetyculture-integration.draft.mdx`) were
deleted outright during the 2026-08-28 Work restructuring, not promoted or left draft — see
BRAND.md's "Site structure: Work, not Services."

Verified against `mint dev`: draft pages, and everything else `.mintignore` lists, return "Page
Not Found", so `.mintignore` does keep ignored content out of the served site.

**Leaving a file out of `docs.json`'s `navigation` array does NOT make it private.** It only
hides it from the sidebar — Mintlify still serves it directly by URL if requested. `BRAND.md`
was live at `/BRAND` (full content, not a 404) for as long as it existed without a matching
`.mintignore` entry, despite never being in `navigation`. The same is true of the untouched
starter `README.md`, served in full at `/README`, even though Mintlify's own docs describe it as
"automatically ignored" (that phrase means excluded from nav requirements, not from being served).
**The only real privacy mechanism is `.mintignore`.** Any new file that shouldn't be public —
notes, drafts before they're in `*.draft.mdx` form, anything internal — needs an entry there,
verified with `mint dev` + `curl`, not assumed safe because it's unlinked.

One CLI quirk to know about: `mint broken-links` still parses ignored files, including
`README.md`, which Mintlify documents as always ignored — an excluded file can still abort the
link check with a syntax error (this bit `astro-ref/reference/company-details.md` once, on an
MDX-invalid autolink like `<https://example.com>`; fixed by switching to `[text](url)`). If it
happens again on a file under `.mintignore`, fix the syntax there rather than assuming the file
is being published.

## Local development

Mintlify CLI, installed globally:

```
npm i -g mint
```

Run `mint dev` from the repo root (where `docs.json` lives); preview at `http://localhost:3000`.
`mint update` refreshes the CLI when dev misbehaves. `mint broken-links` checks internal links
before pushing.

`docs.json` gotcha: `navbar.links[].href` and `navbar.primary.href` are validated as absolute
URLs — a relative path like `/contact` fails the prebuild with `Must be a valid url` and every
route 500s. Internal pages belong in `navigation`, not the navbar.

Same trap applies to `footer.links[].items[].href` — but only once `footer.socials` is also set;
relative hrefs there validated fine before `socials` existed, then failed on the identical values
the moment it was added (`mint dev` re-verified, not assumed). So footer link items use the
canonical domain (`https://teralis.io/...`) instead of relative paths, to be safe. If a
`docs.json` field mysteriously starts rejecting values that used to pass, check what else in the
file changed first — the validator doesn't always apply the same rule to the same field.

**Major gotcha, found 2026-08-28: inline `style={{...}}` on plain HTML/JSX elements in MDX is
silently dropped from the server-rendered HTML.** Confirmed by direct inspection of `mint dev`'s
output, not assumed: the same `<img>` tag with both `height="20"` (plain attribute) and
`style={{marginBottom: '0.5rem'}}` rendered with `height="20"` intact and no `style` attribute
at all. This had already shipped silently broken on this site once — a tiled, dark-mode-safe
client-logo grid that looked right in the source but rendered as fully unstyled images, because
every rule was carried as inline `style` objects. No build error, no warning; it just doesn't
apply. **Use `className` plus rules in `custom.css` at the repo root instead** — Mintlify picks
up any `.css` file there automatically (no `docs.json` reference needed) and `className` *does*
survive into the rendered HTML (verified: `class="logo-tile"` appeared on the actual tag).
Before trusting any new visual change, grep the rendered output for the actual CSS
property/value, not just that the element or image is present — presence of content is not
proof that styling applied. (Tangentially: a raw `.map()` over an array literal inside MDX JSX
also silently failed to render as static HTML during this same investigation — it only showed up
as embedded source in the hydration payload, never as real `<img>` tags. Stick to plain, repeated
JSX per element; don't assume more dynamic JS patterns work just because `mint dev` doesn't
error.)

**No native draft-in-dev-only mechanism exists.** Checked directly against Mintlify's
frontmatter reference (2026-08-28) — there is no field that shows a page in `mint dev` with a
badge while excluding it from production. Real fields that exist: `hidden` (removes from
sidebar, still reachable by URL, not indexed — this is the mechanism behind the `BRAND.md`
near-miss described above), `tag` (a label next to the title, but shows in both dev and prod
equally), `deprecated` (same, wrong semantics). None of them condition on environment. The
`*.draft.mdx` + `.mintignore` convention already in use is the closest available substitute, at
the cost of hiding the draft from `mint dev` too, not just production.

**Page layout modes, for homepage/landing-page treatment specifically.** Frontmatter `mode`
accepts `default` (sidebar + right TOC), `wide` (hides the right TOC, keeps the left sidebar —
what "turn off the right nav" means literally), `custom` (Mintlify's own recommended landing-page
mode — strips everything but the top navbar, including the left sidebar; a blank canvas), `frame`
(like custom but keeps the sidebar), and `center` (removes both sidebar and TOC, centers content
— good for changelogs). `index.mdx` uses `wide`. If the homepage needs a more dramatic departure
from the doc-page look later, `custom` is the documented way to get it — but it also removes the
left-hand site navigation, which `wide` does not.

## Mintlify product knowledge

The Mintlify skill is installed at `.agents/skills/mintlify/SKILL.md` — component reference,
writing standards, and workflow guidance. Refresh it with
`npx skills add https://mintlify.com/docs`.

Two MCP servers are also available: `https://mcp.mintlify.com` to edit content and settings, and
`https://www.mintlify.com/docs/mcp` to query Mintlify's own documentation.

## Style preferences

- Use active voice and second person ("you")
- Keep sentences concise — one idea per sentence
- Use sentence case for headings
- Bold for UI elements: Click **Settings**
- Code formatting for file names, commands, paths, and code references

## Out of scope for now

Design and brand tokens, DNS cutover, and the Mintlify project settings themselves.
