# Figma — Web Design Language
> Source: https://www.figma.com · https://www.figma.com/design/ · https://www.figma.com/blog/figma-on-figma-evolving-our-visual-language/ · https://maxibestof.one/websites/17569-figma (historical) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Figma.com treats the marketing site as a canvas about the canvas: a clean white ground where oversized "jumbo" UI primitives — selection nodes, cursors, bounding boxes — become the brand illustration system. The current brand ("Figma on Figma" refresh) is built on four documented foundations: versatile primitives, dynamic compositions, an expanded adaptive color palette, and integrated motion. Type is a bespoke Grilli Type grotesque family (Figma Sans, plus Condensed, Mono, and the OH no Type handwritten Figma Hand) used with confident scale jumps and plain sentence case, so the voice stays craft-precise but playful. Color arrives in documented "tonal vibrancy" pairings — green+purple core, orange+magenta warm, mustard+purple cool — applied to shapes and screenshots rather than chrome. Everything communicates: "we make the tool, and the site is made in the tool."

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | Meta theme-color `#ffffff` (scraped) |
| Surface / tinted band | `#F5F5F5` (inferred) | Grey section bands, card fills |
| Text primary | `#1E1E1E` (inferred) | Near-black ink, matches product UI |
| Text secondary | `#6E6E6E` (inferred) | Supporting copy, footer links |
| CTA fill | `#1E1E1E`–`#000000` (inferred) | Primary pill button |
| CTA hover | `#3A3A3A` (inferred) | Slight lighten on hover |
| CTA active | `#000000` (inferred) | |
| Brand green | `#0ACF83` (inferred, logo mark) | Core scheme (green+purple documented) |
| Brand purple | `#A259FF` (inferred, logo mark) | Core scheme pairing |
| Brand orange/red | `#F24E1E` / `#FF7262` (inferred, logo mark) | Warm scheme (orange+magenta documented) |
| Brand blue | `#1ABCFE` (inferred, logo mark) | Cool highlights |
| Warm magenta | `#FF4FA3` (inferred) | Warm scheme pairing |
| Mustard | `#E3B341` (inferred) | Cool scheme pairing (mustard+purple documented) |
| Borders | `#E6E6E6` (inferred) | 1px card/table rules |
| Focus ring | `#0D99FF` (inferred, product blue) | Matches in-app selection blue |
| Overlay | `rgba(0,0,0,0.5)` (inferred) | Modals, video lightboxes |
| Historical palette | `#5355F0`, `#111111`, `#D6D9E4` (documented, MaxiBestOf — pre-refresh era) | Useful only for retro emulation |

Color principles (documented from Figma's blog): tonal vibrancy ("electric, unexpected pairings"), adaptive schemes simple→complex, maximalist emphasis options; each hero scheme ships in light and dark modes. Site chrome itself stays light; dark appears in full-bleed campaign bands (inferred).

## 3. Typography
- **Families (documented, scraped from Figma blog):**
  - `Figma Sans` — "opinionated grotesque," custom by Grilli Type; primary face
  - `Figma Sans Condensed` — condensed display variant for big statements
  - `Figma Mono` — monospace for code/spec/badge moments
  - `Figma Hand` — handwritten (OH no Type) for annotation accents
- **Stack (emulation):** `"Figma Sans", Inter, "Helvetica Neue", Arial, sans-serif`; mono: `"Figma Mono", "SF Mono", Menlo, monospace` (fallbacks inferred)
- **Historical:** the pre-refresh site used Aperçu / Aperçu Mono / Roboto (documented via MaxiBestOf) — do not use for current emulation.
- **Weights:** 400 body, 500 nav/UI, 600–700 headlines (inferred). Variable font likely (inferred).
- **Loading:** self-hosted woff2, `font-display: swap` (inferred).
- **Figures:** lining; Figma Mono for numeric/spec badges (inferred).

Type scale (approx./inferred; usage scraped):

| Name | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display XL | 72–96px / 4.5–6rem | 550–650, often Condensed | 0.95–1.05 | -0.01em | Hero: "The intelligent canvas for infinite creativity" |
| Display | 56–64px / 3.5–4rem | 600 | 1.05 | -0.01em | Page heroes: "Made for the big picture. Perfect down to every pixel." |
| H2 | 36–48px / 2.25–3rem | 600 | 1.1 | -0.005em | Section heads: "Design anything you can imagine" |
| H3 | 24px / 1.5rem | 600 | 1.25 | 0 | Feature card titles: "Add motion" |
| Body large | 18–20px / 1.125rem | 400 | 1.5 | 0 | Hero subcopy |
| Body | 16px / 1rem | 400 | 1.5 | 0 | Feature descriptions |
| Nav / UI | 14–15px / 0.9rem | 500 | 1.2 | 0 | Header links, dropdown items |
| Badge / eyebrow | 11–12px / 0.75rem | 500–600 | 1 | +0.04em | "New", "Beta" chips (scraped) |
| Footer / legal | 13px / 0.8125rem | 400 | 1.5 | 0 | Sitemap columns |

- Responsive shift: Display XL 96 → 40px mobile; H2 48 → 28px (inferred).
- **Case (scraped):** sentence case for headlines and buttons; Title Case only for product names (Figma Design, Dev Mode, Figma Motion); badges small caps-styled.

## 4. Layout & Grid
- **Container:** centered column max ~1200–1280px, gutters 20px mobile / 32px tablet / 48px desktop; full-bleed color/screenshot breakouts between contained sections (inferred).
- **Grid:** 12-col desktop / 6 tablet / 4 mobile, 24px gutters (inferred). Feature card grids 3-up desktop, 1-up mobile.
- **Breakpoints (inferred):** 640 / 900 / 1200 px.
- **Spacing scale (inferred, 8px base):** 4, 8, 12, 16, 24, 32, 48, 64, 96, 128. Section rhythm generous: 96–128px desktop, 56px mobile.
- **Header (scraped structure):** white sticky bar ~64px — logo left; Products / Solutions / Community / Resources / Pricing mega-dropdowns (11 product links, 14 solution links); right cluster: Log in · Contact sales · Get started (filled pill). Dropdowns are large multi-column sheets with icons + one-line descriptors.
- **Page anatomy (scraped from /design/):** hero + dual CTAs → rotating feature tabs (Flexible workflows / Collaborative canvas / Design fundamentals) → alternating text/media capability sections → testimonial + monochrome logo grid → feature-card grid by product → deep multi-column footer (Product / Plans / Use cases / Resources / Company).
- **Imagery pipeline (scraped):** Sanity CDN `cdn.sanity.io/images/599r6htc/regionalized/` with `?w=&q=&fit=&auto=format` responsive params; 16:9 and 1:1 crops.
- **Z-index (inferred):** content 1 · sticky header 100 · dropdown sheets 200 · overlay 300 · modal 400 · toast 500 · decorative cursors 50 (below chrome).

## 5. Components
**Primary button ("Get started")**
- Fully rounded pill (radius 999px); height 40–48px; padding 12px 24px.
- Label 15–16px / 500 / sentence case.
- Default: near-black `#1E1E1E` fill, white label. Hover: `#3A3A3A` (inferred). Active: `#000`. Focus-visible: 2px `#0D99FF` ring offset 2px (inferred). Disabled: `#E6E6E6` fill, `#9B9B9B` label (inferred).
- Transition: background 150ms ease-out; optional 1.02 scale on hover for hero CTAs (inferred).

**Secondary button ("Contact sales")**
- White pill, 1px `#1E1E1E` or `#E6E6E6` border, dark label; hover: `#F5F5F5` fill (inferred).

**Tertiary / text link ("Learn more", "Get the guide" — scraped)**
- Sentence case, arrow "→" suffix common; hover underline slides in (inferred).

**Nav / mega-dropdown**
- Hover/click opens large white sheet, radius ~16px, soft shadow `0 8px 30px rgba(0,0,0,0.08)` (inferred); items = icon + name + descriptor; opens 150–200ms ease-out with 4–8px translateY.

**Cards (feature grid)**
- White or tinted fill, radius 12–16px, 1px `#E6E6E6` border or soft shadow; screenshot top, sentence-case H3, one-line body, text link. Hover: border darkens or lifts `translateY(-4px)` + shadow, 200ms (inferred anatomy).

**Badges (scraped)**
- "New" / "Beta" mini-pills: 11px, 4px 8px padding, radius 999px, tinted background (green/purple tints), next to nav and feature labels.

**Tabs (scraped behavior)**
- Rotating/auto-advancing feature tabs; active tab = filled chip or underline; progress indicator animates across duration of auto-advance (inferred).

**Canvas props (documented brand system)**
- Jumbo nodes: large squares at bounding-box corners; circles when objects are "edited"; multiplayer cursors with name flags; comment pins. Used decoratively around screenshots.

**Inputs (newsletter/search)**
- Pill or 8px-radius fields, 1px `#E6E6E6` border; focus: `#0D99FF` ring (inferred).

**Footer**
- White, dense sitemap columns (Product / Plans / Use cases / Resources / Company — scraped), 13px grey links, logo + social row.

## 6. Imagery & Iconography
- Product-UI screenshots are the hero imagery: crisp app frames in 16:9 and square crops, floating on colored or grey grounds, dressed with canvas artifacts — cursors, selection nodes, comments (documented brand moves + scraped imagery).
- Brand illustration = geometric primitives (squares, circles, half-rounds) in core/warm/cool palettes, composed via documented moves: **Overlap** (layered shapes), **Reveal** (inspecting underlying structure), **Clustering** (freeform groupings), **Multi-move** (combined).
- "Jumbo" principle (documented): oversized elements with precise detail — big shapes, exact corners.
- Figma Hand handwriting for annotation/scribble accents (documented).
- Icons: geometric line icons matching product iconography; multicolor double-F logo mark.
- Customer logo grids rendered monochrome grey (scraped testimonial section).

## 7. Motion & Interaction
Motion is a stated brand foundation ("Integrated Motion" — documented): animations depict creative actions — dragging, selecting, snapping, drawing. Values inferred unless noted.

| Animation | Spec |
|---|---|
| Hero load | Headline fades/rises 24px, 500ms `cubic-bezier(0.33,1,0.68,1)`; decorative shapes scale in 0.9→1 with 80ms stagger; cursors fly in along curved paths 800ms |
| Rotating feature tabs | Auto-advance ~6s; progress bar fills linearly; panel crossfade + 16px slide, 300ms ease-out (behavior scraped, timing inferred) |
| Scroll reveals | Sections fade-up 400–500ms at 15–20% threshold; screenshots parallax slightly (±20px) |
| Multiplayer cursor moments | Named cursors chase/settle near headlines; spring feel `cubic-bezier(0.34,1.56,0.64,1)` (slight overshoot) — the one place bounce is allowed |
| Selection-node accent | Bounding box draws around a word/image: border fades in, corner squares pop 0.8→1 scale, 200ms |
| Button hover | Fill lighten 150ms ease-out; hero CTAs may scale 1.02 |
| Card hover | translateY(-4px) + shadow deepen, 200ms ease-out |
| Dropdown sheets | Fade + translateY(8px→0), 150–200ms ease-out; close 120ms ease-in |
| Looping demos | Autoplaying muted product videos in cards; play on viewport entry |
| Page transitions | None visible; standard navigation |

- Stagger patterns: 60–100ms across grid cards; shape clusters build outward from center.
- Easing vocabulary: standard `cubic-bezier(0.33,1,0.68,1)` (easeOutCubic feel); playful overshoot `cubic-bezier(0.34,1.56,0.64,1)` reserved for cursors/shapes.
- Reduced motion: disable cursor choreography and parallax, keep opacity fades (inferred best practice).

## 8. Voice & Copy
- Tone: confident, craft-obsessed, lightly playful; speaks to makers in imperative/aspirational present; loves polarity constructions (big↔pixel, infinite↔precise).
- Sentence case everywhere; short paired statements; product nouns in Title Case.
- Real examples (scraped):
  - "The intelligent canvas for infinite creativity"
  - "Made for the big picture. Perfect down to every pixel."
  - "Powerfully expressive. Incredibly precise"
  - "One workspace for your entire product development process"
  - "Move fast in the right direction on an AI-native canvas"
- CTAs low-friction, verb-first: "Get started", "Get started for free", "Explore design tools", "Get the guide" (scraped).
- Badge microcopy: "New", "Beta" (scraped).

## 9. Signature Moves
- Jumbo canvas primitives — oversized selection nodes, bounding boxes, cursors — as brand ornament.
- Bespoke four-font family mixed in one layout: Figma Sans / Sans Condensed / Mono / Hand.
- Electric documented color pairings (green+purple, orange+magenta, mustard+purple) on white.
- Two-balanced-sentence headline construction ("Made for X. Perfect down to Y.").
- Near-black pill CTA repeated relentlessly ("Get started").
- Screenshots dressed with named multiplayer cursors and comment pins.
- "New"/"Beta" micro-badges sprinkled through nav and feature lists.
- Mega-dropdowns that read like a sitemap of the platform.

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #ffffff;
  --color-surface: #f5f5f5;              /* inferred */
  --color-text: #1e1e1e;                 /* inferred */
  --color-text-secondary: #6e6e6e;       /* inferred */
  --color-cta: #1e1e1e;                  /* inferred */
  --color-cta-hover: #3a3a3a;            /* inferred */
  --color-cta-active: #000000;           /* inferred */
  --color-green: #0acf83;                /* inferred brand */
  --color-purple: #a259ff;               /* inferred brand */
  --color-orange: #f24e1e;               /* inferred brand */
  --color-red: #ff7262;                  /* inferred brand */
  --color-blue: #1abcfe;                 /* inferred brand */
  --color-magenta: #ff4fa3;              /* inferred */
  --color-mustard: #e3b341;              /* inferred */
  --color-border: #e6e6e6;               /* inferred */
  --color-focus: #0d99ff;                /* inferred, product blue */
  --color-overlay: rgba(0,0,0,0.5);      /* inferred */

  /* type */
  --font-sans: "Figma Sans", Inter, "Helvetica Neue", Arial, sans-serif;
  --font-display: "Figma Sans Condensed", "Figma Sans", Inter, sans-serif;
  --font-mono: "Figma Mono", "SF Mono", Menlo, monospace;
  --font-hand: "Figma Hand", "Comic Sans MS", cursive;   /* accent only */
  --text-display-xl: clamp(2.5rem, 7vw, 6rem);
  --text-display: clamp(2rem, 5vw, 4rem);
  --text-h2: clamp(1.75rem, 3.5vw, 3rem);
  --text-h3: 1.5rem;  --text-body-lg: 1.125rem; --text-body: 1rem;
  --text-nav: 0.9375rem; --text-badge: 0.75rem; --text-footer: 0.8125rem;
  --leading-display: 1.05; --leading-body: 1.5;

  /* radius & shadow */
  --radius-badge: 999px; --radius-pill: 999px;
  --radius-card: 12px;   --radius-sheet: 16px;          /* inferred */
  --shadow-card: 0 4px 16px rgba(0,0,0,0.06);           /* inferred */
  --shadow-sheet: 0 8px 30px rgba(0,0,0,0.08);          /* inferred */

  /* spacing (8px base) */
  --space-05: 4px; --space-1: 8px;  --space-15: 12px; --space-2: 16px;
  --space-3: 24px; --space-4: 32px; --space-6: 48px;  --space-8: 64px;
  --space-12: 96px; --space-section: 112px;             /* inferred */

  /* layout — breakpoints: 640 / 900 / 1200 (inferred) */
  --max-width: 1280px;                                  /* inferred */
  --gutter: 24px;

  /* z-index */
  --z-decor: 50; --z-header: 100; --z-dropdown: 200;
  --z-overlay: 300; --z-modal: 400; --z-toast: 500;

  /* motion */
  --ease-out: cubic-bezier(0.33, 1, 0.68, 1);           /* inferred */
  --ease-spring: cubic-bezier(0.34, 1.56, 0.64, 1);     /* playful overshoot, cursors/shapes */
  --duration-fast: 150ms; --duration-med: 300ms;
  --duration-reveal: 500ms; --duration-cursor: 800ms;
  --tab-autoadvance: 6s;                                /* inferred */
}
```

```css
/* Figma primary + secondary pill buttons, all states */
.btn-figma {
  display: inline-flex; align-items: center; gap: 8px;
  min-height: 44px; padding: 12px 24px;
  background: var(--color-cta); color: #fff;
  font: 500 1rem/1 var(--font-sans);
  border: 1px solid transparent; border-radius: var(--radius-pill);
  cursor: pointer; transition: background var(--duration-fast) var(--ease-out),
    transform var(--duration-fast) var(--ease-out);
}
.btn-figma:hover  { background: var(--color-cta-hover); transform: scale(1.02); }
.btn-figma:active { background: var(--color-cta-active); transform: scale(1); }
.btn-figma:focus-visible { outline: 2px solid var(--color-focus); outline-offset: 2px; }
.btn-figma:disabled { background: var(--color-border); color: #9b9b9b; transform: none; }
.btn-figma--secondary { background: #fff; color: var(--color-text);
  border-color: var(--color-text); }
.btn-figma--secondary:hover { background: var(--color-surface); }
```

```css
/* Figma feature card */
.card-figma {
  background: #fff; border: 1px solid var(--color-border);
  border-radius: var(--radius-card); overflow: hidden;
  transition: transform 200ms var(--ease-out), box-shadow 200ms var(--ease-out);
}
.card-figma:hover { transform: translateY(-4px); box-shadow: var(--shadow-card); }
.card-figma__media { aspect-ratio: 16/9; background: var(--color-surface); }
.card-figma__body  { padding: var(--space-3); }
.card-figma__badge { display: inline-block; padding: 4px 8px; border-radius: 999px;
  background: color-mix(in srgb, var(--color-green) 15%, white);
  color: #067647; font: 600 var(--text-badge)/1 var(--font-sans); }
.card-figma__title { font: 600 var(--text-h3)/1.25 var(--font-sans); margin-top: var(--space-1); }
.card-figma__desc  { color: var(--color-text-secondary); font-size: var(--text-body); margin-top: 4px; }
```

```css
/* Signature effect: jumbo selection box + multiplayer cursor accent */
.select-figma { position: relative; display: inline-block; padding: 8px 12px; }
.select-figma::before { content: ""; position: absolute; inset: 0;
  border: 2px solid var(--color-focus); }
.select-figma i { position: absolute; width: 10px; height: 10px; background: #fff;
  border: 2px solid var(--color-focus); }
.select-figma i:nth-child(1){ top:-6px; left:-6px; } .select-figma i:nth-child(2){ top:-6px; right:-6px; }
.select-figma i:nth-child(3){ bottom:-6px; left:-6px; } .select-figma i:nth-child(4){ bottom:-6px; right:-6px; }

.cursor-figma { position: absolute; display: inline-flex; align-items: center; gap: 4px;
  transform: translate(-2px, -2px);
  animation: cursor-drift 800ms var(--ease-spring) both; }
.cursor-figma__flag { background: var(--color-purple); color: #fff;
  font: 500 0.75rem/1 var(--font-sans); padding: 3px 8px; border-radius: 999px 999px 999px 4px; }
@keyframes cursor-drift { from { opacity: 0; translate: 40px 24px; } to { opacity: 1; translate: 0 0; } }
@media (prefers-reduced-motion: reduce) { .cursor-figma { animation: none; } }
```
