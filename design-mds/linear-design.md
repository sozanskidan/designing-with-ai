# Linear — Web Design Language
> Source: https://linear.app, https://linear.app/pricing (meta theme-color scraped: #08090a) + designmd.cc token snapshot of linear.app + documented token reference (soul-design-md) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Linear's site is a dark, cinematic product demo: near-black `#08090a` canvas, Inter set tight and slightly heavy, and the app itself — rendered in glowing, frosted panels — as the only imagery. Hierarchy is built by luminance stacking: layers get lighter (white at 2–8% opacity) as they rise, instead of using shadows. Everything is engineered-feeling — the signature 510 variable font weight, negative tracking, hairline `rgba(255,255,255,0.08)` borders, restrained indigo `#5e6ad2` accents. Motion is fast and physical (100–300ms ease-out, `scale(0.97)` presses), and the copy is terse manifesto-speak. It is the canonical "dark SaaS" aesthetic that half the industry now imitates.

## 2. Color

### Dark theme (primary) — scraped/documented
| Role | Value | Notes |
|---|---|---|
| Background | `#08090a` | Meta theme-color (scraped directly) |
| Surface 1 (panel) | `#0f1011` | Raised panels |
| Surface 2 | `#191a1b` / `#1f2023` | Cards, level-3 layers |
| Surface (glass) | `rgba(255,255,255,0.05)` | Cards via white-alpha; hover `0.07` |
| Text primary | `#f7f8f8` | 18.73:1 on bg (measured, AAA) |
| Text secondary | `#d0d6e0` | 13.64:1 (measured, AAA) |
| Text tertiary | `#8a8f98` | 6.13:1 (measured, AA); inactive nav |
| Text quaternary | `#62666d` | Disabled/decorative only (3.1:1) |
| Border (opaque) | `#2a2e33` / `#24282c` | Snapshot card borders |
| Border (alpha) | `rgba(255,255,255,0.02 / 0.05 / 0.08)` | Micro/subtle/standard hairlines |
| Inset / overlay | `rgba(0,0,0,0.03–0.5)` | Recesses, modal backdrop 0.5 |

### Accent & semantic
| Role | Value | Notes |
|---|---|---|
| Accent (indigo) | `#5e6ad2` | Buttons, focus, links |
| Accent hover | `#828fff` | Lighter indigo |
| Accent light | `#a8b1ff` | Gradient-text endpoint |
| Accent active | `#4b57c8` | Pressed primary button |
| Accent alt indigo | `#6366f1` / purple `#8b5cf6` | Snapshot secondary accents |
| Success | `#27a644` / complete `#10b981` | Pills at 15% alpha bg |
| Warning | `#f59e0b` | Amber pill |
| Error | `#eb5757` / `#e53935` | Red (snapshot / documented) |
| Focus ring | `0 0 0 3px rgba(94,106,210,0.3)` | Scraped snapshot value |

### Light theme (scraped snapshot + documented mappings)
- Background `#ffffff` / marketing `#f7f8f8`; panel `#ffffff`; level-3 `#f0f1f2`; secondary surface `#e8e9eb`
- Text: primary `#08090a`, secondary `#2c2e33`, tertiary `#5a5f6b`, quaternary/muted `#8a8f98`; snapshot light text `#62666d`, border `#e5e5e6`
- Borders: `rgba(0,0,0,0.03 / 0.06 / 0.1)`

### Gradients (documented)
- Indigo hero glow: `radial-gradient(ellipse at 50% 0%, rgba(94,106,210,0.2) 0%, transparent 60%)`
- Violet fade overlay: `linear-gradient(180deg, rgba(130,143,255,0.1), transparent)`
- Surface lift: `linear-gradient(180deg, rgba(255,255,255,0.05), rgba(255,255,255,0.02))`
- Text shimmer: `linear-gradient(90deg, #828fff 0%, #a8b1ff 50%, #828fff 100%)` + background-clip
- Dark vignette: `radial-gradient(ellipse at center, transparent 40%, rgba(8,9,10,0.6) 100%)`

## 3. Typography

### Families & loading
- UI/body: `"Inter Variable", "SF Pro Display", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, sans-serif` (scraped stack)
- Mono: `"Berkeley Mono", Menlo, Consolas, Monaco, monospace` (scraped stack)
- Inter served self-hosted as variable woff2; scraped CSS var `--font-variations: "opsz" auto` shows optical sizing in use
- Required features: `font-feature-settings: "cv01", "ss03"` (single-story a, geometric alternates); signature weight **510** via `font-variation-settings: "wght" 510`

### Type scale (merged scraped snapshot + documented reference)
| Name | Size | Weight | Line-height | Letter-spacing | Usage |
|---|---|---|---|---|---|
| display-xl | 72px | 590 | 1.0 | -0.022em (-1.584px) | Homepage hero |
| display / h0 | 64px | 590 | 1.0–1.1 | -0.02em | Section displays |
| h1 | 48px | 590 / 510 | 1.1 | -0.02em | Page titles (snapshot: `--font-size-title1: 2.25rem` in-app) |
| h2 | 32px | 510 | 1.1 | -0.022em | Feature heads |
| h3 | 24px | 510 | 1.2 | -0.015em | Sub-features |
| h4 | 20px | 510 | 1.3–1.4 | -0.01em | Card titles |
| body-lg | 18px | 400 | 1.6 | -0.011em | Lead paragraphs |
| body | 16px | 400 | 1.5 | -0.011em | Default copy |
| body-sm / small | 14px / 13px | 400 | 1.5 | -0.01em | Dense UI copy |
| caption | 12px | 400–510 | 1.4–1.5 | normal | Labels, badges (`--text-micro-size: 0.75rem` scraped) |
| micro | 11px | 510 | 1.3 | normal | Keycaps, meta |
| nav-link | 14px | 510 | tall (≈2.67 in header) | normal | Header links |
| code | 13–14px | 400–510 | 1.5–1.6 | normal | Berkeley Mono panels |

### Conventions
- Sentence case everywhere; no uppercase except rare eyebrow labels
- Tabular figures in stats/tables (inferred); negative tracking scales with size (~-0.022em display → 0 at caption)
- Responsive: display 72 → 56 → 40px across breakpoints (inferred)

## 4. Layout & Grid
- Marketing container: **1024–1080px** max; app screenshots run to 1280px; snapshot notes max-width ~1440px at ≥1280 viewport
- Grid: 12 columns, 24px gutter; mobile margin 16px, tablet 24px (documented)
- Spacing scale: `4, 8, 12, 16, 20, 24, 32` (scraped snapshot) extended `40, 48, 64, 80, 96` (documented)
- Section rhythm: 96–160px vertical gaps; homepage structured as numbered chapters "1.0 … 5.0" with sticky labels (scraped structure)
- Header: 64px, `rgba(8,9,10,0.85)` + `backdrop-filter: blur(12px) saturate(180%)`, hairline bottom `rgba(255,255,255,0.08)`; logo left, 14px/510 links, Log in / Sign up right
- Footer: multi-column 13px links in `#8a8f98` on `#08090a`, hover → `#f7f8f8`
- Breakpoints (scraped @media queries): **600, 640, 768, 1024, 1280px**
- Z-index ladder (scraped snapshot): 0 base · 1–10 cards · 50 sticky headers · 100 focus layer · 5000+ dropdowns/tooltips · 10000+ modals
- Touch targets: minimum 32×32px with 8px spacing (scraped snapshot); marketing targets 44px (documented)

## 5. Components

### Buttons (weight 510 text always)
| Variant | Default | Hover | Active | Focus | Disabled |
|---|---|---|---|---|---|
| Primary | `#5e6ad2` bg, `#f7f8f8` text, pad 8px 16px, radius 6px (marketing hero CTAs full pill 9999px) | `#828fff` or `filter: brightness(120%)` (scraped) | `#4b57c8` + `transform: scale(0.97)` (scraped) | `0 0 0 3px rgba(94,106,210,0.3)` | 40% opacity (inferred) |
| Ghost | transparent, 1px `rgba(255,255,255,0.08)` border, `#d0d6e0` text, radius 6px | bg `rgba(255,255,255,0.05)` | scale(0.97) | ring | dimmed |
| Subtle | bg `rgba(255,255,255,0.02)`, 1px `rgba(255,255,255,0.05)` | bg 0.05 | scale | ring | — |
- Transition: `0.15s ease` standard, `0.1s ease-out` micro (scraped); scraped var `--btn-overlay-shadow-hover: none` confirms no hover shadows

### Navigation
- 64px frosted header (`blur(12px) saturate(180%)`), z-50; links `#8a8f98` → hover `#d0d6e0` → active `#f7f8f8`
- Dropdowns: dark panels radius 8px, shadow `rgba(0,0,0,0.1) 0 4px 12px, rgba(0,0,0,0.2) 0 0 0 2px` (snapshot z-4 treatment), open 200ms fade+translate
- Mobile: slide-over panel, staggered link fade (inferred)

### Cards
- bg `rgba(255,255,255,0.05)`, 1px alpha border (or opaque `#2a2e33`), radius 8–12px, padding 24px; hover bg → 0.07; **no drop shadow** — elevation via luminance
- Popovers/toasts add layered black shadows + `inset 0 0 0 1px rgba(255,255,255,0.08)`

### App screenshot frames (signature imagery)
- Radius 12–22px, inner hairline ring, ambient indigo glow behind, occasionally perspective-tilted; sticky-header variant uses inset shadow `rgba(0,0,0,0.2) 0 0 12px inset` (snapshot)

### Inputs
- bg `rgba(255,255,255,0.02)`, 1px `rgba(255,255,255,0.05)` border, radius 6px, pad 12px 14px, placeholder `#62666d`; focus: border `#5e6ad2` + indigo ring; error: `#eb5757` border (inferred)

### Badges / status pills
- Radius 9999px, 12px/510, pad 4px 10px; tinted bg at 10–15% alpha of status color (`rgba(39,166,68,0.15)` + `#27a644` text, etc.)

### Keycap chips (signature detail)
- Tiny rounded (4px) bordered rects, mono 11px glyphs (`⌘K`), bg `rgba(255,255,255,0.05)`

### Footer
- `#08090a`, hairline top border, 5–6 columns 13px, muted → light hover, minimal logo + theme/status row

## 6. Imagery & Iconography
- **No photography.** Imagery = the product: high-fidelity app renders (issues, diffs, cycle charts) as glowing dark panels — homepage demonstrates real workflows (scraped: issue "ENG-2703", diff views, agent analytics)
- Ambient radial indigo glows and edge vignettes behind panels
- Gradient shimmer applied to key headline words via background-clip
- Icons: 16px geometric line/solid glyphs, monochrome `#8a8f98`, lighting to white on hover; color-coded label dots (Performance, iOS, Bug, Design, AI — scraped)
- Customer logos monochrome; testimonial avatars small and round (scraped: OpenAI, Ramp, Opendoor quotes)

## 7. Motion & Interaction

### Timing & easing
- Scraped snapshot: standard `0.15s ease`; micro `0.1s ease-out`; active press `transform: scale(0.97)`; hover `filter: brightness(120–125%)`
- Documented duration scale: 100 / 150 / 200 / 300 / 500ms
- Easing curves (documented): default `cubic-bezier(0.25,0.46,0.45,0.94)` (easeOutQuad); entrances `cubic-bezier(0.165,0.84,0.44,1)` (easeOutQuart); material `cubic-bezier(0.4,0,0.2,1)`; in `cubic-bezier(0.4,0,1,1)`; out `cubic-bezier(0,0,0.2,1)`

### Animation inventory (20 @keyframes detected in scraped CSS, incl. `Blink_blink`, `Collapsible_slideDown/Up`, `Author_close`)
- **Hero reveal**: headline + CTAs fade/rise on load, ~300ms easeOutQuart, staggered ~80ms (inferred stagger)
- **Scroll-linked section reveals**: panels fade + translateY(~12px) entering viewport, once
- **Product demo sequences**: app panels play through scripted workflows (cursor moves, issues update) as you scroll between numbered chapters
- **Collapsible FAQ/pricing rows**: `slideDown/slideUp` keyframes (scraped), ~200ms
- **Cursor blink** in fake inputs: `Blink` keyframes (scraped)
- **Button hover**: 150ms background/brightness; press scale(0.97) ~100ms
- **Dropdown open**: 200ms opacity + transform easeOutQuart
- **Modal enter**: 300ms opacity + scale(0.96→1)
- **Toast enter**: 200ms translateY(8px→0) + opacity
- **Text shimmer**: slow background-position sweep on gradient text, ~3s linear loop (inferred)
- Reduced motion: respects `prefers-reduced-motion: reduce` (documented)

## 8. Voice & Copy
- Terse, declarative, engineering-manifesto tone; sentence case; no exclamation marks; short sentences, long silences
- Real examples (scraped): "The product development system for teams and agents" · "Purpose-built for planning and building products. Designed for the AI era." · "A new species of product tool" · "Make product operations self-driving" · "Built for the future. Available today."
- Feature heads open with verbs: "Define the product direction" · "Move work forward across teams and agents" · "Review PRs and agent output" (all scraped)
- Social proof as bare numbers: "Trusted by more than 37,000 companies" (scraped)
- CTAs: "Get started", "Open app", "Contact sales", "Download" — never salesy

## 9. Signature Moves
- `#08090a` near-black canvas with white-alpha (0.02–0.08) surfaces and hairlines — elevation by luminance, not shadow
- Inter at variable weight **510** with `"cv01","ss03"` features and tight negative tracking
- Indigo `#5e6ad2 → #828fff` accent system + gradient-shimmer text on key words
- Glowing, hairline-ringed app screenshots as the only imagery
- 64px frosted header: `rgba(8,9,10,0.85)` + `blur(12px) saturate(180%)`
- Numbered chapters (1.0 … 5.0) structuring the marketing page
- Keycap-style shortcut chips (`⌘K`) sprinkled through copy
- `scale(0.97)` presses and 100–150ms ease-out micro-interactions everywhere

## 10. Emulation Tokens
```css
:root {
  /* color — surfaces (dark, primary) */
  --color-bg: #08090a;
  --color-surface-1: #0f1011;
  --color-surface-2: #191a1b;
  --color-surface-3: #1f2023;
  --color-surface-glass: rgba(255, 255, 255, 0.05);
  --color-surface-glass-hover: rgba(255, 255, 255, 0.07);
  /* color — text */
  --color-text: #f7f8f8;
  --color-text-secondary: #d0d6e0;
  --color-text-tertiary: #8a8f98;
  --color-text-quaternary: #62666d;
  /* color — borders */
  --color-border: rgba(255, 255, 255, 0.08);
  --color-border-subtle: rgba(255, 255, 255, 0.05);
  --color-border-opaque: #2a2e33;
  /* color — accent & states */
  --color-accent: #5e6ad2;
  --color-accent-hover: #828fff;
  --color-accent-active: #4b57c8;
  --color-accent-light: #a8b1ff;
  --color-success: #27a644;
  --color-warning: #f59e0b;
  --color-error: #eb5757;
  --color-backdrop: rgba(0, 0, 0, 0.5);
  /* light theme */
  --light-bg: #f7f8f8; --light-panel: #ffffff;
  --light-text: #08090a; --light-text-secondary: #5a5f6b;
  --light-border: rgba(0, 0, 0, 0.06);
  /* typography */
  --font-body: "Inter Variable", Inter, "SF Pro Display", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  --font-mono: "Berkeley Mono", Menlo, Consolas, Monaco, monospace;
  --font-features: "cv01", "ss03";
  --weight-ui: 510; --weight-display: 590;
  --text-display-xl: 72px; --text-display: 64px; --text-h1: 48px;
  --text-h2: 32px; --text-h3: 24px; --text-h4: 20px;
  --text-body-lg: 18px; --text-body: 16px; --text-sm: 14px;
  --text-small: 13px; --text-caption: 12px; --text-micro: 11px;
  --tracking-display: -0.022em; --tracking-body: -0.011em;
  /* spacing */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-5: 20px; --space-6: 24px; --space-8: 32px; --space-10: 40px;
  --space-12: 48px; --space-16: 64px; --space-20: 80px; --space-24: 96px;
  /* radius */
  --radius-micro: 2px; --radius-sm: 4px; --radius-md: 6px;
  --radius-card: 8px;  --radius-panel: 12px; --radius-large: 22px;
  --radius-pill: 9999px;
  /* shadows */
  --shadow-popover: rgba(0,0,0,0.15) 0 4px 12px, rgba(0,0,0,0.2) 0 8px 24px,
                    inset 0 0 0 1px rgba(255,255,255,0.08);
  --shadow-modal: rgba(0,0,0,0.2) 0 16px 48px, rgba(0,0,0,0.3) 0 32px 72px,
                  inset 0 0 0 1px rgba(255,255,255,0.1);
  --shadow-inset-header: rgba(0, 0, 0, 0.2) 0 0 12px inset;
  --shadow-focus: 0 0 0 3px rgba(94, 106, 210, 0.3);
  /* layout — breakpoints: 600 | 640 | 768 | 1024 | 1280px */
  --max-width: 1080px; --max-width-app: 1280px;
  --header-height: 64px; --gutter: 24px;
  /* z-index */
  --z-base: 0; --z-card: 10; --z-sticky: 50; --z-focus: 100;
  --z-dropdown: 5000; --z-modal: 10000;
  /* motion */
  --ease-default: cubic-bezier(0.25, 0.46, 0.45, 0.94);
  --ease-enter: cubic-bezier(0.165, 0.84, 0.44, 1);
  --ease-material: cubic-bezier(0.4, 0, 0.2, 1);
  --duration-micro: 100ms; --duration-fast: 150ms;
  --duration-normal: 200ms; --duration-modal: 300ms; --duration-slow: 500ms;
  /* gradients */
  --glow-hero: radial-gradient(ellipse at 50% 0%, rgba(94,106,210,0.2) 0%, transparent 60%);
  --text-shimmer: linear-gradient(90deg, #828fff 0%, #a8b1ff 50%, #828fff 100%);
}
```

### Example: primary button with states
```css
.btn-linear {
  background: var(--color-accent);
  color: var(--color-text);
  font-family: var(--font-body);
  font-size: var(--text-sm);
  font-variation-settings: "wght" 510;
  font-feature-settings: var(--font-features);
  padding: 8px 16px;
  border: 0; border-radius: var(--radius-md);
  cursor: pointer;
  transition: background-color var(--duration-fast) var(--ease-default),
              transform var(--duration-micro) var(--ease-default);
}
.btn-linear:hover  { background: var(--color-accent-hover); }
.btn-linear:active { background: var(--color-accent-active); transform: scale(0.97); }
.btn-linear:focus-visible { box-shadow: var(--shadow-focus); outline: none; }
.btn-linear:disabled { opacity: 0.4; pointer-events: none; }
```

### Example: glass card (elevation by luminance)
```css
.card-linear {
  background: var(--color-surface-glass);
  border: 1px solid var(--color-border-subtle);
  border-radius: var(--radius-card);
  padding: var(--space-6);
  box-shadow: none;                       /* never a drop shadow at card level */
  transition: background-color var(--duration-fast) var(--ease-default);
}
.card-linear:hover { background: var(--color-surface-glass-hover); }
```

### Example: signature frosted header + gradient-shimmer text
```css
.header-linear {
  position: sticky; top: 0; z-index: var(--z-sticky);
  height: var(--header-height);
  display: flex; align-items: center; gap: var(--space-6);
  padding: 0 var(--space-6);
  background: rgba(8, 9, 10, 0.85);
  -webkit-backdrop-filter: blur(12px) saturate(180%);
  backdrop-filter: blur(12px) saturate(180%);
  border-bottom: 1px solid var(--color-border);
}
.header-linear a { color: var(--color-text-tertiary); font-size: 14px;
  font-variation-settings: "wght" 510; text-decoration: none;
  transition: color var(--duration-fast) var(--ease-default); }
.header-linear a:hover { color: var(--color-text-secondary); }

.shimmer-linear {
  background: var(--text-shimmer);
  background-size: 200% 100%;
  -webkit-background-clip: text; background-clip: text;
  color: transparent;
  animation: shimmer 3s linear infinite;
}
@keyframes shimmer { to { background-position: -200% 0; } }
@media (prefers-reduced-motion: reduce) { .shimmer-linear { animation: none; } }
```
