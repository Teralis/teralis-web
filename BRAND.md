# Teralis — positioning & voice

Source of truth for what this site is for and how Teralis should sound, reached in a strategy
conversation with Martin on 2026-08-27. CLAUDE.md governs *how to build* the site; this file
governs *what it's for and what it says*. Read this before writing any customer-facing copy,
adding a case study or service, or making a call about scope or tone.

This is a living document. If a positioning decision changes, update it here rather than letting
the site and this file drift apart.

---

## The one-line thesis

**"Just the right amount of tech."** The homepage headline. Its definition, and the line that
should follow it wherever the thesis is restated: **high tech when that's needed, low tech when
that's what's right.** Martin's own phrasing (2026-08-29) — keep it as the explanation of the
tagline rather than promoting it to a competing headline.

It operates on two levels:

1. **The service itself.** Teralis works out what an operation actually needs, then builds only
   that — not the fullest possible system, not a platform when a spreadsheet would do, and
   sometimes nothing at all.
2. **This site.** Martin chose Mintlify over continuing the old custom-built Astro site for the
   same reason: a plain, low-maintenance tool suits a credibility page better than a bespoke
   design system would. The site practicing what it preaches is the point — see "Build
   philosophy," below.

## Who we say we're for

**Broadened 2026-08-29, away from "engineering, construction and project-based companies."**
That framing was already inaccurate to the evidence on our own page: Taronga is a zoo, ARENA a
government energy agency, SeaO2 climate tech, Junttan an equipment manufacturer, nbn a telco.
The work was never confined to engineering and construction, and the words shouldn't say it was.

**The current line is "organisations and projects."** Two things about it:

- **"and projects" is load-bearing — don't drop it.** It encodes the tier-2 insight below: big
  enterprises are too bureaucratic to buy, but projects running inside them are autonomous and
  can. Naming projects separately keeps that door open.
- **"organisations" alone is far too generic** — every consultancy says it. The limiter that
  makes it work is the scope statement, not the noun.

**The scope statement is Martin's own:** *wherever a computer is, or should be, part of how the
work gets done.* Broad on industry, tight on domain — it rules out strategy decks, brand work,
HR. Note the deliberate wording: "part of how the work gets done" rather than "involved in
operations," because "wherever a computer is" on its own reads faintly like IT support.

**Frame forward, not as repair.** Martin (2026-08-29): much of the work is taking things to the
next level, not fixing what's broken. So the positioning sentences lead with the upside — see
"Problem-framing" below for how that squares with keeping the examples concrete.

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
- **Not everything real gets advertised.** See "Deliberate omissions" below — some genuine
  revenue lines are kept off the site on purpose, and a gap on the page is not automatically a
  gap to fill.

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

## The four principles — and why they're MECE

The "How we work" cards on the homepage are a deliberate MECE set, worked out with Martin on
2026-08-29. **Each owns one decision, and the boundaries matter more than the titles.** If a new
principle gets proposed, test it against these before adding it — three earlier candidates
collapsed under exactly this test.

| Card | Owns | Does NOT own |
| --- | --- | --- |
| **Right-sized, not one-size** | How much intervention: none, a process change, a spreadsheet, a small tool, a system — *and* what's deliberately excluded from scope | Which product you run it on |
| **The best software isn't always the best fit** | Judging options: does the pricing model scale with headcount or seats, is there real access to your own data, extend before buy before build | How big the answer should be |
| **No two setups are the same** | That we bring no house stack and no fixed delivery model, and adapt to whatever environment and resources exist | Judging *the client's* software |
| **Organised data pays for itself** | A real transactional database at the centre; the payoff ladder from reports to alerts to automations | How we use AI specifically |

**What collapsed, and why — don't reintroduce these as separate cards:**

- **"Business sense first"** is a *trait*, not a decision axis. Evaluating whether a pricing
  model will scale with headcount *is* business sense — so it double-counted against "best fit."
  It now runs as a thread through the first two cards rather than standing alone.
- **"Risk scoped by design"** is one dimension of right-sizing, not a peer of it. Deciding what
  to leave out is part of sizing the work. Folded into card 1.
- **"Flexible delivery"** was mis-scoped as *who staffs the job*. Martin's correction: it's
  really that every company has a different tech stack and different resources, so adaptation is
  necessary. Renamed and broadened to "No two setups are the same."

**The productive tension is intentional.** Card 1 says don't over-build; card 4 says do spend
properly on the data layer underneath. Holding both is the judgment that reads as honest rather
than as a pitch — don't "resolve" it by softening either.

**One boundary to keep watching.** Cards 2 and 3 both touch the client's existing stack — 2 says
*we'll extend what you already run*, 3 says *we don't impose our own*. Logically distinct
(judging your tools vs. not having ours), but close enough that loose wording blurs them. Keep 2
about evaluation criteria and 3 about our own adaptability.

## How we talk about AI

**AI is a section, not a card — and that's structural, not stylistic.** An AI card would cut
straight across right-sizing ("expensive where a script would do"), fit ("is this the right
tool") and the toolbox ("one of many"), breaking the MECE set above. A section sits at a
different altitude: the cards answer *how do you work*, the section answers *what's your
position on the thing everyone is asking about*. Keep it below the principles — Martin does not
want to lead with AI.

**The stance, in order:**

1. **Organised data over AI, if forced to choose.** Martin's own synthesis: given organised data
   with no AI, or AI on top of a mess, take the organised data. This opens the section — it
   replaces a generic disclaimer with something specific and falsifiable, and it ties the section
   back to card 4.
2. **AI for the exceptions, not the norm.** The standard path is plain deterministic code; AI
   earns its place on the cases that don't fit the pattern. This is the sharpest and most
   contrarian claim on the page, it's provable from the invoice robot, and it's "just the right
   amount of tech" applied one level down.
3. **Tokens to build, not to run.** Spend tokens writing software, not executing it. Building
   cheaply enough that small automations clear the bar is part of the point.

**Always close with the breadth line** — "alongside IoT, comms, databases, data visualisation
and advanced analytics." It is the counterweight that stops the section reading as *AI shop*,
and it's placed where a reader is most likely to draw that conclusion.

**The Drucker construction was considered and rejected.** "Clean organised data eats AI for
breakfast" — three problems: the "X eats Y for breakfast" template is worn to the point of
reading as borrowed; "culture eats strategy for breakfast" is almost certainly misattributed to
Drucker, and the homepage already carries a genuinely sourced quote (Agile Manifesto, Principle
10) that an apocryphal neighbour would undercut; and "eats for breakfast" frames data and AI as
competitors when data is the ground AI stands on. Martin's plain phrasing is better because it
names the failure mode. Don't reach for the aphorism again.

## Problem-framing: name it once, then lead with the upside

**This rule already exists in Martin's own hand, in QRtub's `BRAND.md`** — and it applies here
verbatim:

> Never end a section on the negative. A reader needs the problem to orient, and then needs
> something they can act on — a page written in the negative reads as damage limitation and
> **caps value at "not being broken", when the actual value is a better-run operation.**

Its companion warning matters just as much: deficit-framed lines win on "pain proximity"
*structurally*, because they are made of pain. So a page drifts negative unless someone actively
resists it — which is exactly what happened to the Teralis homepage before 2026-08-29. Nobody
chose "we fix what's broken"; it accumulated.

**In practice:** positioning sentences lead with the upside; the bullet examples stay concrete
and may well name a real problem, because specificity is what makes them credible. Martin
(2026-08-29): *"I am ok with some bullet points and eventual case studies being fixes if that's
what they were."* The rule is about the frame, not about sanding the evidence smooth.

## Deliberate omissions — gaps that are not gaps

Recorded so a future session doesn't helpfully fill them.

- **AI training and enablement.** Martin does provide this — giving organisations shared AI
  context, and shared processes so AI is an organisational capability rather than a personal
  habit. He does not want to advertise it. It was drafted as an AI-section bullet on 2026-08-29
  and pulled at his instruction. Do not re-add it.
- **Ongoing ownership, hosting and maintenance.** Real, and a direction the business is moving
  in, but deliberately not a claim on the page.
- **Anything about pricing** — see "Out of scope," below.

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

**The one-liner list is the interim substitute, and it has its own rules.** Each bullet describes
one real piece of work in plain language and stops — no client names, no tech stack, no outcome
metrics. They're written to show *range* (a two-day script sits beside a multi-year data
platform), which is the same job the Work section does at greater length.

Most lead with the capability rather than the complaint, per "Problem-framing" above, but not
all — some jobs genuinely were fixes and say so. Source material for new bullets is
`reference/work-backlog.md` (gitignored, local only), which holds more entries than are on the
page. When Work goes live, decide deliberately whether the list stays as a summary above it or
is retired; keeping both unedited would repeat the same material twice on one page.

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
- **Naming industries** ("engineering, construction and project-based") as the audience — it was
  narrower than the real client list. Use "organisations and projects" plus the scope statement.
- **Repair framing in positioning sentences** — "what's not working", "what needs fixing". Fine
  in a concrete example, wrong as the frame. See "Problem-framing," above.
- **Leading with AI**, or letting the AI section climb above the principles.
- **"X eats Y for breakfast"** and business aphorisms generally.
