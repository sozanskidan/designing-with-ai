# Polestar — Web Design Language
> Source: https://www.polestar.com (us) · https://www.polestar.com/us/polestar-4/ · identity documented via stockholmdesignlab.se/work/polestar and fontsinuse.com/uses/50386 · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Polestar's site is Scandinavian automotive minimalism executed with Swiss-typography rigor: white space, one typeface, square edges, and vehicles photographed like industrial-design objects. The identity (by Stockholm Design Lab, documented) is built on a "typographic marking system" as its backbone — specs and numbers are designed content, not table filler ("0-60 mph: 3.7 sec"). The single brand font, **Unica77 Polestar Var**, is a custom variable cut with one weight and size-responsive letter-spacing (documented), which is why every level of the hierarchy feels like the same calm voice at different volumes. Layouts are modular full-width bands with strict left-aligned text columns; the palette is monochrome so the car — and nothing else — is the color. Motion is crisp and editorial: fades, scrubbed image sequences, no bounce.

## 2. Color
### Core roles
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | Scraped observation: white/light neutral ground |
| Surface / alt band | `#F5F5F5` (inferred) | Cool light-gray bands |
| Surface hover | `#EDEDED` (inferred) | Cards/rows one step darker |
| Background dark | `#101010` (inferred) | Dark hero/video sections, footer |
| Surface on dark | `#1B1B1B` (inferred) | Panels over dark |
| Text primary | `#101010` (inferred) | Scraped: "high contrast black text on white" |
| Text secondary | `#6B6B6B` (inferred) | Spec labels, legal, captions |
| Text on dark | `#FFFFFF` / `#A8A8A8` (inferred) | |
| Accent — Swedish gold | `#D5A47B` (inferred) | Rare highlights; heritage of performance brand |
| Accent — performance orange | `#FF7500` (inferred) | Engineered/BST references only; never UI chrome |
| Link/CTA note | monochrome | Scraped noted occasional "brand blue tones" on CTA elements; treat as exception |
| Borders | `#D9D9D9` light / `rgba(255,255,255,0.2)` dark (inferred) | 1px hairlines |
| Error | `#D32F2F` (inferred) | Forms only |

### States, overlays, gradients
- Primary button: `#101010` → hover `#2B2B2B` → active `#000000`; outline button fills to solid black with white text on hover (invert) (inferred)
- Links: arrow-suffixed; hover slides a 1px underline in from left 250ms and nudges arrow 4px (inferred)
- Hero scrim over video: `linear-gradient(180deg, rgba(0,0,0,0.2) 0%, rgba(0,0,0,0) 40%, rgba(0,0,0,0.35) 100%)` for header + caption legibility (inferred)
- Disabled: bg `#E8E8E8`, text `#9E9E9E` (inferred)
- Flat design: no drop shadows on cards; overlays only `0 12px 32px rgba(0,0,0,0.12)` (inferred)
- No user dark mode; dark sections are editorial; light/dark image variants supplied per section (scraped)

## 3. Typography
- Single family: **Polestar Unica77** — custom-licensed Lineto Unica77; web font files literally named "Polestar Unica77 TT" (documented). Stockholm Design Lab (documented): "Unica77 Polestar Var — custom font with single weight and variable letter spacing, optimized for different sizes"
- Stack: `"Polestar Unica77", Unica77, "Helvetica Neue", Helvetica, Arial, sans-serif` (inferred fallbacks)
- Weights: nominally one weight (~400) with optical/variable adjustments; Light 300 appears for oversized display, Medium 500 for CTAs (TT files include Light — documented file name)
- Loading: self-hosted WOFF2/TT, `font-display: swap` (inferred); lining figures, numerals treated as display content ("$56,400", "3.7 sec", "310 miles" — scraped)

### Type scale (approx, inferred; tracking tightens as size grows — documented behavior of the Var font)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Hero display | 56–64px / 3.5–4rem | 300–400 | 1.05 | −0.02em | "Polestar 4 coupe" |
| H2 section | 36–40px | 400 | 1.15 | −0.01em | Three-beat statements |
| H3 feature | 24px | 400 | 1.3 | −0.005em | Feature blocks |
| Spec value | 24–28px | 400 | 1.2 | 0 | "310 miles", "3.7 sec" |
| Body | 16px / 1rem | 400 | 1.5 | 0 | Paragraphs |
| Spec label / UI | 13–14px | 400–500 | 1.4 | +0.01em | "Range up to (EPA):" |
| Legal | 11–12px | 400 | 1.5 | +0.01em | Lease disclaimers |
- Case: sentence case everywhere including model names ("Polestar 4 coupe" — scraped); no all-caps headlines; abbreviations kept technical (EPA, kW, MSRP)
- Responsive: hero 64→40→32px, H2 40→28px; spec values hold 20–24px on mobile (inferred)

## 4. Layout & Grid
- Breakpoints ≈ 480 / 768 / 1024 / 1280 (inferred)
- Containers: full-width media bands (100vw); contained content max ~1280–1400px, gutters 16/24/48px per breakpoint; text blocks left-aligned, measure ~600px (inferred)
- Grid: 12-col desktop, 4-col mobile; 2-col comparison layouts (scraped); gallery carousels edge-to-edge (7 exterior angles — scraped)
- Spacing scale (inferred): `8, 16, 24, 40, 64, 100` px; sections separated by 60–100px+ (scraped estimate); label/value spec rows 12–16px apart with hairlines
- Model-page rhythm (scraped): full-width video hero (MP4 + fallback image) → pricing/spec block → alternating image galleries → feature highlights (interior "solar system" light line) → color/wheel configurator strip → 2-col comparisons → CTA band
- Pricing block pattern (scraped, verbatim structure): "Starting at $56,400 MSRP" / "Lease from $499/mo. for 39 months" / "Range up to (EPA): 310 miles" / "0-60 mph: 3.7 sec" / "Power up to: 400 kW/544 hp" — stacked label/value rows
- Header: slim ~64px; star emblem + wordmark; nav Polestar 2, Polestar 3, Polestar 4, Pre-owned, Shopping tools, Ownership, More; right: Locations, Account login (scraped); transparent over hero → solid white with hairline on scroll (inferred); sticky model sub-nav with anchored CTAs on model pages (inferred)
- Footer: columns Explore & buy / Shop (Extras, Experiences) / Support / About + social (Instagram, Facebook, YouTube, LinkedIn, TikTok) + legal (Privacy, Cookies, Accessibility, CCPA) (scraped); set on dark `#101010` (inferred)
- Z-index (inferred): 10 header · 15 model sub-nav · 20 menus · 30 configurator overlays · 40 modal

## 5. Components
### Buttons
| Property | Primary | Secondary (outline) | Text+arrow link |
|---|---|---|---|
| Fill | `#101010` | transparent | none |
| Text | `#FFFFFF`, 14px/500 | `#101010` | `#101010` + → glyph |
| Border | none | 1px `#101010` | none |
| Padding | `12px 24px` | same | — |
| Radius | 0 | 0 | — |
| Hover | `#2B2B2B` | inverts: bg `#101010`, text `#FFF` | underline slide-in, arrow +4px |
| Active | `#000000` | pressed invert | — |
| Focus | 2px `#101010` outline, 2px offset | same | underline + outline |
| Disabled | bg `#E8E8E8`, text `#9E9E9E` | border/text `#9E9E9E` | — |
| Transition | 250ms `cubic-bezier(0.4,0,0.2,1)` | same | 250ms |
(labels scraped: "Configure", "Test drive", "View offers"; state values inferred)

### Spec block (signature)
- Stacked rows: 13px label `#6B6B6B` above 24–28px value `#101010`, 1px `#D9D9D9` separators, 12–16px row padding; no table chrome; legal footnote 11px beneath (structure scraped, values inferred)

### Cards
- Square-cornered image + H3 + one-liner + arrow link; flat (no shadow), optional 1px hairline; hover: image scale(1.02) 400ms + arrow nudge (inferred)

### Configurator strip
- Circular color/wheel swatches 28px with names; selected = 1px `#101010` ring offset 3px; gallery updates via crossfade 400ms (structure scraped, values inferred)

### Forms / inputs
- Rectangular, radius 0, 1px `#D9D9D9` border, padding `12px 16px`, 16px text; label above 13px; focus border `#101010`; error `#D32F2F` + 12px message (inferred)

### Sticky model bar
- Appears after hero: model name left, "Test drive / Configure" CTAs right, white bg + bottom hairline, slides down 300ms (inferred)

### Header / nav spec
- ~64px; wordmark left (star emblem + "Polestar"); model links 14px/400, 28px apart; "More" opens simple dropdown panel (not imagery-heavy mega-menu) (structure scraped, values inferred)
- Transparent over hero with white text/logo → solid white + hairline after ~60px scroll, 250ms (inferred)
- Mobile: hamburger → full-screen white panel, models as 24px rows with chevron arrows (inferred)

### Footer spec
- Dark `#101010` (inferred), 4 link columns (Explore & buy / Shop / Support / About — scraped) at 14px/1.9 in `#A8A8A8` with white headings; social row; legal row (Privacy, Cookies, Accessibility, CCPA — scraped) + region selector (inferred)

## 6. Imagery & Iconography
- Vehicles shot as products: studio neutrality or stark Scandinavian landscapes — fog, concrete, snow, dusk; wide negative space around the car; cool muted grading matched to the gray UI
- Light/dark image variants supplied per section (scraped); CGI renders and photography intercut seamlessly; interior macros (textiles, ambient "solar system" light line — scraped copy)
- Video: autoplay muted hero MP4 with image fallback (scraped)
- Aspect ratios: 21:9/16:9 heroes, 4:3 and 1:1 feature crops (inferred)
- Icons: thin 1–1.5px stroke, geometric, monochrome; arrows (→ ›) are the dominant glyph (scraped: "text links with arrow indicators"); star emblem used as watermark/loader (inferred)

## 7. Motion & Interaction
### Timing & curves (all inferred; brand motion design is by SDL — "crisp, editorial")
| Token | Value | Use |
|---|---|---|
| duration-micro | 200ms | links, arrows, swatch rings |
| duration-ui | 250–300ms | buttons, sticky bar, menus |
| duration-media | 400–600ms | gallery crossfades, card zooms |
| duration-hero | 800ms | hero fade-in |
| ease-crisp | `cubic-bezier(0.4, 0, 0.2, 1)` | default UI |
| ease-out-long | `cubic-bezier(0.16, 1, 0.3, 1)` | media reveals |

### Animation inventory
- **Hero**: video fades from black 800ms; headline + price subline fade-up ~16px staggered 100ms (inferred)
- **Scroll reveals**: content blocks fade-up once at ~25% viewport; images unmask with slight 1.04→1.0 scale settle (inferred)
- **Scrubbed sequences**: some model-page sections pin and scrub through exterior-angle frames (the 7-angle gallery) tied to scroll progress — restrained, short pin distances (inferred from scraped 7-frame gallery structure)
- **Configurator**: color swap = 400ms crossfade of car imagery, swatch ring scales in 200ms (inferred)
- **Hover micro**: card image scale(1.02); arrow translate 4px; underline slide-in from left; button color step (inferred)
- **Sticky elements**: header solidifies with 250ms bg/border fade; model bar slides in 300ms (inferred)
- **Counters**: spec numbers occasionally count up on first reveal (inferred)
- **Stagger**: 80–120ms, max 3–4 siblings (inferred)
- **Page transitions**: none/quick fade (inferred)
- **Reduced motion**: video paused to poster, pins/scrubs disabled, opacity-only reveals (inferred best practice)

## 8. Voice & Copy
- Precise, engineered, quietly confident; design-studio tone, not dealership tone; SDL positioning: "Pure progressive performance" and "more science than fiction" (documented)
- Three-beat fragment headline cadence — real example (scraped): "Coupe aerodynamics. SUV spaciousness. Electric age innovation."
- Real examples (scraped): "Polestar 4 coupe" · "Polestar 4. Summer of Clarity Event" · "Inspired by the solar system, the interior illumination forms a light line…"
- Numbers do the persuading: "$499/mo", "310 miles", "3.7 sec", "400 kW/544 hp" (scraped); sentence case; no superlatives without data; CTAs compact: "Configure", "Test drive", "View offers" (scraped)
- Legal/lease copy present but typographically demoted (11–12px, gray)
- Ownership content framed as a promise, not perks: "The Polestar Promise" (scraped); charging explained factually (NACS compatibility — scraped)
- Never used: exclamation marks, dealership urgency ("Limited time only!"), decorative superlatives, ALL-CAPS headlines

## 9. Signature Moves
- One typeface at every level — Unica77 Polestar Var, single weight, size-responsive tracking (documented)
- Zero border-radius and zero card shadows across the entire UI; hairlines only
- Three-fragment headline cadence ("X. Y. Z.")
- Spec sheets as designed typographic blocks — label-over-value stacks with hairlines, numerals as display art
- Monochrome interface; the car (and rare gold/orange performance accent) is the only color
- Full-width muted video heroes with price-led sublines
- Arrow-suffixed text links (→) instead of button clutter; outline buttons that invert to solid on hover
- Cool Scandinavian grading — fog, concrete, dusk — and light/dark image variants per section

## 10. Emulation Tokens
```css
:root {
  /* color (inferred unless noted) */
  --color-bg: #FFFFFF;               /* scraped: white ground */
  --color-surface: #F5F5F5;
  --color-surface-hover: #EDEDED;
  --color-bg-dark: #101010;
  --color-surface-dark: #1B1B1B;
  --color-text: #101010;
  --color-text-2: #6B6B6B;
  --color-text-inverse: #FFFFFF;
  --color-text-inverse-2: #A8A8A8;
  --color-border: #D9D9D9;
  --color-border-dark: rgba(255,255,255,0.2);
  --color-accent-gold: #D5A47B;        /* rare */
  --color-accent-performance: #FF7500; /* engineered refs only */
  --color-btn-hover: #2B2B2B; --color-btn-active: #000000;
  --color-disabled-bg: #E8E8E8; --color-disabled-text: #9E9E9E;
  --color-error: #D32F2F;
  --overlay-hero: linear-gradient(180deg, rgba(0,0,0,0.2) 0%, rgba(0,0,0,0) 40%, rgba(0,0,0,0.35) 100%);
  --shadow-overlay: 0 12px 32px rgba(0,0,0,0.12);
  /* type */
  --font-sans: "Polestar Unica77", Unica77, "Helvetica Neue", Helvetica, Arial, sans-serif;
  --text-hero: 60px; --text-h2: 38px; --text-h3: 24px;
  --text-spec: 26px; --text-body: 16px; --text-label: 13px; --text-legal: 11px;
  --weight-display: 300; --weight-body: 400; --weight-ui: 500;
  --leading-hero: 1.05; --leading-heading: 1.2; --leading-body: 1.5;
  --tracking-hero: -0.02em; --tracking-h2: -0.01em; --tracking-label: 0.01em;
  /* space */
  --space-1: 8px;  --space-2: 16px; --space-3: 24px;
  --space-4: 40px; --space-5: 64px; --space-6: 100px;
  /* shape */
  --radius-none: 0;  /* radius is 0 everywhere */
  /* z-index (inferred) */
  --z-header: 10; --z-subnav: 15; --z-menu: 20; --z-configurator: 30; --z-modal: 40;
  /* motion */
  --duration-micro: 200ms; --duration-ui: 275ms;
  --duration-media: 500ms; --duration-hero: 800ms;
  --ease-crisp: cubic-bezier(0.4, 0, 0.2, 1);
  --ease-out-long: cubic-bezier(0.16, 1, 0.3, 1);
  /* layout: breakpoints ~480 / 768 / 1024 / 1280 */
  --max-width: 1280px; --max-width-text: 600px;
}
```

```css
/* Polestar understated CTA pair with states */
.btn { padding: 12px 24px; border-radius: 0;
  font: 500 14px/1 var(--font-sans);
  transition: background var(--duration-ui) var(--ease-crisp),
              color var(--duration-ui) var(--ease-crisp); }
.btn-primary { background: var(--color-text); color: var(--color-text-inverse); border: none; }
.btn-primary:hover  { background: var(--color-btn-hover); }
.btn-primary:active { background: var(--color-btn-active); }
.btn-primary:focus-visible { outline: 2px solid var(--color-text); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-disabled-bg); color: var(--color-disabled-text); }
.btn-outline { background: transparent; color: var(--color-text);
  border: 1px solid var(--color-text); }
.btn-outline:hover { background: var(--color-text); color: var(--color-text-inverse); } /* invert */
.link-arrow::after { content: " →"; display: inline-block;
  transition: transform var(--duration-micro) var(--ease-crisp); }
.link-arrow:hover::after { transform: translateX(4px); }
```

```css
/* Polestar spec block (label-over-value stack) */
.spec-list { border-top: 1px solid var(--color-border); max-width: 600px; }
.spec-row { padding: 14px 0; border-bottom: 1px solid var(--color-border); }
.spec-row dt { font: 400 13px/1.4 var(--font-sans); color: var(--color-text-2);
  letter-spacing: 0.01em; margin-bottom: 2px; }
.spec-row dd { font: 400 26px/1.2 var(--font-sans); color: var(--color-text); margin: 0; }
.spec-legal { font: 400 11px/1.5 var(--font-sans); color: var(--color-text-2); margin-top: 12px; }
```

```css
/* Signature: full-width video hero with price-led subline */
.hero { position: relative; height: 90vh; background: var(--color-bg-dark); }
.hero video { position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; }
.hero::after { content: ""; position: absolute; inset: 0; background: var(--overlay-hero); }
.hero .caption { position: absolute; left: clamp(16px, 5vw, 64px); bottom: 8vh; z-index: 1;
  color: var(--color-text-inverse); }
.hero h1 { font: 300 clamp(32px, 5vw, 60px)/1.05 var(--font-sans); letter-spacing: -0.02em; }
.hero .price { font: 400 16px/1.5 var(--font-sans); margin-top: 8px; }
@media (prefers-reduced-motion: no-preference) {
  .hero .caption > * { animation: up 600ms var(--ease-out-long) both; }
  .hero .caption > *:nth-child(2) { animation-delay: 100ms; }
  @keyframes up { from { opacity: 0; transform: translateY(16px); } }
}
```

```css
/* Polestar sticky model bar */
.model-bar { position: fixed; top: 0; inset-inline: 0; z-index: var(--z-subnav);
  display: flex; justify-content: space-between; align-items: center;
  height: 56px; padding-inline: clamp(16px, 5vw, 64px);
  background: var(--color-bg); border-bottom: 1px solid var(--color-border);
  transform: translateY(-100%);
  transition: transform 300ms var(--ease-crisp); }
.model-bar.is-visible { transform: translateY(0); }
.model-bar .name { font: 400 16px/1 var(--font-sans); }
.model-bar .actions { display: flex; gap: 12px; }  /* .btn-outline + .btn-primary */
```
