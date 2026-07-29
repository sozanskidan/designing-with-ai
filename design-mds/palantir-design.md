# Palantir — Web Design Language
> Source: https://www.palantir.com · https://www.palantir.com/platforms/foundry/ · https://www.palantir.com/aip/ · https://maxibestof.one/websites/51079-palantir · Scraped 2026-07-29 · palantir.com is JS-rendered, so layout/motion details are largely (inferred); typeface + core hex palette documented via MaxiBestOf

## 1. Design Philosophy
Palantir.com presents software as critical infrastructure: a stark, engineering-report aesthetic of near-black grounds, white grotesque type, hairline rules and mission-footage imagery. It reads more like a defense-industry dossier than a SaaS site — trademarked declarative taglines ("Foundational Software of Tomorrow. Delivered Today.™"), technical diction ("Ontology", "operating system for the modern enterprise"), and restrained monochrome UI with one deliberate accent: raw hyperlink blue `#0000EE`. Layout is grid-disciplined and text-dense, favoring authority and gravity over friendliness; the chevron mark on black anchors everything. Nothing tries to be liked — the design's job is to look inevitable.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background dark | `#0B0C0D` (inferred) | Hero/campaign bands; OG asset is chevron on black (scraped) |
| Panel dark | `#1E2124` | Documented (MaxiBestOf); cards/sections on dark |
| Background light | `#FFFFFF` | Alternating white editorial bands (inferred) |
| Text on dark | `#DBDBDB` | Documented; softened white body text |
| Text on dark, headlines | `#FFFFFF` (inferred) | Full white reserved for display type |
| Text on light | `#1E2124` | Documented value reused as ink (inferred pairing) |
| Text secondary | `#767676` | Documented; captions, meta |
| Text tertiary | `#B9B9B9` | Documented; de-emphasized labels on dark |
| Accent / links | `#0000EE` | Documented — deliberate raw hyperlink blue |
| Link hover | `#0000B8` (inferred) | Darkened; or underline-only change |
| Link visited | `#551A8B` (inferred) | Browsers' default purple fits the raw-link gesture |
| Border on dark | `#2E3237` (inferred) | Hairline grid rules |
| Border on light | `#E0E0E0` (inferred) | |
| Ghost button border | `#FFFFFF` on dark, `#1E2124` on light (inferred) | 1px |
| Ghost hover fill | `#FFFFFF` (label flips to `#0B0C0D`) (inferred) | |
| Scrim over footage | `linear-gradient(180deg, rgba(0,0,0,0.2), rgba(0,0,0,0.7))` (inferred) | Video legibility |
| Success/alert | avoided; monochrome + blue only (inferred) | Institutional restraint |

No decorative gradients; the only gradient is the footage scrim. Dark and light are alternating section themes, not a user-facing mode toggle (inferred).

## 3. Typography
- **Family (documented):** `Alliance` No.1/No.2 by Degarism Studio — sharp contemporary neo-grotesque.
- **Stack (emulation):** `"Alliance No.1", "Alliance", "Helvetica Neue", Arial, sans-serif` (fallbacks inferred)
- **Secondary:** monospace for data/eyebrow/index accents (inferred): `"IBM Plex Mono", Menlo, monospace`.
- **Weights:** 400 body, 500 headlines; medium at large sizes rather than heavy bolds (inferred).
- **Loading:** self-hosted woff2, `font-display: swap` (inferred). Site built on Next.js (documented).
- **Figures:** tabular figures for stat blocks; slashed-zero mono for indices (inferred).

Type scale (approx./inferred; taglines scraped):

| Name | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | 56–72px / 3.5–4.5rem | 500 | 1.05 | -0.01em | "Foundational Software of Tomorrow. Delivered Today.™" |
| H2 | 32–40px / 2–2.5rem | 500 | 1.15 | 0 | Section theses |
| H3 | 22–24px / 1.4rem | 500 | 1.25 | 0 | Module/card titles |
| Body large | 18px / 1.125rem | 400 | 1.6 | 0 | Lead paragraphs |
| Body | 15–17px / 1rem | 400 | 1.6 | 0 | Editorial copy, ~680px measure |
| Stat numeral | 48–64px / 3–4rem | 400–500 | 1 | -0.01em | KPI blocks, tabular figures |
| Eyebrow / tag | 11–12px / 0.75rem | 400 mono | 1.2 | +0.1em CAPS | "PLATFORM", section indices ("01") |
| Caption / legal | 12px / 0.75rem | 400 | 1.5 | +0.02em | Footnotes, ™ notices |

- Responsive shift: display 72 → 36px mobile; measure stays narrow (inferred).
- **Case:** Title Case for major headlines with ™ retained (scraped); UPPERCASE for eyebrow labels and nav categories (inferred); sentence case body (scraped meta description).

## 4. Layout & Grid
- **Container:** content max ~1320–1440px, side margins 24px mobile / 48px tablet / 80px desktop; full-width dark/light band alternation (inferred).
- **Grid:** 12-col, 24–32px gutters; case-study modules as hairline-framed cells 2–3 up; editorial column ~680px (inferred).
- **Breakpoints (inferred):** 768 / 1024 / 1440 px.
- **Spacing scale (inferred, 8px base):** 8, 16, 24, 32, 48, 64, 96, 120, 160. Section rhythm heavy: 120–160px desktop, 64px mobile — silence as authority.
- **Header (inferred from site structure):** slim dark bar ~64px — chevron+wordmark left; nav: Platforms (AIP, Foundry, Gotham, Apollo), Offerings/Impact, Careers; right CTA "Get started"/contact. Sticky, translucent dark (`rgba(11,12,13,0.85)` + blur) on scroll. Dropdowns: full-width dark panels, platform names with one-line descriptors.
- **Hero:** full-viewport dark — looping footage or data render; small mono eyebrow top or above headline; large white headline lower-left; scroll cue (inferred).
- **Body rhythm:** dark hero → white editorial band → dark stat/case band → white → dark footer (inferred).
- **Footer:** dark, multi-column sitemap (Platforms / Offerings / Impact / About / Careers / Legal), fine print with trademark notices, chevron mark (inferred).
- **Z-index (inferred):** content 1 · header 100 · dropdown 200 · overlay 300 · modal 400.

## 5. Components
**Ghost button (primary pattern on dark)**
- Rectangle, radius 0–2px; height 44–48px; padding 12px 28px.
- Label 13–14px / 500 / sentence case or CAPS + arrow "→".
- Default: transparent fill, 1px `#FFF` border, white label. Hover: fills `#FFF`, label `#0B0C0D`, 200ms ease. Active: fill `#DBDBDB`. Focus-visible: 2px `#0000EE` outline offset 2px (inferred). Disabled: border/label `#767676` at 50% (inferred).
- Light-section variant: 1px `#1E2124` border, dark label; hover fills dark, label white.

**Solid button (rare, conversion points)**
- White fill on dark (label `#0B0C0D`) or dark fill on light; same geometry (inferred).

**Text links**
- On light: raw `#0000EE`, underlined — the documented signature. Hover: `#0000B8` or thicker underline. On dark: white with 1px underline, hover shifts to `#B9B9B9` (inferred).
- Arrowed pattern: "Learn more →"; arrow nudges +4px on hover, 200ms (inferred).

**Nav**
- Items 13–14px, sentence case or caps; hover: opacity 0.7 → 1 or underline; active section marked by thin underline (inferred). Dropdown panels open 200ms ease-out fade.

**Hairline module card**
- 1px `#2E3237` border cell in a strict grid; padding 32px; anatomy: mono eyebrow ("FOUNDRY") → H3 → dense body `#DBDBDB` → "Learn more →". Hover: border lightens to `#767676`, background lifts to `#1E2124`, 250ms (inferred).

**Stat block**
- Oversized tabular numeral (48–64px) + small mono caption below; hairline top rule; numerals may count up on reveal (inferred).

**Video panel**
- Full-bleed autoplay loop, dark scrim, overlaid eyebrow + headline + ghost button (inferred).

**Inputs (contact forms)**
- Rectangular, radius 0; dark: `#1E2124` fill, 1px `#2E3237` border, white text; focus border `#FFFFFF` or `#0000EE`; labels small caps mono (inferred).

**Footer**
- Column heads 12px caps `#767676`; links 14px `#DBDBDB`; legal block with ™/® notices 12px `#767676` (inferred).

## 6. Imagery & Iconography
- Photography/footage: satellites, factories, aircraft, control rooms, terrain — operational and geopolitical, graded dark and desaturated (inferred; consistent with the chevron-on-black OG asset, scraped: `Palantir_Chevron.png`).
- Abstract data visuals: ontology graphs, wireframe/grid renders in thin white or grey lines on black (inferred).
- Product UI screenshots framed in dark browser chrome, kept small and factual rather than glamorized (inferred).
- Iconography minimal: 1px stroke glyphs, arrows, plus/chevron marks; the Palantir chevron is the dominant symbol.
- No illustration, no mascots; imagery is evidence, not decoration.

## 7. Motion & Interaction
Institutional restraint: slow fades, no bounce, no parallax theatrics. All values inferred (site is JS-rendered; motion not directly extractable).

| Animation | Spec |
|---|---|
| Hero load | Eyebrow → headline → CTA fade-up 12–20px, 600ms `cubic-bezier(0.25,0.1,0.25,1)`, 120ms stagger |
| Background footage | Autoplay, muted, loop; slow (sometimes 0.5×) playback; scrim constant |
| Scroll reveals | Sections fade + translateY(24px→0), 500–600ms decel, threshold ~25%, once |
| Stat count-up | Numerals tween 0→value over 1s ease-out when revealed |
| Card hover | Border-color + background shift, 250ms ease; no lift/shadow |
| Ghost button hover | Fill/label invert, 200ms ease |
| Arrow links | "→" translates +4px, 200ms ease |
| Header | Condenses/gains blur backdrop after ~80px scroll, 250ms |
| Dropdown | Fade + 8px translateY, 200ms ease-out; close 150ms |
| Graph/line renders | SVG stroke-dashoffset draw-on, 1200ms ease-in-out, used sparingly |
| Page transitions | None; hard cuts maintain dossier feel |

- Stagger: 100–150ms; sequences read as briefing slides, not choreography.
- Easing vocabulary: `cubic-bezier(0.25,0.1,0.25,1)` standard; `ease-in-out` for draws; never spring curves.
- Reduced motion: freeze footage to poster frame, disable count-ups and draw-ons, keep fades (inferred best practice).

## 8. Voice & Copy
- Tone: absolute, mission-grade, engineering-legalistic; short declarative sentences; capitalized product nouns; ™ marks retained in display copy; zero exclamation points.
- Real examples (scraped):
  - "Foundational Software of Tomorrow. Delivered Today.™"
  - "Run your business as code. The Ontology/AI-powered operating system for the modern enterprise."
  - "We build software that empowers organizations to effectively integrate their data, decisions, and operations."
- Microcopy pattern (inferred): uppercase mono eyebrows ("PLATFORM", "IMPACT", "01 — ONTOLOGY"), arrowed "Learn more →" links, unadorned form labels.
- Vocabulary: "operational", "ontology", "deployment", "mission", "enterprise" — infrastructure diction, never growth-hacker diction.

## 9. Signature Moves
- Chevron logomark on pure black as the visual anchor.
- Two-sentence trademarked tagline construction ("…of Tomorrow. Delivered Today.™").
- Alliance grotesque at medium weight, huge sizes, tight leading.
- Raw `#0000EE` hyperlink blue kept deliberately as the only accent color.
- Alternating black/white full-width bands with hairline-ruled module grids.
- Small uppercase mono eyebrow labels (often numbered "01/02/03") above every headline.
- Dark, desaturated operational footage (satellites, plants, terrain) as hero media.
- Ghost-border rectangular buttons and "→" suffix links; stat numerals that count up.

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg-dark: #0b0c0d;              /* inferred */
  --color-bg-panel: #1e2124;             /* documented */
  --color-bg-light: #ffffff;
  --color-text-on-dark: #dbdbdb;         /* documented */
  --color-heading-on-dark: #ffffff;      /* inferred */
  --color-text-on-light: #1e2124;        /* documented value, pairing inferred */
  --color-text-secondary: #767676;       /* documented */
  --color-text-tertiary: #b9b9b9;        /* documented */
  --color-link: #0000ee;                 /* documented */
  --color-link-hover: #0000b8;           /* inferred */
  --color-link-visited: #551a8b;         /* inferred */
  --color-border-dark: #2e3237;          /* inferred */
  --color-border-light: #e0e0e0;         /* inferred */
  --scrim-footage: linear-gradient(180deg, rgba(0,0,0,.2), rgba(0,0,0,.7)); /* inferred */

  /* type */
  --font-sans: "Alliance No.1", "Alliance", "Helvetica Neue", Arial, sans-serif;
  --font-mono: "IBM Plex Mono", Menlo, monospace;      /* inferred */
  --text-display: clamp(2.25rem, 5.5vw, 4.5rem);
  --text-h2: clamp(1.75rem, 3vw, 2.5rem);
  --text-h3: 1.4rem; --text-body-lg: 1.125rem; --text-body: 1rem;
  --text-stat: clamp(3rem, 5vw, 4rem);
  --text-eyebrow: 0.75rem; --text-caption: 0.75rem;
  --leading-display: 1.05; --leading-body: 1.6;
  --tracking-eyebrow: 0.1em;
  --measure-editorial: 680px;                          /* inferred */

  /* radius & shadow */
  --radius-sm: 2px;                                    /* effectively square */
  --shadow-none: none;                                 /* borders, not shadows */

  /* spacing (8px base, heavy rhythm) */
  --space-1: 8px;  --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-6: 48px; --space-8: 64px; --space-12: 96px; --space-15: 120px;
  --space-section: 140px;                              /* inferred */

  /* layout — breakpoints: 768 / 1024 / 1440 (inferred) */
  --max-width: 1400px;                                 /* inferred */
  --gutter: 32px;

  /* z-index */
  --z-header: 100; --z-dropdown: 200; --z-overlay: 300; --z-modal: 400;

  /* motion */
  --ease-institutional: cubic-bezier(0.25, 0.1, 0.25, 1); /* inferred */
  --ease-draw: ease-in-out;
  --duration-hover: 200ms; --duration-card: 250ms;
  --duration-reveal: 550ms; --duration-countup: 1000ms; --duration-draw: 1200ms;
}
```

```css
/* Palantir ghost button, all states (dark-section variant) */
.btn-palantir {
  display: inline-flex; align-items: center; gap: 10px;
  min-height: 46px; padding: 12px 28px;
  background: transparent; color: #fff;
  font: 500 0.875rem/1 var(--font-sans);
  border: 1px solid #fff; border-radius: var(--radius-sm);
  cursor: pointer;
  transition: background var(--duration-hover) var(--ease-institutional),
              color var(--duration-hover) var(--ease-institutional);
}
.btn-palantir::after { content: "\2192"; transition: transform var(--duration-hover) var(--ease-institutional); }
.btn-palantir:hover  { background: #fff; color: var(--color-bg-dark); }
.btn-palantir:hover::after { transform: translateX(4px); }
.btn-palantir:active { background: var(--color-text-on-dark); }
.btn-palantir:focus-visible { outline: 2px solid var(--color-link); outline-offset: 2px; }
.btn-palantir:disabled { border-color: var(--color-text-secondary);
  color: var(--color-text-secondary); opacity: .5; cursor: default; }
.btn-palantir--light { color: var(--color-text-on-light); border-color: var(--color-text-on-light); }
.btn-palantir--light:hover { background: var(--color-text-on-light); color: #fff; }
```

```css
/* Palantir hairline module card (dark data-dense panel) */
.panel-palantir {
  background: var(--color-bg-dark);
  border: 1px solid var(--color-border-dark);
  padding: var(--space-4);
  color: var(--color-text-on-dark);
  transition: background var(--duration-card) var(--ease-institutional),
              border-color var(--duration-card) var(--ease-institutional);
}
.panel-palantir:hover { background: var(--color-bg-panel); border-color: var(--color-text-secondary); }
.panel-palantir__eyebrow { font: 400 var(--text-eyebrow)/1.2 var(--font-mono);
  text-transform: uppercase; letter-spacing: var(--tracking-eyebrow);
  color: var(--color-text-tertiary); }
.panel-palantir__title { font: 500 var(--text-h3)/1.25 var(--font-sans);
  color: #fff; margin-top: var(--space-2); }
.panel-palantir__body { font-size: 0.9375rem; line-height: var(--leading-body);
  margin-top: var(--space-2); }
.panel-palantir__stat { font: 500 var(--text-stat)/1 var(--font-sans);
  color: #fff; font-variant-numeric: tabular-nums;
  border-top: 1px solid var(--color-border-dark);
  margin-top: var(--space-3); padding-top: var(--space-3); }
```

```css
/* Signature effect: dossier hero — footage scrim + mono eyebrow + raw links */
.hero-palantir { position: relative; min-height: 92vh; display: grid;
  align-content: end; background: var(--color-bg-dark); color: #fff;
  padding: var(--space-8); overflow: hidden; }
.hero-palantir video { position: absolute; inset: 0; width: 100%; height: 100%;
  object-fit: cover; filter: saturate(0.6) brightness(0.8); }
.hero-palantir::after { content: ""; position: absolute; inset: 0; background: var(--scrim-footage); }
.hero-palantir > * { position: relative; z-index: 1; }
.hero-palantir .eyebrow { font: 400 var(--text-eyebrow)/1.2 var(--font-mono);
  text-transform: uppercase; letter-spacing: var(--tracking-eyebrow);
  color: var(--color-text-tertiary); margin-bottom: var(--space-2); }
.hero-palantir h1 { font: 500 var(--text-display)/var(--leading-display) var(--font-sans);
  max-width: 16ch; }

.prose-palantir a { color: var(--color-link); text-decoration: underline; }
.prose-palantir a:visited { color: var(--color-link-visited); }
@media (prefers-reduced-motion: reduce) { .hero-palantir video { display: none; } }
```
