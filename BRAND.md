# Teralis — positioning & voice

Source of truth for what this site is for and how Teralis should sound, reached in a strategy
conversation with Martin on 2026-08-27. CLAUDE.md governs *how to build* the site; this file
governs *what it's for and what it says*. Read this before writing any customer-facing copy,
adding a case study or service, or making a call about scope or tone.

This is a living document. If a positioning decision changes, update it here rather than letting
the site and this file drift apart.

---

## The one-line thesis

**"Just the right amount of tech."** Already the homepage headline. It operates on two levels:

1. **The service itself.** Teralis diagnoses what a project-delivery operation actually needs,
   then builds only that — not the fullest possible system, not a platform when a spreadsheet
   would do.
2. **This site.** Martin chose Mintlify over continuing the old custom-built Astro site for the
   same reason: a plain, low-maintenance tool suits a credibility page better than a bespoke
   design system would. The site practicing what it preaches is the point — see "Build
   philosophy," below.

## What Teralis is — not a label

**Not "a management consultancy."** Martin has explicitly rejected this framing. It used to sit
in `index.mdx`'s meta `description`; that's fixed, and the phrase is gone from the site as of
2026-08-27 (this note briefly went stale itself — it said "needs rewriting" after the rewrite had
already happened; check the actual copy before trusting this file's own claims about it, same as
anywhere else). Don't reach for a replacement category noun either (fractional CTO, technical
operator, etc.) without checking first — the working instinct is to describe what Teralis
actually does rather than defend a label.

**Diagnose, then build.** Twenty years of managing delivery teams and vendors, not writing code
personally. "Build" increasingly includes directing AI as an execution capability — an extension
of that management skill, not a pivot into "the AI guy." Keep that framing: the judgment about
what's worth building is the actual expertise; the code is downstream of it.

**Honest, but never under a heading called "Honest boundaries."** Martin's own correction
(2026-08-28): he likes the underlying trait — admitting real scope and real limits is a
deliberate trust signal, not something to edit toward a cleaner pitch — but the literal heading
read as too clinical, and some of what sat under it tipped from honest into self-undermining.
Two rules from working through it:

- **No section labeled "Honest boundaries."** Fold the honest material into whatever section it
  naturally belongs to — a closing paragraph of "The shape of it," a scope note at the end of an
  origin story — so it reads as the natural end of the story, not a flagged confession.
- **Honest about *scope*, not about *weakness*.** "Built for an operation this size, not an
  enterprise IT estate" is honest and confident — it's a targeting statement, matching the
  three-tier client segmentation below. "Wouldn't survive an enterprise security review" is
  honest but damaging — it's volunteering a specific liability nobody asked about, to a reader
  who didn't need to know it to trust the story. Same underlying fact (this isn't enterprise-
  grade infrastructure) said two different ways; only one belongs on the page. Same test for
  "too hard to productise" → reframed as "every client's mix of assets turned out different
  enough that packaging this as one product never made sense" — the fact survives, the framing
  of it as a failure doesn't.

**Never overclaim, especially about AI.** No fabricated "proof" — a garbled AI-generated
screenshot was correctly held back from a case study rather than presented as a real one (see
CLAUDE.md's "AI-generated image" note). If an illustration is AI-generated, say so. Matches
Martin's own self-description: "a problem solver, not a bullshitter."

## QRtub's role

QRtub is the growth engine — a zero-marginal-cost SaaS that gets essentially all marketing
effort. **This site must never compete with or dilute QRtub's own positioning.** Teralis-the-site
is a credibility backstop, not a lead-generation engine.

Anything said about QRtub here should be sourced from `reference/qrtub/BRAND.md` and
`GLOSSARY.md` (kept in sync — see CLAUDE.md's "QRtub brand/glossary sync" section), not invented
independently. The QRtub case study's own rule still applies: this site tells *where QRtub came
from*, not what it does today — qrtub.com is the source of truth for that.

## What the site is for, and what "done" means

- **No SEO ambition, no lead funnel.** The contact path can stay a plain `mailto:`.
- **The migration deadline is cost-driven** — Martin wants off an expensive Webflow subscription.
  Ship when it's live and reasonably good, not when every draft page is filled in.
- **Sparse is deliberate, not unfinished.** Case studies exist to show creative range and
  character — "give people an idea of the creativity of problems we may solve," so a visitor
  thinks "I bet they can help with mine too" even if their exact problem isn't shown. This is
  not a service catalog. A short, honest list beats a padded one.
- The two draft services (`services/custom-builds.draft.mdx`,
  `services/safetyculture-integration.draft.mdx`) can stay draft indefinitely. That's not a gap.

## Who this is actually for

Three tiers, and each shows up on the site differently:

1. **Nimble, fast-moving companies** — Martin's own qualifying test: "can get an API key in
   under a month." The real audience. Case studies should keep coming from here (SMC Marine,
   AnewX are this tier).
2. **Enterprises and big autonomous projects inside them** — real work, shaped like consulting,
   data analysis, and fast prototypes, never a build-and-host engagement (enterprise IT
   bureaucracy makes that a non-starter regardless of the client's size). Not the growth story.
   Doesn't need its own case studies.
3. **Big-name enterprise clients** (Transport for NSW, NBN Co, Lendlease, Taronga, Service
   Stream) — credibility from deep past engagements, not a client list being cultivated. Shown as
   logos only. **Don't add case studies for this tier "for balance"** — the current
   logos-only/case-studies-are-tier-1 split is already correct and should be preserved.

## Site structure: "Work," not "Services"

**"Services" is retired as a site category.** A fixed service menu misrepresents work this
varied and bespoke — the same site needs room for a CSV parser that turns Procore submittals
into a weekly Word report and a cross-OEM/cross-SaaS telemetry integration, without sorting them
into service types first. Both belong in one flat section, sized to whatever the real story is —
a paragraph for the small one, several sections for the large one — not a category page each.

**That section is named "Work," not "Built."** "Built" was considered and rejected: it
positions Teralis as a pure dev shop. Martin's own framing: *"we are 50% dev shop and roll our
sleeves up to do WORK"* — the site needs to hold consulting, diagnosis, and hands-on delivery
under one word, not just the code that sometimes comes out of it. "Case studies" was also
rejected as the section name — too grand for the small end of the range.

**Done as of 2026-08-28.** `services.mdx` and its two drafts are deleted (their content
substantially retold what the SMC Marine case study already covered, or had no real example
behind it — nothing worth carrying forward verbatim). `case-studies.mdx`/`case-studies/` were
renamed to `work.mdx`/`work/`, holding `smc-marine.mdx`, `qrtub.mdx`, `ap-invoice-robot.mdx` and
`safety-email.mdx`.

**Parked as of 2026-08-29 — the Work section is not currently live.** Martin needed the site up
within days without time to finish the content, so all of the above moved to `drafts/` and the
homepage took over the job with a bulleted list of one-line descriptions of the kind of work
Teralis does. Everything in this section still stands as the plan; it's a launch-timing
decision, not a reversal. `drafts/README.md` covers promoting pages back, and CLAUDE.md's
"Short-site launch" section covers what changed mechanically.

**The one-liner list is the interim substitute, and it has its own rules.** Each bullet names a
real problem in plain language and stops — no client names, no tech stack, no outcome
metrics. They're written to show *range* (a two-day script sits beside a multi-year data
platform), which is the same job the Work section does at greater length. When Work goes live,
decide deliberately whether the list stays as a summary above it or is retired; keeping both
unedited would repeat the same material twice on one page.

**Pages stay short and atomic.** Martin's own instruction (2026-08-27): the site "gets too fat
and complex otherwise." Prefer more small, single-purpose pages over fewer large ones that try
to cover everything. Don't let a Work entry sprawl into covering multiple things just because
they're related — split it instead.

**Simplicity for the reader beats architectural completeness.** When a Work entry sits on
shared infrastructure (several things run on the same underlying Postgres layer, say), it does
not need to say so. Martin's own call on the Mitti/AI-email entry: don't explain that "heaps is
hanging off" the same multipurpose database — just state the entry's own clean pipeline (e.g.
"Mitti → Postgres → OpenAI → 6am email") and stop there. Cross-referencing a shared foundation
is its own kind of complexity ("wait, what's this other page it's pointing to?") — the atomic
page's job is to be the fastest possible read of *this one thing*, not the most technically
complete one.

**Client attribution is optional, and multi-item work for one client can be split up
arbitrarily.** Martin: *"I won't always mention the client... where I have done many things for
one client I may just break them up arbitrarily."* Several Work entries can come from the same
underlying engagement (AnewX, for instance, has at least three) without the site ever grouping
them together, naming the client on all of them, or unifying them into one page. Don't assume
shared origin implies they should be presented as one story — breaking them apart is a
legitimate, preferred choice, not a gap to fix.

## Out of scope for this site — and this document

**Pricing, rates, retainer structure, hourly billing.** Deliberately absent, on purpose, by
explicit instruction. This is Martin's own business-model problem to solve separately from how
the site presents Teralis — don't encode it, hint at it, or infer it into copy from anything in
this document.

## Build philosophy for the site itself

Mintlify was chosen deliberately because its plainness matches "just the right amount of tech."
Default to the built-in component over a custom one. Resist adding custom CSS/JS, animation, or
a heavier design system than the theme already provides — see CLAUDE.md's "No carousel" note for
a concrete case already decided this way (a static logo row instead of the old site's animated
3D carousel).

## Quick reference — words and moves to avoid

- **"Management consultancy" / "consultant"** as self-description — describe the work plainly
  instead.
- **Any pricing or rate language** — never appears on the page.
- **Overclaiming, or synthetic "proof"** — no fabricated screenshots or data presented as real.
- **Padding for completeness** — don't add a case study or service page just to fill a category
  or make the site look fuller than the real work supports.
- **Enterprise case studies added "for balance"** — the logos-only treatment for that tier is
  deliberate, not an oversight.
