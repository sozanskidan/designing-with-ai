# Stripe — Web Design Language
> Source: https://stripe.com, https://stripe.com/payments + designmd.cc token snapshot of stripe.com + documented gradient recreation (kevinhufnagl.com) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Stripe.com is enterprise-credible finance dressed in developer optimism: a crisp editorial layout of navy headlines and airy white space, crowned by the famous animated diagonal-gradient hero. Sections alternate white and pale blue-gray surfaces, cut by skewed seams that echo the slanted-parallelogram logo. Code is treated as imagery — syntax-highlighted editor panels sit beside marketing copy as proof of craft. Everything is precise: 4px spacing grid, restrained radii, soft layered shadows, and Söhne's cool geometry set light. The vibe is "serious infrastructure, delightfully engineered" — maximal polish, minimal noise.

## 2. Color

### Core palette (scraped snapshot + documented brand values)
| Role | Value | Notes |
|---|---|---|
| Background | `#ffffff` | Primary canvas |
| Surface (alt band) | `#f6f9fc` / `#f8fafd` | Signature pale blue-gray sections (snapshot: #f8fafd) |
| Surface (dark band) | `#0a2540` | Navy sections (developers, footer contexts) |
| Text heading | `#0a2540` / `#061b31` | Deep navy headings (snapshot: #061b31) |
| Text body | `#425466` | Slate paragraph color (documented) |
| Text muted | `#50617a` | Secondary/captions (snapshot) |
| Text on dark | `#ffffff` + `#adbdcc` (inferred secondary) | Navy sections |
| Border | `#e5edf5` | Cool hairlines, card borders |
| Accent (blurple) | `#635bff` | Documented brand accent; snapshot shows shifted `#533afd` |
| Accent hover | `#665efd` (snapshot) or navy swap `#0a2540` | Buttons darken or lighten |
| Accent light tint | `rgba(99,91,255,0.1)` | Focus rings, tinted chips |

### Semantic & support colors (scraped snapshot)
| Role | Value | Notes |
|---|---|---|
| Success | `#15be53` | Badges, positive deltas |
| Warm accent | `#ff6118` | Orange illustration accent |
| Pink accent | `#ffe0ef` | Soft illustration fill |
| Cyan accent | `#00d4ff` (inferred) | Code syntax + icon accents |
| Error | `#df1b41` (inferred, Stripe UI convention) | Form errors |

### Gradients (documented recreation values)
- Hero mesh (WebGL "minigl" canvas, animated): stops `#6ec3f4` (light blue) → `#3a3aff` (blue) → `#ff61ab` (pink) → `#E63946` (red); canvas skewed **-12deg**
- Alternate documented stop set for older recreations: `#a960ee → #ff333d → #90e0ff → #ffcb57` (inferred/era-dependent)
- CSS static fallback: `linear-gradient(100deg, #6ec3f4, #3a3aff 30%, #ff61ab 65%, #E63946)` (constructed from stops)
- Gradient text: headlines occasionally clip a left-to-right blurple→pink gradient (inferred)
- No dark mode on marketing site; docs product has its own theme (inferred)

## 3. Typography

### Families & loading
- Primary (scraped): `sohne-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"` — Söhne (Klim Type Foundry) as a self-hosted **variable woff2** (`sohne-var`)
- Mono (scraped): `ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace` — code panels
- Variable axis exploited for weights 300–600; `font-display: swap` (inferred loading detail)

### Type scale (scraped snapshot)
| Name | Size | Weight | Line-height | Letter-spacing | Usage |
|---|---|---|---|---|---|
| display-xl | 56–94px | 300–425 | 1.04 | -0.02em | Hero over gradient (responsive, inferred top end) |
| display | 48px | 300 | 1.03 | -0.01em | Section display heads |
| h1 | 32px | 400 | 1.2 | -0.01em | Page/section titles |
| h2 | 26px | 400 | 1.2 | -0.01em | Sub-sections |
| h3 | 22px | 400 | 1.3 | normal | Card/feature titles |
| body | 16px | 400 | 1.4–1.5 | normal | Paragraphs |
| eyebrow | 14–15px | 600 | 1.4 | +0.08em, UPPERCASE, blurple (inferred) | Section labels |
| caption | 14px | 400 | 1.3 | normal | Fine print, captions |
| code | 14px | 400 | 1.4 | normal | Editor panels, mono |
| stat-numeral | 40–56px | 300 | 1.1 | -0.01em (inferred) | "$1.9T" stats band |

### Conventions
- Sentence case everywhere; only eyebrows are uppercase
- Light weights (300–425) at display sizes — the airy Söhne look; 500–600 reserved for emphasis and buttons
- Tabular figures for stats and pricing tables (inferred); em-dashes mid-sentence in subheads (scraped copy pattern)
- Responsive: display drops ~48→36→28px across tablet/mobile (inferred)

## 4. Layout & Grid
- Container: max-width ≈ **1080px** (marketing measure); large screens padded within 1280px band (snapshot breakpoint)
- Grid: 12-col, ~32px gutters desktop (inferred); cards in 2/3/4-up arrangements
- Spacing scale (scraped): 4px base — `4, 8, 12, 16, 20, 24, 32` (+ larger section multiples 48/64/96/128, inferred)
- Section rhythm: 96–128px vertical padding per band; alternating `#fff` / `#f6f9fc` surfaces with skewed seams
- Diagonal seams: section backgrounds transformed `skewY(-6deg)` (container counter-skewed) — hero canvas at `-12deg` (documented)
- Header: ~64px (inferred), transparent over gradient then solid/sticky; navy links; right cluster "Sign in" + "Start now >" pill; mega-menu dropdowns with icon+label columns in white rounded panels
- Stats band: 4-up giant numerals + small captions (scraped: "135+", "$1.9T", "99.999%", "200M+")
- Footer: 6-column link architecture (scraped) on white or `#f6f9fc`; small locale selector
- Breakpoints (scraped snapshot): `<640` mobile · `640+` tablet · `940+` desktop · `1280+` large
- Z-index (inferred convention): content 0–10, sticky nav ~100, dropdowns ~500, modals ~1000

## 5. Components

### Buttons
| Variant | Default | Hover | Active | Focus | Disabled |
|---|---|---|---|---|---|
| Primary pill | `#635bff` bg, #fff 15px/500, pad ~6px 16px, radius 100px, trailing `>` glyph | bg → `#0a2540` navy (marketing) or `#665efd` lighten | slight darken + arrow nudges +2px (inferred) | `rgba(99,91,255,0.1) 0 0 0 3px` ring (scraped) | 40% opacity (inferred) |
| Secondary pill | transparent, navy `#0a2540` text + `>`; optional soft tint bg | text → `#635bff`; arrow slides right | — | same ring | dimmed |
| On-dark pill | #fff bg, navy text | `#f6f9fc` | — | white-alpha ring (inferred) | — |
- Transition: ~150–200ms ease-out on color/transform (snapshot: default 0.2s ease-out)

### Navigation
- Transparent over hero → white sticky with soft shadow after scroll (inferred behavior); height ~64px
- Mega-menus: white panels, radius 8px, layered shadow, two-column icon+label lists with section eyebrows; panel morphs/re-anchors between nav items with quick fade+scale ~200ms (inferred)
- Mobile: hamburger → full-panel white menu, accordion sections

### Cards (scraped shadow/border values)
- White bg, radius 8–16px, border `#e5edf5`, shadow `rgba(23,23,23,0.06) 0 3px 6px`
- Hover: shadow deepens to `rgba(23,23,23,0.08) 0 15px 35px` + translateY(-2px) (translate inferred), 250ms ease-out (scraped duration)
- Anatomy: eyebrow icon (24px, two-tone) → h3 22px navy → 16px slate copy → arrow link

### Code editor panel (signature)
- Dark navy/near-black rounded panel (radius 8px), traffic-light dots, tab row for languages, 14px mono syntax highlighting (blurple/cyan/green tokens), soft outer shadow; often overlaps section boundary

### Inputs
- Radius 4px (scraped "interactive" radius), 1px `#e5edf5` border, 16px text, padding ~10px 12px; focus: blurple border + `rgba(99,91,255,0.1) 0 0 0 3px` ring; error: `#df1b41` border + caption (inferred)

### Badges / chips
- Pill radius 100px, tinted bg (blurple 10%, green 10%), 12–13px 500-weight text

### Footer
- 6 columns of 14px links in `#425466`, hover → `#0a2540`; top border `#e5edf5`

## 6. Imagery & Iconography
- Product UI screenshots (Dashboard, Checkout, Terminal) crisp with layered soft shadows, tilted/overlapped, often breaking section seams
- Isometric-lite illustration accents; wave/mesh background graphics; the slanted parallelogram motif recurs in customer-story art (scraped observation)
- Photography: professional real-world commerce contexts for customer stories
- Icons: 16–24px two-tone line icons — navy strokes + blurple/cyan accent fills, rounded terminals
- Logo rows in single-tone slate; charts in flat blurple/cyan/green
- Assets served from `stripeassets.com` CDN (scraped)

## 7. Motion & Interaction

### Timing & easing (scraped snapshot)
- Default transitions ≈ **0.2s ease-out**; cards **0.25s ease-out**; nothing bouncy
- Suggested curves: `cubic-bezier(0.215, 0.61, 0.355, 1)` (ease-out-cubic, inferred equivalence)

### Animation inventory
- **Animated WebGL mesh-gradient hero** (the signature): custom "minigl" renderer animating 4 color blobs (`#6ec3f4/#3a3aff/#ff61ab/#E63946`) on a canvas skewed -12deg; slow drift ~10–20s loop, continuous (documented technique; loop time inferred)
- **Arrow-link nudge**: trailing `>` translates +3px right on hover, ~150ms
- **Card lift**: shadow deepen + translateY(-2px), 250ms
- **Mega-menu morph**: dropdown panel fades/scales in ~200ms and re-anchors while moving between items
- **Scroll reveals**: sections fade + rise ~16px on entry, once, ~400–600ms (inferred)
- **"What's happening" carousel**: auto-advance with crossfade/slide, pause on hover (scraped presence; behavior inferred)
- **Animated counters**: stats count up on first view (inferred, historical behavior)
- **Tabs in code panels**: instant content swap with 150ms fade
- Stagger: card grids cascade ~60–80ms per item on reveal (inferred)
- Reduced motion: gradient falls back to static; honors `prefers-reduced-motion` (inferred best practice; canvas has static poster fallback for no-JS, documented)

## 8. Voice & Copy
- Confident infrastructure language: outcome + global-scale qualifier; sentence case; minimal punctuation flourish; em-dashes for breadth
- Real examples (scraped): "Financial infrastructure to grow your revenue" · "The backbone of global commerce" · "Unified, global payments to grow your revenue" · "Less fraud, more revenue" · "Powering businesses of all sizes"
- Subhead pattern (scraped): "Accept payments, offer financial services, and implement custom revenue models—from your first transaction to your billionth."
- Stats speak as copy: "99.999% historical uptime", "$1.9T in payments volume processed in 2025" (scraped)
- CTAs: "Start now", "Get started", "Contact sales", "Sign up with Google" — two/three-word imperatives with `>` arrows
- Developer respect: real code, real API shapes, no dumbed-down pseudocode

## 9. Signature Moves
- The animated multicolor WebGL mesh-gradient hero with a -12deg diagonally clipped edge
- Blurple `#635bff` as the single loud accent against deep navy `#0a2540` and slate `#425466`
- Diagonal/skewed section seams echoing the slanted Stripe wordmark
- Code editor panels as first-class marketing imagery
- Pill buttons with trailing `>` arrows that nudge right on hover
- Alternating white / `#f6f9fc` section banding
- 4-up giant-numeral stats band ("99.999%")
- Söhne light-weight display type with ultra-tight 1.03 leading

## 10. Emulation Tokens
```css
:root {
  /* color — surfaces */
  --color-bg: #ffffff;
  --color-surface: #f6f9fc;
  --color-surface-2: #f8fafd;
  --color-surface-dark: #0a2540;
  /* color — text */
  --color-text: #0a2540;
  --color-text-heading: #061b31;
  --color-text-secondary: #425466;
  --color-text-muted: #50617a;
  --color-text-on-dark: #ffffff;
  /* color — interaction */
  --color-accent: #635bff;
  --color-accent-alt: #533afd;          /* recent snapshot value */
  --color-accent-hover: #665efd;
  --color-accent-hover-dark: #0a2540;   /* marketing button hover swap */
  --color-border: #e5edf5;
  --color-success: #15be53;
  --color-warn: #ff6118;
  --color-error: #df1b41;               /* (inferred) */
  --color-focus-ring: rgba(99, 91, 255, 0.1);
  /* gradient (documented stops) */
  --gradient-hero: linear-gradient(100deg, #6ec3f4 0%, #3a3aff 30%, #ff61ab 65%, #e63946 100%);
  --gradient-skew: -12deg;
  --skew-section: -6deg;                /* (inferred) */
  /* typography */
  --font-body: sohne-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  --font-mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
  --text-display-xl: 72px; --text-display: 48px; --text-h1: 32px;
  --text-h2: 26px; --text-h3: 22px; --text-body: 16px;
  --text-caption: 14px; --text-eyebrow: 14px;
  --leading-display: 1.03; --leading-body: 1.5;
  --tracking-display: -0.01em; --tracking-eyebrow: 0.08em;
  --weight-display: 300; --weight-ui: 500;
  /* spacing (4px base) */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-5: 20px; --space-6: 24px; --space-8: 32px;
  --space-12: 48px; --space-16: 64px; --space-section: 112px;
  /* radius */
  --radius-sm: 4px; --radius-md: 8px; --radius-lg: 16px; --radius-pill: 100px;
  /* shadows (scraped) */
  --shadow-card: rgba(23, 23, 23, 0.06) 0 3px 6px 0;
  --shadow-card-hover: rgba(23, 23, 23, 0.08) 0 15px 35px 0;
  --shadow-focus: var(--color-focus-ring) 0 0 0 3px;
  /* layout — breakpoints: 640px | 940px | 1280px */
  --max-width: 1080px;
  --header-height: 64px;
  /* z-index (inferred) */
  --z-content: 0; --z-nav: 100; --z-dropdown: 500; --z-modal: 1000;
  /* motion */
  --ease-out: cubic-bezier(0.215, 0.61, 0.355, 1);
  --duration-fast: 150ms;
  --duration-default: 200ms;
  --duration-card: 250ms;
  --duration-reveal: 500ms;
}
```

### Example: primary pill button with arrow + states
```css
.btn-stripe {
  display: inline-flex; align-items: center; gap: 6px;
  background: var(--color-accent);
  color: #fff;
  font: 500 15px/1.4 var(--font-body);
  padding: 6px 16px;
  border: 0; border-radius: var(--radius-pill);
  cursor: pointer;
  white-space: nowrap;
  transition: background var(--duration-default) var(--ease-out);
}
.btn-stripe::after { content: "\2192"; /* → rendered as chevron-ish arrow */
  transition: transform var(--duration-fast) var(--ease-out); }
.btn-stripe:hover  { background: var(--color-accent-hover-dark); }
.btn-stripe:hover::after { transform: translateX(3px); }
.btn-stripe:focus-visible { box-shadow: var(--shadow-focus); outline: none; }
.btn-stripe:disabled { opacity: 0.4; pointer-events: none; }
```

### Example: feature card with hover lift
```css
.card-stripe {
  background: #fff;
  border: 1px solid var(--color-border);
  border-radius: var(--radius-lg);
  padding: var(--space-8);
  box-shadow: var(--shadow-card);
  transition: box-shadow var(--duration-card) var(--ease-out),
              transform var(--duration-card) var(--ease-out);
}
.card-stripe:hover { box-shadow: var(--shadow-card-hover); transform: translateY(-2px); }
.card-stripe .eyebrow {
  font: 600 var(--text-eyebrow)/1.4 var(--font-body);
  letter-spacing: var(--tracking-eyebrow);
  text-transform: uppercase;
  color: var(--color-accent);
}
.card-stripe h3 { font: 400 var(--text-h3)/1.3 var(--font-body); color: var(--color-text); }
```

### Example: signature skewed animated-gradient hero (CSS approximation)
```css
.hero-stripe { position: relative; padding: 140px 0 120px; overflow: hidden; }
.hero-stripe .gradient {
  position: absolute; inset: -20% 0 20% 0;
  background: var(--gradient-hero);
  background-size: 300% 300%;
  transform: skewY(var(--gradient-skew));
  transform-origin: top left;
  animation: stripe-drift 15s ease infinite;
}
@keyframes stripe-drift {
  0%   { background-position: 0% 50%; }
  50%  { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
@media (prefers-reduced-motion: reduce) {
  .hero-stripe .gradient { animation: none; }
}
/* real site: WebGL "minigl" canvas animating the same 4 stops, skewed -12deg */
```
