# Vercel — Web Design Language
> Source: https://vercel.com · https://vercel.com/geist/colors · https://vercel.com/geist/typography · token captures: designmd.cc/benchmarks/vercel, seedflip.co/blog/vercel-design-system · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped; values marked (capture) come from third-party measured token captures of vercel.com

## 1. Design Philosophy
Vercel's site is engineering-as-brand: a near-monochrome black/white system where color is rationed into functional 10-step scales and a single ▲ triangle carries the identity. Everything sits on the Geist design system — `--ds-*` custom properties, Geist Sans/Geist Mono typefaces, hairline-bordered grid cells — so marketing pages feel like a beautifully specified developer dashboard. Precision cues dominate: 1px rules, crosshair guide lines, uppercase monospaced eyebrows, terminal snippets, and P3 color on capable displays. Dark and light mode are equal citizens (`color-scheme: dark light`; meta theme-color `#000`), and motion is fast and subordinate — 150–200ms property transitions, never theatrics. Current messaging frames the entire product as "Agentic Infrastructure."

## 2. Color
### Core roles (light mode)
| Role | Value | Notes |
|---|---|---|
| Background page | `#FFFFFF` | `--ds-background-100` (scraped token name) |
| Background secondary | `#FAFAFA` | `--ds-background-200` (capture) |
| Ink / text primary | `#171717` | "Primary Black" (capture); AAA on white (17.93:1, measured) |
| Text secondary | `#4D4D4D` | AAA on `#FAFAFA` (8.1:1) (capture) |
| Text muted | `#666666` | AA (5.5:1) (capture) |
| Text disabled | `#8F8F8F` | AA-large only (3.1:1) (capture) |
| Border default | `#EBEBEB` | 1px hairlines everywhere (capture) |
| Accent blue | `#0070F3` | Brand/action blue (capture) |
| Link | `#0068D6` | Slightly darker than accent (capture) |
| Visited link | `#7820BC` | Purple (capture) |
| Error | `#EE0000` | red-800-level (capture) |
| Warning | `#F5A623` | amber (capture) |

### Core roles (dark mode)
| Role | Value | Notes |
|---|---|---|
| Background page | `#000000` | Scraped meta theme-color `#000` |
| Surface / card | `#0A0A0A` | gray-950-level (capture) |
| Surface raised | `#111111`–`#171717` (inferred) | Panels over pure black |
| Text primary | `#FFFFFF` / `#EDEDED` (inferred) | |
| Text secondary | `#A3A3A3` | gray-400-level (capture) |
| Border default | `rgba(255,255,255,0.08)` | (capture) |
| Border strong | `rgba(255,255,255,0.15)` | Hover border state (capture) |

### Gray scale (capture; measured from vercel.com)
`gray-100 #F7F7F7 · 200 #E5E5E5 · 300 #D4D4D4 · 400 #A3A3A3 · 500 #737373 · 600 #525252 · 700 #404040 · 800 #262626 · 900 #171717 · 950 #0A0A0A`

### Scale semantics (scraped from Geist docs)
Scales: `backgrounds, gray, gray-alpha, blue, red, amber, green, teal, purple, pink`, steps 100–1000, exposed as `var(--ds-[color]-[step])`. Roles by step: **100–300** component backgrounds (default/hover/active) · **400–600** borders (default/hover/active) · **700–800** high-contrast backgrounds · **900–1000** text and icons. P3 colors used on supported browsers/displays.

### State variants, overlays, gradients
- Button hover/active are opacity-based: hover ~0.8, active ~0.7 (capture); cell hover = border steps up one level (400→500) and background fills `--ds-gray-100`/alpha (scraped semantics)
- Overlay scrim: `rgba(0,0,0,0.4)` for modals (inferred); `gray-alpha` scale exists specifically for translucent fills (scraped)
- Signature gradients (inferred, widely documented): rainbow tri-gradient pairs `linear-gradient(90deg,#007CF0,#00DFD8)`, `(90deg,#7928CA,#FF0080)`, `(90deg,#FF4D4D,#F9CB28)` for gradient-clipped hero text; conic glows behind the ▲ triangle
- Focus ring: 2px `#0070F3` outline, 2px offset (inferred)

## 3. Typography
- Families: **Geist Sans** + **Geist Mono** (Vercel's own open-source faces). Capture stacks: `Geist, ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif`; mono `"Geist Mono", ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace`
- Geist docs (scraped): 34 preset classes across **Headings / Buttons / Labels / Copy**, named by size — `text-heading-72`, `text-copy-16`, `text-label-14` — each presetting size/line-height/letter-spacing/weight, with **Strong**/**Subtle** modifiers via `<strong>`
- Font loading: self-hosted variable WOFF2 via `next/font`, `font-display: swap`, metric-matched "Geist Fallback" to prevent CLS (inferred)
- Numerics: Geist Mono with tabular figures for metrics, versions, tables, benchmarks (inferred)

### Type scale (capture values + Geist class names; rem @16px base)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| heading-72 | 72px / 4.5rem | 600 | 1.1 | −0.04em | Hero display (desktop) |
| heading-64 | 64px / 4rem | 600 | 1.1 | −0.04em | Hero display |
| heading-48 | 48px / 3rem | 400–600 | 1.15–1.2 | −0.03em | Display/H1 (capture: 48px w400 lh1.2) |
| heading-32 | 32px / 2rem | 400–500 | 1.2 | −0.02em | H1/H2 (capture: 32px w400 lh1.2) |
| heading-24 | 24px / 1.5rem | 400–500 | 1.3 | −0.01em | H2/H3 (capture: 24px w400 lh1.3) |
| heading-20 | 20px / 1.25rem | 500 | 1.4 | −0.01em | H3/H4 (capture: 20px w500 lh1.4) |
| copy-18 | 18px | 400 | 1.6 | 0 | Lede paragraphs |
| copy-16 | 16px / 1rem | 400 | 1.5 | 0 | Body large (capture) |
| copy-14 | 14px / 0.875rem | 400 | 1.5 | 0 | Body default (capture) |
| button-14 | 14px | 500 | 1 | 0 | Button labels (capture) |
| label-14 | 14px | 400–500 | 1.4 | 0 | Form labels (capture) |
| label-12 (mono) | 12px | 400 | 1.5 | +0.06–0.08em, UPPERCASE | Eyebrows, badges (Geist Mono) |
| caption | 12px | 400 | 1.5 | 0 | Captions, legal (capture) |
| code | 14px mono | 400 | 1.5 | 0 | Code blocks (capture) |
- Responsive shifts: hero 72→48→36px, H2 48→32px across desktop/tablet/mobile (inferred ratios); body constant 16px

## 4. Layout & Grid
- Breakpoints (capture): mobile `<600px` · tablet `600–960px` · desktop `>960px`; additional 640px, 768px detected in CSS
- Container: centered, max-width ~1080–1200px (inferred), with **visible vertical hairline borders** at container edges running full page height; horizontal section hairlines complete a continuous ruled frame
- Grid: 12-col mental model; feature grids render as 2–4-col cells **sharing** collapsed 1px borders (table-like), with "+" crosshair marks at some intersections (inferred detail)
- Spacing scale (capture): `4, 8, 12, 16, 24, 32, 40, 48, 64` px core; marketing rhythm extends to 96/128px (capture)
- Section vertical rhythm: 96–160px between major bands (inferred); intra-section gaps 24–48px
- Header: sticky, ~64px tall, translucent bg + backdrop-blur, bottom hairline `rgba(0,0,0,0.1)` (capture "Header z-3" spec); ▲ logo left; nav Products / Resources / Enterprise / Pricing with mega-dropdowns (Agent Stack: AI SDK, AI Gateway, Sandbox, Workflows, Passport; Core Platform: Security, Content Delivery, Fluid Compute, Observability, CI/CD — scraped); right: Log In, Sign Up, "Get a Demo"
- Footer: dense multi-column sitemap (Agent Stack, Core Platform, Security, Tools, Frameworks, SDKs, Build, Learn, Explore, Company, Legal & Trust, Social — scraped) + status indicator + theme switcher (system/light/dark segmented control)
- Z-index ladder (capture): 1–2 static · 75 header · 80 mobile menu toggle · 100 aside/popovers · 1000 fixed overlays · 100000+ critical overlays

## 5. Components
### Buttons (capture + inferred states)
| Property | Primary | Secondary | Ghost |
|---|---|---|---|
| Fill | `#171717` (light) / `#FFF` (dark) — inverted mono | transparent + 1px `#EBEBEB` | transparent |
| Text | `#FFF` / `#000` | `#171717` / `#EDEDED` | `#666666` |
| Padding | `8px 14px` (capture); marketing pills `12px 24px` (inferred) | same | same |
| Radius | 6px standard / 9999px pill (capture) | same | 6px |
| Font | 14px, weight 500 (capture) | same | same |
| Hover | opacity ~0.8 or lighten to `#383838` (capture) | border `#8F8F8F`, bg `#FAFAFA` | bg `#F7F7F7`, text `#171717` |
| Active | opacity ~0.7 (capture) | bg `#F2F2F2` | bg `#E5E5E5` |
| Focus | 2px `#0070F3` ring, 2px offset (inferred) | same | same |
| Disabled | bg `#FAFAFA`, text `#8F8F8F`, border `#EBEBEB` | same | text `#8F8F8F` |
| Transition | `0.2s ease-out` bg/border/color (capture) | same | same |

### Cards / grid cells
- 1px border `#EBEBEB` light / `rgba(255,255,255,0.08)` dark; radius 8px standalone, 0 inside collapsed-border grids; padding 24px (capture)
- Elevation ladder (capture): flat = border only · card = `0 0 0 1px #ebebeb, 0 1px 2px rgba(0,0,0,0.05)` · hover = `0 0 0 1px rgba(0,0,0,0.1), 0 4px 12px rgba(0,0,0,0.08)` · popover = `0 4px 4px rgba(0,0,0,0.05)` · modal = `0 8px 16px -4px rgba(0,0,0,0.05), 0 24px 32px -8px rgba(0,0,0,0.1)`
- Anatomy: 12px mono uppercase eyebrow → 20–24px heading → 14–16px one-liner → optional arrow link; hover = border contrast + shadow step, no translate

### Inputs & forms
- 1px `#EBEBEB` border, radius 6px, padding `8px 12px`, 14px text; label 14px, 8px margin-bottom (capture)
- States (inferred from gray/blue roles): hover border `#8F8F8F` · focus border `#0070F3` + soft ring · error `#EE0000` border + 12px helper · disabled bg `#FAFAFA` text `#8F8F8F`
- Search field carries `⌘K` keycap badge (mono 12px, 1px border, 4px radius) (inferred detail)

### Badges, code, misc
- Badges/pills: 12px mono uppercase, 1px border, radius 9999px or 4px, tinted at steps 100 (bg) / 400 (border) / 900 (text) of a semantic scale (scraped semantics)
- Terminal/code block: `#0A0A0A` panel, Geist Mono 13–14px/1.5, traffic-light dots or `▲ ~` prompt, hover copy button; syntax colors from blue/teal/purple scales
- Tabs: text + 2px active underline `#171717`; logo wall: grayscale marks in shared-border cells (inferred)

## 6. Imagery & Iconography
- Nearly zero photography; abstract geometry — the ▲ triangle as wireframe, conic-gradient glow, particle field; dot-matrix globes/edge-network maps; rainbow gradient mesh reserved for launch moments
- Product = real UI screenshots in hairline-border browser chrome using the capture shadow ladder; architecture diagrams drawn in the same 1px box-and-connector language as the page grid
- Icons: Geist icon set — 16/24px grid, 1.5px stroke, geometric, monochrome `currentColor`; status = small filled dots (green/amber/red)
- Assets swap per theme (dark/light variants); no decorative drop shadows beyond the ladder

## 7. Motion & Interaction
### Timing & curves (capture unless noted)
| Token | Value | Use |
|---|---|---|
| duration-fast | 150ms | nav links, `ease-in-out` |
| duration-base | 200ms (`0.2s`) | default property transitions, `ease-out`; described "quick, non-intrusive" |
| duration-slow | 300–400ms (inferred) | mega-menu, accordions, modals |
| ease-out | CSS `ease-out` | entrances, hovers |
| ease-in | `cubic-bezier(.4, 0, 1, 1)` | exits |
| ease-in-out | CSS `ease-in-out` | nav color changes @150ms |

### Animation inventory
- **Hero reveal**: headline fade + ~12px rise, 400–600ms ease-out, staggered 80–120ms (headline → subline → CTA pair) (inferred)
- **Gradient text shimmer**: background-position pan on clipped text, 6–8s linear infinite (inferred, signature)
- **Ambient graphics**: SVG line-draw of triangle/diagrams, conic-glow rotation 10s+ linear (inferred)
- **Hover micro**: border-color/bg fill @200ms; arrows nudge 2–4px right; code copy-button fades in (inferred)
- **Mega-menu**: opacity + scale from 0.98, ~200ms ease-out, hairline panel, no bounce (inferred)
- **Scroll-triggered**: one-shot fade-up ~24px at ~20% viewport threshold; metric counters count up (inferred)
- **Sticky**: header only; content does not scroll-scrub — Vercel avoids scrolljacking
- **Page transitions**: none; instant client navigation is itself the brand statement
- **Stagger pattern**: 60–120ms sibling delays, max ~5 items then simultaneous (inferred)
- **Reduced motion**: `prefers-reduced-motion` removes translate/scale, keeps opacity fades (inferred best practice consistent with Geist a11y guidance)

## 8. Voice & Copy
- Confident, technical, compressed; verbs first; zero fluff; sentence case everywhere; developer vocabulary used natively (API, CLI, MCP, Sandboxed VMs)
- Real examples (scraped): "Agentic Infrastructure" · "Build agents on infrastructure that thinks like them" · "Ship apps that scale from zero to millions instantly" · "The autonomous stack for every app and agent" · "Built by you, or your agents"
- CTAs imperative, ≤3 words: "Deploy now", "Talk to sales", "Get a Demo"
- Numbers as proof, stated plainly; uppercase only in tiny mono labels, never headlines

## 9. Signature Moves
- Pure `#000` dark canvas with an equal light mode and a visible three-way theme switcher
- Continuous 1px ruled frame — full-height vertical page-edge hairlines + collapsed-border feature grids with crosshair "+" intersections
- Geist Sans display at −0.04em tracking paired with uppercase Geist Mono micro-eyebrows
- The ▲ triangle recycled as logo, terminal prompt, bullet, and ambient hero graphic
- Monochrome UI where chroma is strictly functional (blue links, red errors) plus one rainbow-gradient text moment
- Black/white inverted button pairs (filled + hairline outline), pill-shaped in marketing contexts
- Terminal/code blocks treated as hero imagery
- Production CSS exposes the design system (`--ds-*` tokens) — the site is its own documentation

## 10. Emulation Tokens
```css
:root {
  /* color — light */
  --color-bg: #FFFFFF;            --color-bg-2: #FAFAFA;
  --color-ink: #171717;           --color-text-2: #4D4D4D;
  --color-text-3: #666666;        --color-text-disabled: #8F8F8F;
  --color-border: #EBEBEB;        --color-border-hover: #8F8F8F;
  --color-accent: #0070F3;        --color-link: #0068D6;
  --color-link-visited: #7820BC;  --color-error: #EE0000;
  --color-warning: #F5A623;
  /* color — dark */
  --color-dark-bg: #000000;       --color-dark-surface: #0A0A0A;
  --color-dark-surface-2: #171717;
  --color-dark-text: #EDEDED;     --color-dark-text-2: #A3A3A3;
  --color-dark-border: rgba(255,255,255,0.08);
  --color-dark-border-strong: rgba(255,255,255,0.15);
  /* gray scale (capture) */
  --gray-100:#F7F7F7; --gray-200:#E5E5E5; --gray-300:#D4D4D4; --gray-400:#A3A3A3;
  --gray-500:#737373; --gray-600:#525252; --gray-700:#404040; --gray-800:#262626;
  --gray-900:#171717; --gray-950:#0A0A0A;
  /* gradients (inferred, signature) */
  --gradient-blue:   linear-gradient(90deg, #007CF0, #00DFD8);
  --gradient-purple: linear-gradient(90deg, #7928CA, #FF0080);
  --gradient-orange: linear-gradient(90deg, #FF4D4D, #F9CB28);
  /* type */
  --font-sans: Geist, ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  --font-mono: "Geist Mono", ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  --text-hero: 72px; --text-h1: 48px; --text-h2: 32px; --text-h3: 24px; --text-h4: 20px;
  --text-lede: 18px; --text-body: 16px; --text-sm: 14px; --text-xs: 12px;
  --tracking-display: -0.04em; --tracking-heading: -0.02em; --tracking-label: 0.06em;
  --leading-tight: 1.1; --leading-heading: 1.2; --leading-body: 1.5;
  /* space (capture) */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-6: 24px; --space-8: 32px; --space-10: 40px; --space-12: 48px;
  --space-16: 64px; --space-24: 96px; --space-32: 128px;
  /* radius (capture) */
  --radius-sm: 4px; --radius-md: 6px; --radius-lg: 8px; --radius-pill: 9999px;
  /* shadow ladder (capture) */
  --shadow-card: 0 0 0 1px #ebebeb, 0 1px 2px rgba(0,0,0,0.05);
  --shadow-hover: 0 0 0 1px rgba(0,0,0,0.1), 0 4px 12px rgba(0,0,0,0.08);
  --shadow-popover: 0 4px 4px rgba(0,0,0,0.05);
  --shadow-modal: 0 8px 16px -4px rgba(0,0,0,0.05), 0 24px 32px -8px rgba(0,0,0,0.1);
  /* z-index (capture) */
  --z-header: 75; --z-menu-toggle: 80; --z-popover: 100;
  --z-overlay: 1000; --z-critical: 100000;
  /* motion */
  --duration-fast: 150ms; --duration-base: 200ms; --duration-slow: 350ms;
  --ease-out: ease-out; --ease-in: cubic-bezier(.4, 0, 1, 1); --ease-in-out: ease-in-out;
  /* layout: breakpoints 600px / 960px (+640, 768 detected) */
  --max-width: 1200px;
}
```

```css
/* Vercel primary + secondary button with states */
.btn-primary {
  padding: 8px 14px; font: 500 14px/1 var(--font-sans);
  color: #fff; background: var(--color-ink);
  border: 1px solid var(--color-ink); border-radius: var(--radius-md);
  transition: background .2s ease-out, opacity .2s ease-out, border-color .2s ease-out;
}
.btn-primary:hover  { background: #383838; }   /* or opacity: .8 */
.btn-primary:active { opacity: .7; }
.btn-primary:focus-visible { outline: 2px solid var(--color-accent); outline-offset: 2px; }
.btn-primary:disabled { background: #FAFAFA; color: #8F8F8F; border-color: #EBEBEB; }
.btn-secondary { background: transparent; color: var(--color-ink);
  border: 1px solid var(--color-border); }
.btn-secondary:hover { border-color: var(--color-border-hover); background: var(--color-bg-2); }
```

```css
/* Vercel bordered grid card */
.card {
  padding: 24px; background: var(--color-bg);
  border: 1px solid var(--color-border); border-radius: var(--radius-lg);
  box-shadow: 0 1px 2px rgba(0,0,0,0.05);
  transition: box-shadow .2s ease-out, border-color .2s ease-out;
}
.card:hover { box-shadow: var(--shadow-hover); }
.card .eyebrow {
  font: 400 12px/1.5 var(--font-mono); letter-spacing: .06em;
  text-transform: uppercase; color: var(--color-text-3);
}
```

```css
/* Signature: gradient-clipped hero text on a dark surface */
.dark-section { background: #000; color: #EDEDED;
  border-top: 1px solid rgba(255,255,255,0.08); }
.gradient-text {
  font: 600 72px/1.1 var(--font-sans); letter-spacing: -0.04em;
  background: var(--gradient-purple);
  -webkit-background-clip: text; background-clip: text; color: transparent;
}
@media (prefers-reduced-motion: no-preference) {
  .gradient-text--shimmer { background-size: 200% 100%;
    animation: pan 7s linear infinite; }
  @keyframes pan { to { background-position: 200% 0; } }
}
```
