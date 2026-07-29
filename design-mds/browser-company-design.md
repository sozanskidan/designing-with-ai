# The Browser Company — Web Design Language
> Source: https://thebrowser.company · https://thebrowser.company/values/ ("Notes on Roadtrips") · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped — this site exposes no CSS/font metadata, so most numeric values here are inferred emulation targets around the scraped facts

## 1. Design Philosophy
The Browser Company's site is deliberately anti-corporate: a warm off-white paper ground (scraped theme-color `#EEEEE7`), a single centered text column, and hand-drawn illustration in place of any product screenshot. The homepage is radically reduced — essentially one sentence plus a handful of plain links — while the flagship brand artifact is a long-form illustrated essay, "Notes on Roadtrips," structured like a personal memoir with numbered principles, pull quotes and footnotes. The craft lives in typography, tone and illustration rather than layout systems; the interface is nearly invisible so the voice carries the brand. It feels human, optimistic and lightly nostalgic — a software company presenting itself like an indie publisher, with almost no motion at all: stillness and speed are part of the statement.

## 2. Color
### Core roles
| Role | Value | Notes |
|---|---|---|
| Background | `#EEEEE7` | Scraped meta theme-color; warm off-white/beige paper |
| Surface (rare panels) | `#F7F7F2` (inferred) | One step lighter than paper |
| Surface pressed/hover | `#E4E4DB` (inferred) | Row/link-block hover tint |
| Text primary | `#2B2B28` (inferred) | Scraped: "dark gray/charcoal" on off-white; warm ink, not `#000` |
| Text secondary | `#6E6E66` (inferred) | Footnotes, captions, copyright line |
| Text faint | `#9B9B90` (inferred) | Meta, timestamps |
| Links | `#2B2B28` underlined (inferred) | Ink-colored, never default blue |
| Borders / rules | `#D8D8CE` (inferred) | Rare hairlines; whitespace does most separating |
| Illustration — desert | `#E0A458` (inferred) | Scraped palette description: "warm desert tones" |
| Illustration — ocean | `#5B8FB9` (inferred) | "ocean blues" |
| Illustration — sunset | `#E2725B` (inferred) | "sunset oranges" |
| Illustration — sky/sage | `#B9C4A3` / `#CFE0E8` (inferred) | Supporting artwork tones |
| Error (forms, if any) | `#B0483B` (inferred) | Warm brick, matches palette |

### States, overlays, gradients
- Link hover: underline thickens (1px→2px) or ink softens to `#6E6E66`, ~150ms ease (inferred)
- Link active: ink `#1D1D1B` (inferred); focus: 2px `#2B2B28` outline, 2px offset (inferred)
- No gradients anywhere in the UI — flat paper only; gradients exist solely *inside* illustrations (skies, sunsets) (scraped observation)
- No shadows, no elevation system; at most a 1px rule under a sticky element (inferred)
- No dark mode (scraped: single beige theme-color)

## 3. Typography
- Families not exposed in markup (scraped note). Rendered pages pair a display/humanist face for headlines with a bookish body face — serif or humanist sans for the long-form essay (scraped observation; exact faces inferred)
- Emulation stacks (inferred stand-ins chosen for warmth): display `"GT Alpina", "Tiempos Headline", Georgia, serif`; body `"Untitled Sans", "Graphik", -apple-system, "Helvetica Neue", sans-serif`; use italics expressively in narrative passages
- Weights: 400 body; 500–700 display; bold numerals for the numbered principle markers (scraped: "bold numerical markers, 1–12 per section")
- Loading: minimal — system-adjacent fallbacks acceptable; the brand survives font swap because tone > typeface (inferred)
- Figures: old-style/proportional figures fit the book aesthetic (inferred)

### Type scale (approx, inferred emulation targets)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Page title / display | 44–56px / 2.75–3.5rem | 600 | 1.1 | −0.01em | "Notes on Roadtrips" |
| Section head | 28–36px | 600 | 1.2 | 0 | Value/section titles |
| Pull quote | 24–28px | 500, often italic | 1.35 | 0 | Repeated emphasized callouts (scraped pattern) |
| Principle number | 20–24px | 700 | 1 | 0 | Bold "1."–"12." markers (scraped pattern) |
| Body (book size) | 18–20px | 400 | 1.6–1.7 | 0 | Essay text — larger than web default |
| Nav / links | 15–16px | 400–500 | 1.5 | 0 | Header/footer links |
| Footnote / caption | 13–14px | 400 | 1.55 | 0 | Citations, copyright |
- Case: sentence case everywhere; no all-caps (inferred from scraped copy)
- Responsive: display 56→36px; body holds 18px on mobile (book readability first) (inferred)

## 4. Layout & Grid
- Grid: there effectively isn't one — a single centered column ~640–720px measure (scraped: "centered column format with generous whitespace") on an edge-to-edge paper background; illustrations may break the measure to ~900px or full-bleed (inferred)
- Breakpoints: one meaningful collapse ~700px where side margins shrink from auto-centering to 20–24px (inferred); viewport meta declared (scraped)
- Spacing scale (inferred): `8, 16, 32, 56, 96, 144` px; paragraphs 1em apart; illustrations 56–96px above/below; sections separated by ~144px
- Homepage structure (scraped, complete): header nav → one-sentence hero ("We're building better ways to use the internet with Dia and Arc.") → footer. That is the entire page
- Essay structure (scraped): five narrative sections × numbered subsections (1–12 each), inline illustrations between text blocks, anchor-linked navigation to sections/subsections, footnote citation list (incl. movie references) at the end
- Header/nav: plain text links, no chrome — Home, Company Values, Jobs, Newsletter, @browsercompany, Meet Dia Browser, Get Arc Browser (scraped); external: diabrowser.com, arc.net, browsercompany.substack.com, x.com/browsercompany (scraped)
- Footer: mirrors header nav + "Copyright The Browser Company" (scraped); no sitemap, no legal maze, no social icon row — text only
- Z-index: essentially unused; 10 for any sticky nav, 20 for the rare overlay (inferred)
- Assets from simple paths (`/values/images/`, scraped) — artisanal, not CDN-pipelined

## 5. Components
### Links (the primary component — there are effectively no buttons)
| State | Treatment (inferred) |
|---|---|
| Default | ink `#2B2B28`, 1px underline, underline-offset 3px |
| Hover | underline 2px or color `#6E6E66`, 150ms ease |
| Active | ink `#1D1D1B` |
| Focus | 2px outline `#2B2B28`, offset 2px |
| Visited | unchanged (no purple) |

### Button (only if emulation requires one)
- Soft rectangle, radius 8–12px, 1px ink border or solid ink fill on paper, sentence-case label 15–16px/500, padding `10px 20px`; hover = fill/ink swap; motion ≤150ms (all inferred — the real site avoids buttons)

### Pull quote
- 24–28px, italic or medium, ink color, 32–56px vertical margins; sometimes repeats a line already used in body text (scraped pattern); no quote-mark glyphs or borders (inferred)

### Numbered principle
- Bold numeral ("7.") set at 20–24px/700 flush with the text column, subsection text follows; anchors link directly to each (scraped structure)

### Illustration block
- Full- or partial-width hand-drawn scene between paragraphs (scraped); no borders, no captions unless narrative; PNG/SVG on transparent or self-colored ground so the paper shows through (inferred)

### Footnotes
- Superscript-style linked references in text; citation list at essay end including movie citations (scraped); 13–14px, secondary ink (inferred)

### Newsletter touchpoint
- Outbound link to Substack rather than an embedded form (scraped) — the "form" component is intentionally absent

### Header / footer spec
- Header: plain text nav row, no background treatment, no sticky behavior required; 15–16px links with the standard ink-link states; wordmark or "Home" as first item (structure scraped, values inferred)
- Footer: single short block — nav links repeated + "Copyright The Browser Company" (scraped); 13–14px secondary ink; separated from content by whitespace or one hairline, nothing else (inferred)

### Table of contents / anchors
- Essay pages open with anchor links to sections and subsections (scraped); render as a plain ink-link list, optionally numbered to match the bold principle markers (inferred)

## 6. Imagery & Iconography
- Hand-drawn / digitally-rendered vector illustration only (scraped): roadside Americana — brontosaurus statue, desert highways — figures in cars, intimate small moments; simple line drawings for conceptual points
- Warm approachable palette matching the narrative: desert ochres, ocean blues, sunset oranges (scraped description)
- No product screenshots, no stock photography, no icon set; the wordmark and drawings are the only graphics (scraped observation)
- Texture: visible hand quality — wobbly lines, flat fills, paper-consistent grounds; grain/noise acceptable (inferred)
- If icons are unavoidable in emulation: draw them — single-weight, slightly imperfect strokes, ink-colored (inferred)
- Illustration placement rhythm (scraped structure): one image per 2–4 subsections, alternating scene sizes so the essay breathes
- Alt text written narratively to match the memoir voice (inferred best practice)
- Related product brands (Arc, Dia) keep their own art direction — this site never borrows their gradients or UI chrome (inferred from scraped separation of domains)

## 7. Motion & Interaction
### Timing & curves (all inferred — the real site is intentionally near-static)
| Token | Value | Use |
|---|---|---|
| duration-micro | 150ms | link underline/color |
| duration-ui | 200–250ms | any hover tint, disclosure |
| duration-entrance | 400ms | optional one-shot illustration fade-in |
| ease-plain | `ease-out` | everything |
| ease-settle | `cubic-bezier(0.33, 1, 0.68, 1)` | the one playful exception, if used |

### Animation inventory
- **Page transitions**: none; instant loads are part of the human, low-tech feel
- **Scroll behavior**: plain scrolling + anchor jumps within the essay (scraped structure); `scroll-behavior: smooth` acceptable for anchors (inferred)
- **Scroll-triggered**: at most a gentle one-shot opacity fade on illustrations entering viewport, 400ms, no translate (inferred); no parallax, no pinning, no scrubbing
- **Hover micro**: underline weight/color shifts only; illustrations do not react (inferred)
- **Stagger**: none — nothing arrives in sequence
- **Playful exception**: if any delight is added (e.g., a drawing that waves on hover), it should be a hand-drawn frame-swap (2–3 frame flipbook at ~8fps) rather than a tween — matching the illustration language (inferred, in the spirit of the brand's crafted-not-engineered feel)
- **Reduced motion**: trivially satisfied; ensure any flipbook/fade respects `prefers-reduced-motion` (inferred)

## 8. Voice & Copy
- Conversational, personal, memoir-meets-manifesto; earnest without corporate polish; storytelling with colloquialisms — "god forbid," "damn," "kiddo" (scraped)
- First-person plural, direct address; alternates instruction and anecdote; balances earnestness with accessibility, avoiding jargon (scraped characterization)
- Real examples (scraped): "We're building better ways to use the internet with Dia and Arc." · "Notes on Roadtrips" · "We're building a better way to use the internet, starting with your browser."
- Sentence case; long-form essays as the primary brand surface; microcopy plain and human ("Newsletter", "Jobs", "Company Values"); cultural citations (movies) in footnotes (scraped)
- Copy does the work components normally do: instead of a feature grid, a story; instead of a CTA button, an invitation in a sentence
- Product links are phrased as introductions, not conversions: "Meet Dia Browser", "Get Arc Browser" (scraped)
- Metaphor-driven structure: company values organized as a "roadtrip" with five legs (scraped)
- Never used: growth-marketing vocabulary ("supercharge", "unlock"), feature bullets, social-proof walls, exclamation-heavy CTAs

## 9. Signature Moves
- Warm `#EEEEE7` paper background — the brand is a beige, not a blue
- One-sentence homepage; radical reduction as confidence
- Hand-drawn Americana illustration instead of any product UI imagery
- Long-form personal essay ("Notes on Roadtrips") as the flagship brand artifact, with numbered principles and repeated pull quotes
- Underlined ink-colored text links; effectively zero buttons, zero forms (newsletter = external Substack link)
- Book-like measure (~680px) with oversized 18–20px body type and 1.65 leading
- Publishing conventions over SaaS conventions: footnotes, citations, anchors, a copyright line as the entire footer
- Near-total absence of motion — stillness, instant loads, and plain scrolling as brand traits

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #EEEEE7;               /* scraped theme-color */
  --color-surface: #F7F7F2;          /* inferred */
  --color-surface-hover: #E4E4DB;    /* inferred */
  --color-ink: #2B2B28;              /* inferred */
  --color-ink-strong: #1D1D1B;       /* inferred */
  --color-text-2: #6E6E66;           /* inferred */
  --color-text-faint: #9B9B90;       /* inferred */
  --color-border: #D8D8CE;           /* inferred */
  --color-error: #B0483B;            /* inferred */
  /* illustration palette (inferred from scraped description) */
  --color-desert: #E0A458; --color-ocean: #5B8FB9;
  --color-sunset: #E2725B; --color-sage: #B9C4A3; --color-sky: #CFE0E8;
  /* type (stand-in faces — real faces unexposed) */
  --font-display: "GT Alpina", "Tiempos Headline", Georgia, serif;
  --font-body: "Untitled Sans", Graphik, -apple-system, "Helvetica Neue", sans-serif;
  --text-display: 52px; --text-section: 32px; --text-quote: 26px;
  --text-number: 22px; --text-body: 19px; --text-nav: 16px; --text-footnote: 13px;
  --weight-body: 400; --weight-nav: 500; --weight-display: 600; --weight-number: 700;
  --leading-display: 1.1; --leading-quote: 1.35; --leading-body: 1.65;
  --underline-offset: 3px;
  /* space */
  --space-1: 8px;  --space-2: 16px; --space-3: 32px;
  --space-4: 56px; --space-5: 96px; --space-6: 144px;
  /* shape & elevation */
  --radius-sm: 8px; --radius-md: 12px;  /* rarely used */
  --shadow-none: none;                  /* flat paper, no elevation */
  /* z-index (barely used) */
  --z-sticky: 10; --z-overlay: 20;
  /* motion (minimal by design) */
  --duration-micro: 150ms; --duration-ui: 225ms; --duration-entrance: 400ms;
  --ease-plain: ease-out;
  --ease-settle: cubic-bezier(0.33, 1, 0.68, 1);
  /* layout: single collapse ~700px */
  --max-width: 680px;        /* text column */
  --max-width-art: 900px;    /* illustrations may exceed the measure */
}
```

```css
/* TBC ink link — the primary interactive component */
a.ink {
  color: var(--color-ink);
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: var(--underline-offset);
  transition: color var(--duration-micro) var(--ease-plain),
              text-decoration-thickness var(--duration-micro) var(--ease-plain);
}
a.ink:hover  { text-decoration-thickness: 2px; }
a.ink:active { color: var(--color-ink-strong); }
a.ink:focus-visible { outline: 2px solid var(--color-ink); outline-offset: 2px; }
/* optional button, kept humble */
.btn-paper { padding: 10px 20px; border-radius: var(--radius-sm);
  border: 1px solid var(--color-ink); background: transparent;
  color: var(--color-ink); font: 500 16px/1 var(--font-body);
  transition: background var(--duration-micro) var(--ease-plain),
              color var(--duration-micro) var(--ease-plain); }
.btn-paper:hover { background: var(--color-ink); color: var(--color-bg); }
```

```css
/* TBC essay column with numbered principle + pull quote */
.essay { max-width: var(--max-width); margin-inline: auto; padding-inline: 24px;
  font: 400 var(--text-body)/var(--leading-body) var(--font-body);
  color: var(--color-ink); background: var(--color-bg); }
.essay h1 { font: 600 clamp(36px, 6vw, 52px)/1.1 var(--font-display);
  letter-spacing: -0.01em; margin-block: var(--space-5) var(--space-3); }
.principle { margin-top: var(--space-4); }
.principle .num { font: 700 var(--text-number)/1 var(--font-body); display: block;
  margin-bottom: var(--space-1); }
.pullquote { font: 500 italic var(--text-quote)/var(--leading-quote) var(--font-display);
  margin-block: var(--space-4); }
.footnote { font-size: var(--text-footnote); color: var(--color-text-2); }
```

```css
/* Signature: paper ground with hand-drawn art block */
body { background: var(--color-bg); }
.art-block { max-width: var(--max-width-art); margin: var(--space-4) auto; }
.art-block img { width: 100%; height: auto; display: block; /* transparent PNG/SVG — paper shows through */ }
@media (prefers-reduced-motion: no-preference) {
  .art-block { animation: appear var(--duration-entrance) var(--ease-plain) both;
    animation-timeline: view(); animation-range: entry 0% entry 40%; }
  @keyframes appear { from { opacity: 0; } }  /* fade only — no translate */
}
```

```css
/* TBC one-sentence homepage (the entire page) */
.home { min-height: 100svh; display: flex; flex-direction: column;
  background: var(--color-bg); color: var(--color-ink); }
.home nav, .home footer { display: flex; flex-wrap: wrap; gap: 24px;
  padding: 32px clamp(20px, 5vw, 56px); font: 500 var(--text-nav)/1.5 var(--font-body); }
.home main { flex: 1; display: grid; place-content: center;
  padding-inline: clamp(20px, 5vw, 56px); }
.home main p { max-width: 22ch;  /* wraps the single sentence like set type */
  font: 600 clamp(28px, 4.5vw, 44px)/1.25 var(--font-display); }
.home footer { font-size: var(--text-footnote); color: var(--color-text-2); }
/* copy: "We're building better ways to use the internet with Dia and Arc." */
```
