# Apple — Web Design Language
> Source: https://www.apple.com, https://www.apple.com/iphone/ + designmd.cc token snapshot of apple.com + documented token reference (VoltAgent awesome-design-md) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Apple.com is a vertical stack of full-bleed "product tiles" — each one a self-contained billboard with a short headline, one line of copy, two pill links, and a giant product render. The product is the hero; the chrome disappears. Typography does almost all the branding: tight, semibold San Francisco headlines centered over enormous whitespace, with alternating white / #f5f5f7 / black tiles supplying rhythm instead of borders or shadows. Hierarchy comes exclusively from surface color, type scale, and frosted blur — there are effectively zero card shadows on marketing surfaces. Everything is calm, symmetric, and center-aligned; restraint *is* the aesthetic, and the page reads as a sequence of perfect posters.

## 2. Color

### Core palette
| Role | Value | Notes |
|---|---|---|
| Background (primary canvas) | `#ffffff` | Default tile background |
| Background (alt tile / footer) | `#f5f5f7` | Signature warm gray; designmd snapshot lists it as "main" bg |
| Background (surface / ghost fill) | `#fafafc` | Pearl capsule buttons; scraped var `--sk-fill-secondary: rgb(250,250,252)` |
| Background (dark tile) | `#000000` | Global nav, video/hero dark tiles |
| Surface (dark tile variants) | `#272729` / `#2a2a2c` / `#252527` | Micro-separation between stacked dark tiles |
| Text primary (light bg) | `#1d1d1f` | Scraped var `--sk-body-text-color: rgb(29,29,31)` |
| Text secondary / muted | `#6e6e73` | Captions, footer links |
| Text muted ink 80 | `#333333` | Text on pearl capsule buttons |
| Text on dark | `#f5f5f7` / `#ffffff` | Headlines on black tiles |
| Muted body on dark | `#cccccc` | Secondary copy on dark tiles |
| Disabled / fine print | `#7a7a7a` | Legal, disabled states |
| Border / hairline | `#d2d2d7` | Dividers; chip base at 64% alpha |
| Border (utility card) | `#e0e0e0` | 1px utility card borders |
| Divider soft | `#f0f0f0` | Secondary button rings |

### Interaction colors & states
| Role | Value | Notes |
|---|---|---|
| Primary button fill | `#0071e3` | Blue pill CTAs |
| Primary button hover | `#0077ed` | Slight lighten (inferred from live behavior) |
| Primary button active | `#006edb` + `scale(0.95)` | Press (hex inferred; scale documented) |
| Text link | `#0066cc` | "Buy >" links; underline on hover only |
| Link on dark | `#2997ff` | Sky blue on black tiles |
| Focus ring | 2px solid `#0071e3` | Keyboard focus, offset 2px |
| "New" badge text | `#f56300` (inferred) | Orange eyebrow tag on new tiles |
| Overlay / scrim | `rgba(0,0,0,0.48)` (inferred) | Nav flyout + modal backdrop |
| Frosted nav | `rgba(245,245,247,0.8)` + `blur(20px)` | Sticky sub-nav translucency |
| Frosted nav (dark) | `rgba(22,22,23,0.8)` + `blur(20px)` (inferred) | Dark-context nav |

### Gradients & modes
- Soft radial device-glow behind renders on dark tiles: `radial-gradient(ellipse at center, #2a2a2c 0%, #000 70%)` (inferred)
- No user-facing dark-mode toggle on marketing pages; "dark" is editorial (black tiles). Store/support UI respects `prefers-color-scheme` (inferred)
- Semantic (store contexts, inferred): success `#03a10e`, error `#e30000`

## 3. Typography

### Families & loading
- Display: `"SF Pro Display", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji"` (scraped stack)
- Body/UI: `"SF Pro Text", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif` (scraped stack)
- Mono (rare): `"SF Mono", Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace` (scraped stack)
- Self-hosted woff2 from `www.apple.com/wss/fonts/`; Apple devices fall back to system SF so most visitors download nothing (documented behavior)
- Convention: SF Pro Display at ≥ 20–21px, SF Pro Text below (documented SF crossover)

### Type scale (merged scraped snapshots)
| Name | Size | Weight | Line-height | Letter-spacing | Usage |
|---|---|---|---|---|---|
| hero-display | 56px | 600 | 1.07–1.1 | -0.02em (-0.28px) | Homepage hero headlines |
| h1 / display-lg | 44–40px | 600 | 1.1–1.2 | -0.01em | Product page H1, large tiles |
| display-md | 34px | 600 | 1.14 | -0.374px | Half-width tile headlines |
| h2 / lead | 28px | 400–600 | 1.14–1.2 | +0.196px | Section leads, subheads |
| lead-airy | 24px | 300 | 1.5 | 0 | Airy intro paragraphs |
| h3 / tagline | 21px | 600 | 1.19–1.3 | +0.231px | Sub-nav title, taglines |
| body | 17px | 400 | 1.47 | -0.374px | Default paragraph |
| body-strong | 17px | 600 | 1.24 | -0.374px | Inline emphasis |
| button-large | 18px | 300 | 1.0 | 0 | Store hero CTAs |
| sub-body / caption | 14px | 400 | 1.43–1.5 | -0.224px | Captions, utility buttons |
| fine-print | 12px | 400 | 1.33–1.5 | -0.12px / +0.01em | Legal, footer |
| nav-link | 12px | 400 | 1.0 | -0.12px | 44px global nav |

### Responsive shifts & conventions
- Hero: 56px desktop → ~48px @1068 → 40px @734 → 32–28px small phones (documented breakpoint behavior)
- Body stays 17px at every breakpoint; captions stay 14/12px
- Sentence case everywhere; headlines end with a period; proportional (non-tabular) figures on marketing; superscript daggers for legal refs

## 4. Layout & Grid
- Content lock: **1440px**; classic centered text measure ≈ **980px**; tiles full-bleed with inner ~87.5% width (inferred)
- Grid: 1-col full-width heroes → 2-up half tiles (~12px gap); product pages 12-col, ~22px gutters (inferred)
- Spacing scale (scraped): `4, 8, 12, 16, 20, 24, 32, 48, 128px` + documented 17px "md" oddity and 80px tile padding
- Section rhythm: ~80px vertical padding inside tiles, 12px between tiles, ~48px headline→CTA gap (inferred)
- Header: 44px global nav (`#000` or frosted dark), 12px links, inner width ~1024px, Search + Bag right, hamburger at ~834px
- Sub-nav: 52px sticky, product name (21px/600) left, anchors + CTA right, `rgba(245,245,247,0.8)` + `backdrop-filter: blur(20px)`
- Footer: `#f5f5f7`, 5–6 columns of 12px links, breadcrumb row, locale selector, legal block; accordion on mobile
- Breakpoints (scraped): ≤734 mobile · 735–1068 tablet · 1069–1440 desktop · ≥1441 desktop-large; nav collapse at 834px
- Z-index (scraped): 0 flat · 1–4 content · 3 hero · 9999 navigation · 10000 modal/overlay
- Touch target minimum 44×44px (documented)

## 5. Components

### Hero / product tile (atomic unit)
Centered stack: eyebrow product name (21px/600) → headline (56px/600) → subhead (21–28px) → CTA pair → full-bleed render. No border, radius, or shadow. Dark tiles invert text to `#f5f5f7`, links to `#2997ff`.

### Buttons (all transition ~200–320ms `cubic-bezier(0.4,0,0.6,1)`)
| Variant | Default | Hover | Active | Focus | Disabled |
|---|---|---|---|---|---|
| Primary pill | `#0071e3`, #fff 17px/400, pad 11px 22px, r980px | `#0077ed` | `scale(0.95)` + darken | 2px `#0071e3` ring | 56% opacity (inferred) |
| Store hero | `#0071e3`, 18px/300, pad 14px 28px, pill | lighten | scale | ring | — |
| Secondary pill | transparent, `#0066cc` text, ring `#f0f0f0` | tint `rgba(0,113,227,0.1)` (inferred) | `scale(0.95)` | ring | dimmed |
| Dark utility | `#1d1d1f`, #fff 14px, r8px, pad 8px 15px | `#272729` (inferred) | scale | ring | — |
| Pearl capsule | `#fafafc`, `#333` 14px, r11px, pad 8px 14px | `#f5f5f7` | scale | ring | — |
| Text link | `#0066cc` + `>` chevron | underline | — | outline | — |

### Navigation
- Global nav: 44px, z-9999, text-only 12px links; flyout mega-panels expand downward with frosted blur; page behind dims + blurs; search expands inline with suggestion panel
- Sub-nav: 52px sticky frosted bar appearing after the hero; anchor links smooth-scroll
- Mobile: full-screen slide-down menu, links stagger-fade in (~40ms/item, inferred)

### Cards
- Utility/media cards (services carousel): radius 11–18px, full-bleed bg image, text top-left, 1px `#e0e0e0` on white; hover `scale(1.01–1.02)` + `rgba(0,0,0,0.16) 2px 4px 12px` (inferred hover values)
- Icon chips: 44×44px circles, `#d2d2d7` @64% alpha, `#1d1d1f` glyph

### Inputs (store contexts, inferred from Store UI)
- 56px float-label fields, radius 12px, 1px `#d2d2d7`, 17px text; focus 2px `#0071e3` ring; error `#e30000` border + caption

### Badges
- "New" eyebrow: 12px `#f56300` above tile headline (hex inferred)

### Footer
- 12px throughout; column headings `#424245` (inferred), links `#6e6e73` → `#1d1d1f` + underline on hover

## 6. Imagery & Iconography
- Hyper-real studio product renders on white, black, or soft gradients; device screens pixel-perfect with real UI
- Objects float in space, dramatically cropped at tile edges; no lifestyle clutter on homepage
- Art-directed per breakpoint via `<picture>`; assets from `apple.com/v/home/images/` (scraped path)
- Only sanctioned shadow: product-imagery drop `rgba(0,0,0,0.22) 3px 5px 30px` (scraped)
- Icons: SF Symbols-style thin monochrome line; chevron `›` is the universal affordance
- Services carousel: rounded ~16px media cards with "Stream now / Play now / Watch now" overlays (labels scraped)

## 7. Motion & Interaction

### Timing & easing (scraped)
- Global easing: `cubic-bezier(0.4, 0, 0.6, 1)` · UI transitions ~**320ms** · component states 200–300ms
- Press: `transform: scale(0.95)`, ~150ms (duration inferred)

### Animation inventory
- **Scroll-fade tile reveals**: content fades + rises ~20px entering viewport, ~600ms ease-out, fires once (values inferred, behavior observed)
- **Scroll-scrubbed pinned sequences** (product heroes): section pins; canvas image-sequence or video frame tied linearly to scroll progress — the signature iPhone/AirPods technique (documented Apple pattern)
- **Sticky sub-nav**: slides down with frosted blur after hero passes; anchor smooth-scroll ~800ms ease-in-out (inferred)
- **Nav flyouts**: mega-panel height expands ~400ms, content fades in ~100ms behind; backdrop dim+blur
- **Carousels**: horizontal snap-scroll with paddles, ~500ms ease-in-out slide (inferred)
- **Parallax**: subtle foreground/background rate offset on select heroes; never aggressive
- **Hover micro**: instant link underline; card scale over ~300ms
- **Stagger**: headline → subhead → CTAs offset ~100ms on reveal (inferred)
- Reduced motion: honors `prefers-reduced-motion` — scrub sequences degrade to static poster frames (documented Apple practice)

## 8. Voice & Copy
- Ultra-short declarative headlines with a period; heavy wordplay, parallelism, product-name puns
- Sentence case always; product names capitalized exactly (iPhone, MacBook Air, Apple Watch)
- Real examples (scraped): "Love it. Lease it. Upgrade it." · "College, sorted." · "Meet the latest iPhone lineup." · "Privacy. That's iPhone." · "Now supercharged by M5." · "The ultimate way to watch your health." · "Endless entertainment."
- Microcopy: "Learn more", "Buy", "Shop", "Watch now", "Stream now" — bare verbs, zero exclamation marks
- Specs framed as benefits; superlatives earned ("Our thinnest ever"); legal via daggers collected at page bottom in 12px

## 9. Signature Moves
- Alternating white / `#f5f5f7` / black full-bleed tiles as the entire page architecture
- Centered SF Pro semibold headline + one subhead + "Learn more / Buy ›" pair — the canonical tile anatomy
- Blue pill buttons (`#0071e3`, radius 980px) beside bare blue chevron links
- 44px pure-black global nav with tiny 12px links at z-index 9999
- Frosted-glass sticky sub-nav: `rgba(245,245,247,0.8)` + `backdrop-filter: blur(20px)`
- Scroll-scrubbed pinned video/image sequences on product heroes
- Headlines that end with a period and pun ("College, sorted.")
- Zero card shadows — elevation via surface color, scale, and blur only

## 10. Emulation Tokens
```css
:root {
  /* color — surfaces */
  --color-bg: #ffffff;
  --color-bg-alt: #f5f5f7;
  --color-bg-ghost: #fafafc;
  --color-bg-dark: #000000;
  --color-surface-dark-1: #272729;
  --color-surface-dark-2: #2a2a2c;
  /* color — text */
  --color-text: #1d1d1f;
  --color-text-secondary: #6e6e73;
  --color-text-muted: #7a7a7a;
  --color-text-on-dark: #f5f5f7;
  --color-text-on-dark-muted: #cccccc;
  /* color — interaction */
  --color-accent: #0071e3;
  --color-accent-hover: #0077ed;
  --color-accent-active: #006edb;            /* (inferred) */
  --color-link: #0066cc;
  --color-link-on-dark: #2997ff;
  --color-badge-new: #f56300;                /* (inferred) */
  --color-border: #d2d2d7;
  --color-border-card: #e0e0e0;
  --color-frost: rgba(245, 245, 247, 0.8);
  --color-frost-dark: rgba(22, 22, 23, 0.8); /* (inferred) */
  --color-scrim: rgba(0, 0, 0, 0.48);        /* (inferred) */
  /* typography */
  --font-display: "SF Pro Display", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  --font-body: "SF Pro Text", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  --font-mono: "SF Mono", Menlo, Monaco, Consolas, monospace;
  --text-hero: 56px;  --text-h1: 44px;  --text-display-md: 34px;
  --text-h2: 28px;    --text-h3: 21px;  --text-body: 17px;
  --text-caption: 14px; --text-fine: 12px;
  --leading-display: 1.07; --leading-body: 1.47;
  --tracking-display: -0.02em; --tracking-body: -0.022em;
  /* spacing */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-5: 20px; --space-6: 24px; --space-8: 32px; --space-12: 48px;
  --space-section: 80px; --space-mega: 128px;
  /* radius */
  --radius-sm: 8px; --radius-md: 11px; --radius-lg: 18px; --radius-pill: 980px;
  /* shadow (product imagery only) */
  --shadow-product: rgba(0, 0, 0, 0.22) 3px 5px 30px 0;
  /* layout — breakpoints: 734px | 834px (nav) | 1068px | 1441px */
  --max-width: 1440px; --max-width-text: 980px;
  --nav-height: 44px;  --subnav-height: 52px;
  /* z-index */
  --z-content: 1; --z-hero: 3; --z-nav: 9999; --z-modal: 10000;
  /* motion */
  --ease-standard: cubic-bezier(0.4, 0, 0.6, 1);
  --ease-out: cubic-bezier(0.25, 0.1, 0.25, 1);
  --duration-press: 150ms; --duration-state: 300ms;
  --duration-ui: 320ms;    --duration-reveal: 600ms;
}
```

### Example: primary pill button with states
```css
.btn-apple {
  display: inline-block;
  background: var(--color-accent);
  color: #fff;
  font: 400 17px/1.17 var(--font-body);
  padding: 11px 22px;
  border: 0;
  border-radius: var(--radius-pill);
  cursor: pointer;
  transition: background var(--duration-ui) var(--ease-standard),
              transform var(--duration-press) var(--ease-standard);
}
.btn-apple:hover        { background: var(--color-accent-hover); }
.btn-apple:active       { background: var(--color-accent-active); transform: scale(0.95); }
.btn-apple:focus-visible{ outline: 2px solid var(--color-accent); outline-offset: 2px; }
.btn-apple:disabled     { opacity: 0.56; pointer-events: none; }
/* companion chevron text link */
.link-apple { color: var(--color-link); text-decoration: none; }
.link-apple::after { content: " \203A"; }
.link-apple:hover  { text-decoration: underline; }
```

### Example: billboard tile (card-free hero)
```css
.tile {
  background: var(--color-bg-alt);
  text-align: center;
  padding: var(--space-section) var(--space-6) 0;
  overflow: hidden; /* render crops at tile edge */
}
.tile--dark { background: var(--color-bg-dark); color: var(--color-text-on-dark); }
.tile h2 {
  font: 600 var(--text-hero)/var(--leading-display) var(--font-display);
  letter-spacing: var(--tracking-display);
  margin: 0 0 var(--space-2);
}
.tile p { font: 400 var(--text-h3)/1.4 var(--font-body); color: var(--color-text-secondary); }
.tile .ctas { display: flex; gap: var(--space-6); justify-content: center;
              margin: var(--space-4) 0 var(--space-8); }
```

### Example: signature frosted sticky sub-nav
```css
.subnav {
  position: sticky; top: 0; z-index: var(--z-nav);
  height: var(--subnav-height);
  display: flex; align-items: center; justify-content: space-between;
  padding: 0 max(22px, calc((100% - 980px) / 2));
  background: var(--color-frost);
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
  border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}
.subnav .title { font: 600 21px/1 var(--font-display); color: var(--color-text); }
.subnav a { font: 400 12px/1 var(--font-body); color: var(--color-text); margin-left: var(--space-6); }
```
