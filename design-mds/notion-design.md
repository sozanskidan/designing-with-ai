# Notion — Web Design Language
> Source: https://www.notion.com, https://www.notion.com/product, token capture via design.withfudge.com/tokens/notion.com (24 pages, 182 colors, 12 typography styles, 119 spacing values, 49 radii, 3 shadows, 2 gradients) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Notion's marketing site is "friendly document" design: near-white paper backgrounds, ink-black Inter headlines, and the product's own UI as the hero artwork. It borrows the warmth of print — a serif (Lyon) and a monospace (iA Writer Mono S) appear as editorial accents inside an otherwise crisp sans system, echoing the app's own doc typography options. Color is disciplined: black/white/warm-gray neutrals with a family of blues (`#0075de` CTA up to `#1313ba` deep) doing all accent and AI-theming work; the token capture shows only 3 shadow styles and 2 gradients across 24 pages — restraint with just enough softness to feel like software. Hand-drawn, crosshatched ink illustrations and floating multiplayer chips (cursors, avatars, emoji) keep it human and tool-like rather than corporate. Every section carries proof — logos, stats, testimonials — but the visual temperature stays quiet.

## 2. Color
All 16 hexes below scraped from the token capture:

| Role | Value | Notes |
|---|---|---|
| Background (page) | `#ffffff` / `#fefefe` | White base |
| Surface (alt sections, cards) | `#f6f5f4` / `#f7f7f5` | Warm off-white "paper" panels |
| Surface (cool tint) | `#f6f6fc` | Lavender-tinted feature blocks (AI/agents) |
| Tint — lavender | `#cbcbef` | Illustration/diagram fills |
| Text primary | `#191918` | Notion ink near-black |
| Text secondary | `#615d59` | Warm gray |
| Accent — CTA blue | `#0075de` | Primary buttons, links |
| Accent — deep blue | `#1313ba` | Display highlights, dark feature art |
| Accent — navy heading | `#213183` | Dark blue text on tinted blocks |
| Accent — periwinkle | `#6666fd` | Bright AI/agent accent |
| Accent — slate blue | `#455dd3` | Mid blue, secondary accents |
| Muted purple | `#7171a8` | Support text on tinted surfaces |
| Dark section navy | `#02093a` | Deep navy bands/art |
| True black | `#000000` | Logos, icons, illustration ink |
| Border hairline | `#e8e6e3` | Card/table strokes (inferred shade) |

### State variants (inferred from renders)
| Token | Default | Hover | Active |
|---|---|---|---|
| Primary button | `#0075de` fill, white text | `#0069c7` (darken ~6%) | `#005cb0` |
| Dark button (alt) | `#191918` fill | `#000000` | — |
| Secondary button | `#f6f5f4` fill, ink text, hairline border | `#eceae8` | `#e3e1de` |
| Text link | `#0075de` | underline appears | `#005cb0` |
| Card | white/`#f6f5f4` + shadow-1 | shadow-2 + translateY(-2px) | — |

### Shadows (3 styles scraped as counts; values inferred to match renders)
- `--shadow-1: 0 1px 2px rgba(15, 15, 15, 0.06)` — inputs, chips
- `--shadow-2: 0 4px 16px rgba(2, 9, 58, 0.08)` — cards, screenshot frames
- `--shadow-3: 0 12px 32px rgba(2, 9, 58, 0.12)` — modals, hero screenshot

### Gradients (2 scraped as counts; construction inferred)
- AI/agent glow: `linear-gradient(135deg, #6666fd 0%, #455dd3 50%, #1313ba 100%)` on dark navy art
- Surface fade: `linear-gradient(180deg, #ffffff 0%, #f6f6fc 100%)` easing white sections into tinted ones

### Overlays
- Modal scrim `rgba(15, 15, 15, 0.5)`; nav on scroll `rgba(255,255,255,0.85)` + blur (inferred).

## 3. Typography
Scraped families (from the 12 captured styles): **Inter** (workhorse sans), **Lyon** (editorial serif), **iA Writer Mono S** (mono accent), **Noto Sans Arabic** (i18n). Stacks:
- `--font-sans: Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif`
- `--font-serif: "Lyon Text", Georgia, "Times New Roman", serif`
- `--font-mono: "iA Writer Mono S", "iA Writer Mono", ui-monospace, "SF Mono", Menlo, monospace`
- Loading: self-hosted WOFF2 with `font-display: swap`; Noto Sans Arabic subset loaded per-locale (inferred mechanics; families scraped).
- Numerals: Inter with `font-feature-settings: "tnum"` for stat bands (100M+ users, 98%, 62%) (inferred).

### Type scale (rows marked * scraped exactly; rest inferred from renders)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display* | 54px / 3.375rem | 700 Inter | 56px (1.04) | -0.02em (inferred) | Hero headline |
| Display lg (desktop max) | 64px | 700 | 1.02 | -0.025em | Widescreen hero |
| H2 | 40–48px | 700 | 1.1 | -0.02em | Section titles |
| H3 | 28–30px | 600–700 | 1.2 | -0.01em | Feature block titles |
| Serif quote* | 32px / 2rem | 400 Lyon | 40px (1.25) | 0 | Testimonials, editorial beats |
| Body lg | 18–20px | 400 | 1.5 | 0 | Hero subhead, intros |
| Body* | 16px / 1rem | 400 | 24px (1.5) | 0 | Standard copy |
| Mono label* | 14px / 0.875rem | 400 iA Writer Mono S | 20px (1.43) | 0 | Agent/code-flavored chips |
| Caption | 13–14px | 400–500 | 1.4 | 0 | Card meta, logo-strip caption |
| Legal | 12px | 400 | 1.5 | 0 | Footer |

- Responsive: display 64→54→40px (desktop→laptop→mobile) via clamp; H2 48→32px; body constant 16px (inferred).
- Casing: sentence case with deliberate quirks — the mid-sentence capital in "Where teams and agents Think together." Bold weight (700) carries hierarchy; color rarely does.

## 4. Layout & Grid
- **Containers:** max-width ≈ 1250px; gutters 20px mobile / 32px desktop (inferred). Feature copy columns ~480px beside ~640px screenshots.
- **Grid:** 12-column; card grids run 4-up desktop → 2-up tablet → 1-up mobile (scraped: four agent-type cards, four use-case tiles).
- **Spacing scale** (119 values scraped site-wide; practical 4/8-based ladder inferred): 4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80, 96, 128px.
- **Section rhythm:** hero → logo strip (~64px band) → alternating feature blocks at 96–128px vertical padding → 4-up card grids (16–24px gaps) → testimonial carousel → stats band → mega footer.
- **Breakpoints** (inferred): 480px, 768px, 1024px, 1280px.
- **Header:** white sticky bar ~64px; logo left; dropdowns (Product, Solutions, Resources) + Pricing; right: "Log in" text link, "Request a demo" secondary, "Get Notion free" primary blue; hairline border appears on scroll (inferred detail; structure scraped).
- **Footer:** multi-column sitemap (Company, Download, Resources, Solutions — scraped), language selector, social icons; light ground, hairline dividers, small gray type.
- **Z-index** (inferred): content 0 → sticky nav 100 → dropdown panels 200 → toast 500 → modal 1000.

## 5. Components
### Primary button
- Anatomy: Inter 600, 14–16px sentence-case label; padding 10px 16px (nav) / 14px 24px (hero); radius 8–10px; fill `#0075de`, white text.
- States: hover `#0069c7`; active `#005cb0`; focus 2px `#0075de` ring at 2px offset over white halo; disabled 40% opacity (inferred).
- Transition: background 150–200ms ease; no transform.

### Secondary button
- `#f6f5f4` fill (or white + hairline `#e8e6e3` border), ink `#191918` label; hover `#eceae8`; same geometry as primary.

### Tertiary arrow link
- Ink or blue label + "→"; hover: arrow translates 4px right, label may underline (inferred). Scraped pattern: section-level "→" links throughout.

### Illustrated feature card (signature)
- Ground: `#f6f5f4` warm paper or `#f6f6fc` lavender, radius 12–16px, shadow-1, padding 24–32px.
- Anatomy: small black-ink crosshatch illustration or emoji-style icon (top) → Inter 600 title 18–20px → 1–2 line gray description → optional mono chip label (agents) → arrow link.
- States: hover lifts −2px with shadow-2, illustration may play a 2–3 frame wiggle (inferred).
- Grid: 4-up (scraped: Q&A, Task routing, Reporting, Custom agent cards).

### Screenshot frame
- App/browser chrome mockup, radius 8–12px, shadow-2/3, hairline border; floating UI chips (cursors with name tags, avatars, emoji reactions) absolutely positioned around it; sometimes a soft `#f6f6fc` blob behind (inferred composition; screenshots scraped as core imagery).

### Logo strip
- Monochrome gray customer logos, single row, caption "Trusted by 98% of the Forbes Cloud 100" (scraped copy).

### Testimonial block
- Lyon 32/40 serif pull-quote, name + company attribution in 14px gray, company logo, arrow link to story (scraped structure, scraped Lyon metrics).

### Inputs (email capture / search)
- White fill, hairline border, radius 8px, 16px Inter, shadow-1; focus: blue border + ring; error: red text `#eb5757`-class (inferred).

### Badges / chips
- Mono 14px labels in outlined pills (agent-flavored), or small filled gray pills for "New" (inferred).

## 6. Imagery & Iconography
- Product UI is the primary imagery — real, readable screenshots with staged-but-plausible content; light theme only on marketing pages.
- Signature black-ink hand-drawn illustrations: loose crosshatched characters ("sketch people"), wobbly outlines, no fill or flat lavender/`#cbcbef` fills; used small, as garnish, never as hero wallpaper.
- Multiplayer motifs: colored cursors with name flags, avatar stacks, emoji reactions floating near screenshots.
- Icons: simple 1.5px outlined glyphs + Notion's block/emoji iconography.
- AI/agent sections switch to deep navy `#02093a` art with periwinkle gradient glows — the one permitted "techy" register (scraped colors; composition inferred).

## 7. Motion & Interaction
Philosophy: soft, quick, screenshot-centric. Motion demonstrates the product (carousels, demo loops) more than it decorates the page. (Timings inferred except where noted.)

| Animation | Trigger | Duration | Easing | Description |
|---|---|---|---|---|
| Hero carousel | autoplay | ~4s/slide, 600ms transition | cubic-bezier(0.16, 1, 0.3, 1) | 7-image stacked screenshot rotation (stack scraped) |
| Section reveal | scroll | 300–400ms | ease-out | fade + 12–20px rise, once |
| Card grid stagger | scroll | 60ms/item | ease-out | 4-up cards cascade |
| Card hover | hover | 200ms | ease-out | translateY(-2px) + shadow-1→2 |
| Button hover | hover | 150ms | ease | fill darken |
| Arrow link hover | hover | 200ms | ease-out | arrow +4px translateX |
| Nav dropdown | hover | 180ms | ease-out | fade + 6px drop; panel with link columns |
| Cursor chips | in view | 2–4s loop | ease-in-out | floating cursors drift/point near screenshots |
| Demo loops | in view | 5–15s | — | video/Lottie inside screenshot frames |
| Stats count-up | scroll into view | 800ms | ease-out | 100M+/98%/62% tick up (inferred) |
| Page transitions | route | none | — | plain loads |

- Stagger pattern: short, single-direction, max 4 items.
- Reduced motion: carousels stop auto-advancing, reveals become fades (inferred best practice).

## 8. Voice & Copy
- Sentence case; short confident claims plus concrete outcomes; playful but professional; numbers as proof everywhere.
- Second person + product-as-agent framing: "You assign the tasks. Notion Agent does the work."
- Microcopy friendly-imperative: "Get Notion free", "Request a demo", "Ask your on-demand assistants."
- Real examples (scraped):
  - "Where teams and agents Think together."
  - "Keep work moving 24/7."
  - "You assign the tasks. Notion Agent does the work."
  - "One search for everything" / "Perfect notes, every time" / "The AI workspace where teams get more done, faster."

## 9. Signature Moves
- Ink `#191918` on warm paper `#f6f5f4` — a "document," not a "dashboard."
- Inter 700 display at tight 1.04 leading, with Lyon serif reserved for quotes/editorial beats and iA Writer Mono for agent chips.
- Blue-only accent family (`#0075de` → `#1313ba`) — nothing else stays colorful for long.
- Hand-drawn crosshatch doodle characters beside crisp product screenshots.
- Floating multiplayer chips (cursors, avatars, emoji) implying live collaboration.
- Arrow-suffixed tertiary links ("Explore →") on every section.
- Proof bands: Forbes Cloud 100 %, 100M+ users, Fortune 100 stats as design elements.
- The mid-sentence capitalization stunt ("…agents Think together.").

## 10. Emulation Tokens
```css
:root {
  /* color — scraped unless noted */
  --color-bg: #ffffff;
  --color-bg-soft: #fefefe;
  --color-surface: #f6f5f4;
  --color-surface-alt: #f7f7f5;
  --color-surface-tint: #f6f6fc;
  --color-tint-lavender: #cbcbef;
  --color-ink: #191918;
  --color-black: #000000;
  --color-text-secondary: #615d59;
  --color-text-tint: #7171a8;
  --color-accent: #0075de;
  --color-accent-hover: #0069c7;      /* inferred */
  --color-accent-active: #005cb0;     /* inferred */
  --color-accent-deep: #1313ba;
  --color-accent-navy-text: #213183;
  --color-accent-periwinkle: #6666fd;
  --color-accent-slate: #455dd3;
  --color-navy: #02093a;
  --color-border: #e8e6e3;            /* inferred */
  --color-scrim: rgba(15, 15, 15, 0.5); /* inferred */

  /* gradients (2 scraped as count; stops inferred) */
  --gradient-ai: linear-gradient(135deg, #6666fd 0%, #455dd3 50%, #1313ba 100%);
  --gradient-fade: linear-gradient(180deg, #ffffff 0%, #f6f6fc 100%);

  /* type — families scraped */
  --font-sans: Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  --font-serif: "Lyon Text", Georgia, serif;
  --font-mono: "iA Writer Mono S", ui-monospace, "SF Mono", Menlo, monospace;
  --text-display: clamp(2.5rem, 5vw, 3.375rem);  /* 54px scraped @700, lh 56px */
  --text-h2: clamp(2rem, 4vw, 3rem);
  --text-h3: 1.75rem;
  --text-quote: 2rem;         /* Lyon 32/40 scraped */
  --text-body-lg: 1.1875rem;
  --text-body: 1rem;          /* 16/24 scraped (Noto row) */
  --text-mono: 0.875rem;      /* 14/20 scraped */
  --text-caption: 0.8125rem;
  --lh-display: 1.04;
  --lh-body: 1.5;
  --ls-display: -0.02em;      /* inferred */

  /* radius (49 values scraped as count; ladder inferred) */
  --radius-xs: 4px; --radius-sm: 8px; --radius-md: 12px;
  --radius-lg: 16px; --radius-pill: 999px;

  /* shadows (3 styles scraped as count; values inferred) */
  --shadow-1: 0 1px 2px rgba(15, 15, 15, 0.06);
  --shadow-2: 0 4px 16px rgba(2, 9, 58, 0.08);
  --shadow-3: 0 12px 32px rgba(2, 9, 58, 0.12);

  /* spacing (119 scraped as count; ladder inferred) */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-5: 24px; --space-6: 32px; --space-7: 48px; --space-8: 64px;
  --space-9: 96px; --space-10: 128px;

  /* layout — breakpoints (inferred): 480 / 768 / 1024 / 1280px */
  --max-width: 1250px;
  --gutter: 20px;

  /* z-index (inferred) */
  --z-nav: 100; --z-dropdown: 200; --z-toast: 500; --z-modal: 1000;

  /* motion (inferred) */
  --ease-out: cubic-bezier(0.16, 1, 0.3, 1);
  --ease-standard: ease;
  --duration-fast: 150ms;
  --duration-base: 200ms;
  --duration-reveal: 350ms;
  --duration-slide: 600ms;
  --stagger: 60ms;
}
@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition-duration: 1ms !important; }
}
```

### Primary button (with states)
```css
.btn-primary {
  font: 600 0.9375rem/1 var(--font-sans);
  color: #fff;
  background: var(--color-accent);
  padding: 12px 20px;
  border: 0;
  border-radius: var(--radius-sm);
  cursor: pointer;
  transition: background-color var(--duration-fast) var(--ease-standard);
}
.btn-primary:hover  { background: var(--color-accent-hover); }
.btn-primary:active { background: var(--color-accent-active); }
.btn-primary:focus-visible { outline: 2px solid var(--color-accent); outline-offset: 2px; }
.btn-primary:disabled { opacity: 0.4; cursor: default; }

.btn-secondary {
  font: 600 0.9375rem/1 var(--font-sans);
  color: var(--color-ink);
  background: var(--color-surface);
  border: 1px solid var(--color-border);
  padding: 12px 20px; border-radius: var(--radius-sm);
  transition: background-color var(--duration-fast) var(--ease-standard);
}
.btn-secondary:hover { background: #eceae8; }
```

### Friendly illustrated feature card
```css
.feature-card {
  background: var(--color-surface);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-1);
  padding: var(--space-6);
  transition: transform var(--duration-base) var(--ease-out),
              box-shadow var(--duration-base) var(--ease-out);
}
.feature-card:hover { transform: translateY(-2px); box-shadow: var(--shadow-2); }
.feature-card .doodle { height: 64px; }         /* black-ink crosshatch SVG */
.feature-card h3 { font: 600 1.25rem/1.3 var(--font-sans); color: var(--color-ink); margin: var(--space-4) 0 var(--space-2); }
.feature-card p  { font: 400 var(--text-body)/var(--lh-body) var(--font-sans); color: var(--color-text-secondary); }
.feature-card .chip {
  font: 400 var(--text-mono)/1.4 var(--font-mono);
  border: 1px solid var(--color-border); border-radius: var(--radius-pill);
  padding: 2px 10px; color: var(--color-text-tint);
}
.feature-card .more { color: var(--color-accent); text-decoration: none; }
.feature-card .more::after { content: " →"; display: inline-block; transition: transform var(--duration-base) var(--ease-out); }
.feature-card:hover .more::after { transform: translateX(4px); }
```

### Signature effect — screenshot frame with multiplayer chips
```css
.shot { position: relative; }
.shot img {
  width: 100%; border-radius: var(--radius-md);
  border: 1px solid var(--color-border);
  box-shadow: var(--shadow-3);
}
.shot .cursor-chip {
  position: absolute;
  font: 500 12px/1 var(--font-sans); color: #fff;
  background: var(--color-accent-periwinkle);
  border-radius: 4px 12px 12px 12px;   /* cursor-flag shape */
  padding: 4px 8px;
  animation: drift 3s var(--ease-standard) infinite alternate;
}
@keyframes drift { from { transform: translate(0, 0); } to { transform: translate(6px, -8px); } }
```
