# Anthropic — Web Design Language
> Source: https://www.anthropic.com, https://claude.com/product/overview (302 redirect from anthropic.com/claude), token capture via design.withfudge.com/tokens/anthropic.com (40 pages, 240 colors, 92 spacing values, 5 radii, 0 shadows, 0 gradients), typeface documentation via FontOfWeb + type.today (Styrene in use: ANTHROP\C) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Anthropic.com reads like a research monograph that happens to be a website: warm paper-toned backgrounds, a serif display voice, and long-form editorial rhythm instead of SaaS gloss. The palette is almost entirely ivory/oatmeal neutrals with one warm clay accent, signaling "thoughtful institution" rather than "tech startup." The token capture is unambiguous about the discipline: across 40 crawled pages there are **zero shadows and zero gradients** — depth is expressed only through paper-tone layering (`#faf9f5` page → `#f0eee6` panel) and hairline rules. Hierarchy comes from a two-voice type system (Tiempos serif for thought, Styrene sans for utility) at nearly constant 400 weight, so size and placement — not boldness or color — carry the structure. Hand-drawn charcoal-and-crayon illustration adds human warmth to offset the academic sobriety. The overall effect: a safety-serious research institution publishing on very good paper.

## 2. Color
Core palette (all hexes below scraped from the token capture unless flagged):

| Role | Value | Notes |
|---|---|---|
| Background (page) | `#faf9f5` | Warm ivory base; never pure white |
| Background (alt captures) | `#f9f8f3` / `#f9f8f4` | Per-page ivory variants (scraped) |
| Surface (cards, panels) | `#f0eee6` | Oatmeal/parchment; primary card fill |
| Surface (variants) | `#f1eee7` / `#f2f0e8` | Adjacent parchment tones (scraped) |
| Text primary / ink | `#141413` | Warm near-black; variants `#141412`, `#151513` |
| Ink strongest | `#0f0f0e` / `#0f0f0d` | Darkest scraped values (dark sections, logo) |
| True black | `#000000` | Present but rare (media, overlays) |
| Text secondary | `#5e5d59` | Warm gray body-support |
| Text tertiary | `#6a6966` | Metadata, timestamps |
| Text quaternary / disabled | `#8e8d88` | Lightest legible gray (scraped) |
| Border-dark / dark-surface text | `#464541` | Deep warm gray (scraped) |
| Accent — Claude clay | `#d97757` | Primary warm accent, CTAs/highlights (inferred; documented in Anthropic brand guidelines) |
| Accent — book cloth | `#cc785c` | Editorial links/hover accent (inferred, documented) |
| Tint — kraft | `#d4a27f` | Illustration fill (inferred, documented) |
| Tint — manilla | `#ebdbbc` | Illustration fill / soft highlight (inferred, documented) |
| Hairline border | `#e5e3da` | Divider rules on ivory (inferred shade — between `#f0eee6` and the grays) |

### State variants (inferred from renders; the site defines no gradients/shadows to lean on)
| Token | Default | Hover | Active/Pressed |
|---|---|---|---|
| Primary button | `#141413` fill | `#0f0f0e` fill (deepen) | `#000000` |
| Secondary button | transparent, 1px `#141413` border | `#f0eee6` fill wash | `#e8e5db` wash |
| Text link | `#141413` underlined or plain | `#cc785c` (book cloth) | `#b5654a` |
| Card | `#f0eee6` | `#ebe8de` tint shift (no shadow) | — |

### Overlays & alpha (inferred)
- Scrim over imagery: `rgba(20, 20, 19, 0.5–0.7)`
- Nav on scroll: `rgba(250, 249, 245, 0.9)` + `backdrop-filter: blur(12px)`
- Focus ring: `2px solid #141413`, offset 2px — a high-contrast ink ring rather than browser blue

### Dark sections
Inverted blocks (footer, some feature bands) use ink `#141413`–`#0f0f0e` grounds with ivory `#faf9f5` text and `#464541`-range hairlines. There is no separate dark "mode" — dark is a sectional device.

## 3. Typography
Two commercial families self-hosted under internal names (scraped as "Anthropic Serif" and "Anthropic Sans"; documented commercially as **Tiempos** — Klim Type Foundry — and **Styrene A/B** — Commercial Type, per FontOfWeb and type.today):

- `--font-serif: "Anthropic Serif", "Tiempos Text", Georgia, "Times New Roman", serif` — Times appears in the token capture as an actual runtime fallback in use.
- `--font-sans: "Anthropic Sans", "Styrene B", -apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif` — "Applesystem" at 400/14px appears in the capture as the system-font fallback in use.
- Loading: self-hosted WOFF2 under first-party names, `font-display: swap`-style behavior (inferred — the visible Times/system fallbacks in the capture imply swap loading).
- Weight discipline: 400 dominates (all four scraped styles are weight 400); 500 appears only in nav/buttons (inferred). Hierarchy is carried by size, never by 700+ bombast.
- Figures: Styrene lining figures for stats; tabular numerals for dates/pricing tables (inferred).

### Type scale (rows marked * contain scraped values; others inferred from renders)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display XL | 64–72px / 4–4.5rem | 400 serif | 1.05 | -0.01em | Homepage hero |
| Display | 48–56px / 3–3.5rem | 400 serif | 1.1 | -0.01em | Section heroes |
| H2 | 40px / 2.5rem | 400 serif | 1.15 | 0 | Section titles |
| H3 | 28px / 1.75rem | 400 serif or 500 sans | 1.25 | 0 | Card-group titles |
| H4 | 21px / 1.3125rem | 500 sans | 1.3 | 0 | Card titles |
| Body serif* | 16px / 1rem | 400 | scraped 20px (1.25); prose runs ~1.6 | 0 | Long-form editorial |
| Body sans* | 14px / 0.875rem | 400 | normal | 0 | UI copy, nav |
| Caption/meta | 13px | 400 | 1.4 | +0.01em | Dates, categories in `#6a6966` |
| Eyebrow/label* | 10–12px | 400–500 sans | scraped 12px (1.2) | +0.08em, UPPERCASE | Section kickers |
| Legal | 12px | 400 | 1.5 | 0 | Footer legal |

- Responsive shifts (inferred): display drops ~35% below 768px (72→46px) via `clamp()`; body holds 16px; H2 40→30px.
- Casing: strict sentence case on every heading; uppercase confined to tiny eyebrow labels.

## 4. Layout & Grid
- **Containers:** max-width ≈ 1280px; gutters 24px mobile / 48px desktop (inferred). Prose measure constrained to ~65–72ch (~680px).
- **Grid:** 12-column, ~24px gutters (inferred). Signature asymmetric splits — 5/7 or 4/8: big serif statement left, supporting copy right. Editorial index lists span full width with internal columns for date/title/category.
- **Spacing scale** (92 distinct values scraped site-wide; practical 8-based ladder inferred from renders): 4, 8, 12, 16, 24, 32, 48, 64, 96, 128, 160px.
- **Section vertical rhythm:** 96–160px between major sections; 48–64px heading-to-content; hairline-ruled list rows padded 24–32px.
- **Breakpoints** (inferred, standard build): 640px, 768px, 1024px, 1280px.
- **Header:** slim (~72px) ivory bar; ANTHROP\C logotype left (backslash glyph); sentence-case links (Research, Policy, Commitments, Learn, News); one dark "Try Claude" button right; hairline bottom border; translucent blur on scroll (inferred).
- **Footer:** massive sitemap — 9 scraped column groups (Products, Models, Solutions, Platform, Resources, Programs, Help, Company, Terms) plus legal/social row; set on ink `#141413` with ivory text or on parchment.
- **Z-index layers** (inferred): content 0 → sticky nav 100 → dropdown 200 → modal/overlay 1000.

## 5. Components
### Primary button
- Anatomy: sans 500, 14–16px sentence-case label; padding ~12px 24px; radius ~8px (the site carries only 5 radius values total, all small); fill `#141413`, text `#faf9f5`.
- States: hover `#0f0f0e`; active `#000000`; focus-visible 2px ink ring offset 2px; disabled `#8e8d88` on `#f0eee6` (inferred).
- Transition: background-color 200ms ease (inferred). No scale, no shadow.

### Secondary / ghost button
- Secondary: transparent fill, 1px `#141413` border, ink label; hover washes `#f0eee6`; active `#e8e5db`.
- Ghost/tertiary: plain text link with trailing "→"; hover shifts to book cloth `#cc785c` and the arrow nudges 4px right (inferred).

### Cards (news, research, featured grid)
- Flat `#f0eee6` panel, radius 12–16px, **no shadow ever** (0 shadows scraped), padding ~32px.
- Anatomy: uppercase eyebrow (category, 10–12px, `#6a6966`) → serif title (21–28px ink) → optional 1–2 line summary (`#5e5d59`) → date meta.
- States: whole card clickable; hover deepens fill and/or shifts title to book cloth; no lift or scale (inferred).

### Editorial index rows
- Full-width rows split by 1px `#e5e3da` hairlines; columns: date (gray sans, tabular figures) | serif title | category tag; hover tints the row background parchment.

### Nav dropdowns
- Ivory panels, hairline border, small radius, 200ms fade+drop; two-column link lists at 13px sans; thin-line icons where present.

### Forms / inputs
- 1px `#8e8d88` border (or bottom-rule variant) on ivory, radius ~6px, 16px sans text; focus: border thickens to 2px ink; error text in clay `#d97757` (inferred).

### Badges / tags
- Small uppercase sans labels, hairline-outlined pill or plain gray text; no filled color chips (inferred).

## 6. Imagery & Iconography
- Signature hand-drawn illustration: charcoal/crayon line quality, deliberately imperfect strokes; figures, hands, abstract diagrams; fills restricted to kraft `#d4a27f`, manilla `#ebdbbc`, clay `#d97757` on ivory.
- Photography rare; when present it is muted, warm-graded, documentary (people at work, print-like grain). No glossy 3D renders, no stock gloss.
- Product UI (Claude) screenshots framed flat on parchment panels — no device mockups, no perspective tilts, no floating shadows.
- Icons: 1.5px-stroke geometric line icons in ink; sparing use (nav, footer, feature lists).
- Diagrams styled like academic figures: thin rules, serif captions, restrained color.

## 7. Motion & Interaction
Philosophy: motion as page-turning, not spectacle. Nothing bounces, nothing autoplays loudly. (Timing values inferred — no animation tokens were extractable from the capture.)

| Animation | Trigger | Duration | Easing | Description |
|---|---|---|---|---|
| Section reveal | scroll into view | 400–600ms | cubic-bezier(0.25, 0.1, 0.25, 1) | opacity 0→1 + translateY 16–24px→0, fires once |
| Stagger children | scroll | 60–80ms/item delay | same | card grids cascade left→right, max ~4 deep |
| Link hover | hover | 150–200ms | ease | color → `#cc785c`; underline draws in |
| Button hover | hover | 200ms | ease | background deepens; no transform |
| Card hover | hover | 200ms | ease | background tint only — **no shadow, no lift** |
| Nav dropdown | hover/click | 200ms | ease-out | fade + 8px drop |
| Nav on scroll | scroll | 250ms | ease | bar gains alpha background + blur |
| Illustration loops | in view | 3–6s loop | linear / ease-in-out | subtle drawn-line or float loops, small amplitude |
| Page transitions | route change | none | — | plain loads; stillness is intentional |

- Hero contains no video; the homepage opens static.
- Reduced motion: translate-reveals collapse to plain fades/none under `prefers-reduced-motion` (inferred best practice; the motion budget is small enough to degrade invisibly).

## 8. Voice & Copy
- Strict sentence case; declarative, sober, mission-led. Long substantive sentences allowed — written like researchers, not marketers.
- Safety and responsibility lead; product capability follows. Institutional first person ("we build…").
- Microcopy plain and unhyped: "Read more", "Try Claude", "Learn more".
- Real examples (scraped):
  - "AI research and products that put safety at the frontier"
  - "Anthropic is built on hard questions."
  - "At Anthropic, we build AI to serve humanity's long-term well-being."
  - "Meet your thinking partner" / "Tackle any big, bold, bewildering challenge with Claude" (claude.com)

## 9. Signature Moves
- Ivory `#faf9f5` page + oatmeal `#f0eee6` cards — a warm paper stack, never pure white.
- Regular-weight Tiempos serif display; Styrene sans strictly for utility.
- One warm clay/book-cloth accent family doing all accent work; no blues, no greens.
- Absolute flatness: 0 shadows, 0 gradients across 40 scraped pages — depth via paper tones and hairlines.
- Hand-drawn charcoal illustrations with kraft/manilla fills.
- Editorial hairline index rows with gray tabular dates.
- The ANTHROP\C backslash logotype.
- Strict sentence case, safety-first headlines; massive sitemap footer.

## 10. Emulation Tokens
```css
:root {
  /* color — scraped unless noted */
  --color-bg: #faf9f5;
  --color-bg-alt: #f9f8f3;
  --color-surface: #f0eee6;
  --color-surface-2: #f2f0e8;
  --color-surface-hover: #ebe8de;      /* inferred */
  --color-ink: #141413;
  --color-ink-strong: #0f0f0e;
  --color-ink-max: #000000;
  --color-text-secondary: #5e5d59;
  --color-text-tertiary: #6a6966;
  --color-text-disabled: #8e8d88;
  --color-dark-border: #464541;
  --color-accent: #d97757;             /* clay (documented, hex inferred) */
  --color-accent-link: #cc785c;        /* book cloth (documented, hex inferred) */
  --color-accent-active: #b5654a;      /* inferred */
  --color-tint-kraft: #d4a27f;         /* inferred */
  --color-tint-manilla: #ebdbbc;       /* inferred */
  --color-border: #e5e3da;             /* inferred */
  --color-scrim: rgba(20, 20, 19, 0.6);/* inferred */
  --color-nav-glass: rgba(250, 249, 245, 0.9); /* inferred */

  /* type */
  --font-serif: "Anthropic Serif", "Tiempos Text", Georgia, "Times New Roman", serif;
  --font-sans: "Anthropic Sans", "Styrene B", -apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif;
  --text-display-xl: clamp(2.875rem, 6vw, 4.5rem);  /* 46–72px */
  --text-display: clamp(2.25rem, 4.5vw, 3.5rem);
  --text-h2: clamp(1.875rem, 3vw, 2.5rem);
  --text-h3: 1.75rem;
  --text-h4: 1.3125rem;
  --text-body: 1rem;          /* serif prose, lh 1.6; scraped 16px */
  --text-ui: 0.875rem;        /* sans; scraped 14px */
  --text-caption: 0.8125rem;
  --text-eyebrow: 0.75rem;    /* uppercase, ls 0.08em; scraped floor 10px */
  --lh-display: 1.05;
  --lh-heading: 1.15;
  --lh-body: 1.6;

  /* radius — site carries only ~5 small values (scraped count) */
  --radius-xs: 4px;
  --radius-sm: 8px;
  --radius-md: 12px;
  --radius-lg: 16px;
  --radius-pill: 999px;       /* inferred, rare */

  /* spacing — 8-based ladder inferred from 92 scraped values */
  --space-1: 4px;  --space-2: 8px;   --space-3: 12px;  --space-4: 16px;
  --space-5: 24px; --space-6: 32px;  --space-7: 48px;  --space-8: 64px;
  --space-9: 96px; --space-10: 128px; --space-11: 160px;

  /* layout — breakpoints (inferred): 640 / 768 / 1024 / 1280px */
  --max-width: 1280px;
  --max-width-prose: 680px;
  --gutter: 24px;
  --gutter-desktop: 48px;

  /* elevation: none — the brand rule (0 shadows scraped) */
  --shadow-none: none;

  /* z-index (inferred) */
  --z-nav: 100; --z-dropdown: 200; --z-modal: 1000;

  /* motion (inferred) */
  --ease-standard: cubic-bezier(0.25, 0.1, 0.25, 1);
  --ease-out: cubic-bezier(0.16, 1, 0.3, 1);
  --duration-fast: 150ms;
  --duration-base: 200ms;
  --duration-reveal: 500ms;
  --stagger: 70ms;
}
@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition-duration: 1ms !important; }
}
```

### Primary button (with states)
```css
.btn-primary {
  font: 500 0.9375rem/1 var(--font-sans);
  color: var(--color-bg);
  background: var(--color-ink);
  padding: 12px 24px;
  border: 0;
  border-radius: var(--radius-sm);
  cursor: pointer;
  transition: background-color var(--duration-base) var(--ease-standard);
}
.btn-primary:hover  { background: var(--color-ink-strong); }
.btn-primary:active { background: var(--color-ink-max); }
.btn-primary:focus-visible { outline: 2px solid var(--color-ink); outline-offset: 2px; }
.btn-primary:disabled { color: var(--color-text-disabled); background: var(--color-surface); cursor: default; }
```

### Editorial card (flat parchment, no shadow)
```css
.card {
  background: var(--color-surface);
  border-radius: var(--radius-lg);
  padding: var(--space-6);
  transition: background-color var(--duration-base) var(--ease-standard);
}
.card:hover { background: var(--color-surface-hover); }
.card .eyebrow {
  font: 500 var(--text-eyebrow)/1.2 var(--font-sans);
  letter-spacing: 0.08em; text-transform: uppercase;
  color: var(--color-text-tertiary);
}
.card h3 {
  font: 400 var(--text-h4)/1.3 var(--font-serif);
  color: var(--color-ink); margin: var(--space-3) 0 var(--space-2);
}
.card:hover h3 { color: var(--color-accent-link); }
```

### Signature effect — paper-toned serif editorial block
```css
.editorial {
  background: var(--color-bg);
  border-top: 1px solid var(--color-border);
  padding: var(--space-9) var(--gutter);
}
.editorial h2 {
  font: 400 var(--text-display)/var(--lh-display) var(--font-serif);
  color: var(--color-ink);
  max-width: 18ch;                    /* big serif statement, left column */
}
.editorial p {
  font: 400 var(--text-body)/var(--lh-body) var(--font-serif);
  color: var(--color-text-secondary);
  max-width: var(--max-width-prose);
}
.editorial a { color: inherit; text-decoration: underline; text-underline-offset: 3px; }
.editorial a:hover { color: var(--color-accent-link); }
```
