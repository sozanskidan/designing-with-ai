# Porsche — Web Design Language
> Source: https://www.porsche.com/international/ (scraped) · Official Porsche Design System tokens extracted from `@porsche-design-system/components-js` v4.5.0 npm package (colors, type, spacing, grid, motion, shadows — all exact) · designsystem.porsche.com/v3/styles/theme/ + /v3/styles/motion/ (fetched docs) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Porsche.com is engineered restraint: a near-monochrome canvas where the cars are the only color. The entire site runs on the public Porsche Design System (PDS), so every surface, radius, easing curve, and line-height is tokenized — even leading is a formula (`calc(6px + 2.125ex)`). Light theme is the documented default ("Always choose the Light Theme as the first choice for designing Porsche applications"), with a very dark blue-black used for immersive model reveals (scraped meta theme-color `#0E1418`). Typography is a single family — Porsche Next — on a fully fluid `clamp()` scale, and layout breathes through fluid spacing tokens and viewport-reactive grid "safe zones" rather than fixed containers. Motion doctrine is explicit: "Motion is swift, subtle, and purposeful." The result feels like a configurator even on editorial pages: precise, technical, quietly luxurious.

## 2. Color
All values below are exact, extracted from the official PDS token package.

### 2.1 Primitive palette (light theme)
| Primitive | Value | Notes |
|---|---|---|
| grey.50 | `hsl(240 10% 95%)` | surface |
| grey.950 | `hsl(225 66.7% 1.2%)` ≈ `#010205` | primary text — near-black, blue-tinted |
| grey.50a | `hsl(234 9.8% 60% / 0.06)` | frosted-soft |
| grey.100a | `hsl(240 5% 70% / 0.148)` | frosted |
| grey.200a | `hsl(236 6.5% 42% / 0.236)` | frosted-strong / hairlines |
| grey.300a | `hsl(234 6% 32.9% / 0.324)` | contrast-lower (disabled) |
| grey.500a | `hsl(240 5.3% 14.9% / 0.5)` | contrast-low, backdrop |
| grey.600a | `hsl(240 6.1% 7% / 0.6)` | contrast-medium (secondary text) |
| grey.700a | `hsl(240 7.1% 11% / 0.7)` | contrast-high |
| grey.800a | `hsl(240 8.7% 9% / 0.8)` | contrast-higher (hover text states) |
| blue.950 | `hsl(228 83.2% 51%)` = `#1A44EA` | info / focus |
| green.950 | `hsl(115 77.5% 27.8%)` | success |
| red.950 | `hsl(357 78% 41%)` | error |
| yellow.950 | `hsl(28 97.7% 34.1%)` | warning |
| *.100a / *.600a | same hue at `/ 0.18` and `/ 0.6` | soft fills / medium emphasis, per semantic hue |

### 2.2 Semantic roles — LIGHT theme (default)
| Role | Token | Value |
|---|---|---|
| Canvas / background | colorCanvasLight | `#fff` |
| Surface (cards, panels) | colorSurfaceLight | `hsl(240 10% 95%)` |
| Text primary | colorPrimaryLight | `hsl(225 66.7% 1.2%)` |
| Text secondary | colorContrastMediumLight | `hsl(240 6.1% 7% / .6)` |
| Text high emphasis | colorContrastHighLight | `hsl(240 7.1% 11% / .7)` |
| Hover/active text bump | colorContrastHigherLight | `hsl(240 8.7% 9% / .8)` |
| Hairline / border | colorContrastLowLight | `hsl(240 5.3% 14.9% / .5)` |
| Disabled / subtle border | colorContrastLowerLight | `hsl(234 6% 32.9% / .324)` |
| Backdrop (modal scrim) | colorBackdropLight | `hsl(240 5.3% 14.9% / .5)` |
| Frosted soft / base / strong | colorFrosted*Light | grey 50a / 100a / 200a + `blur(32px)` |
| Focus ring | colorFocusLight | `#1A44EA` |
| Success / soft fill | colorSuccessLight / LowLight | `hsl(115 77.5% 27.8%)` / same `/ .18` |
| Error / soft fill | colorErrorLight / LowLight | `hsl(357 78% 41%)` / same `/ .18` |
| Warning / soft fill | colorWarningLight / LowLight | `hsl(28 97.7% 34.1%)` / same `/ .18` |
| Info / soft fill | colorInfoLight / LowLight | `hsl(228 83.2% 51%)` / same `/ .18` |
| Frosted semantic fills | colorErrorFrostedLight etc. | error `hsl(0 100% 90% / .55)` · info `hsl(211 100% 90% / .55)` · success `hsl(109 100% 90% / .55)` · warning `hsl(40 100% 90% / .55)` |

### 2.3 Semantic roles — DARK theme
| Role | Token | Value |
|---|---|---|
| Canvas | colorCanvasDark | `hsl(225 66.7% 1.2%)` (light theme's text color) |
| Surface | colorSurfaceDark | `hsl(240 2% 10%)` |
| Text primary | colorPrimaryDark | `hsl(225 100% 99%)` (near-white, blue-tinted) |
| Text secondary | colorContrastMediumDark | `hsl(240 12.5% 96.9% / .56)` |
| Text high / higher | contrastHigh/HigherDark | `hsl(240 12.5% 96.9% / .67)` / `/ .78` |
| Hairline / border | colorContrastLowDark | `hsl(240 12.5% 96.9% / .45)` |
| Disabled | colorContrastLowerDark | `hsl(240 1.5% 61.8% / .302)` |
| Frosted soft/base/strong | colorFrosted*Dark | `hsl(240 3.7% 26.5% / .154)` / `hsl(240 2% 43% / .228)` / `hsl(240 1.5% 61.8% / .302)` |
| Focus ring | colorFocusDark | `#1A44EA` (identical in both themes) |
| Success | colorSuccessDark | `hsl(157 84.9% 41.6%)` (green shifts toward teal in dark) |
| Error | colorErrorDark | `hsl(0 96.9% 62%)` |
| Warning | colorWarningDark | `hsl(28 90.2% 56.1%)` |
| Info | colorInfoDark | `hsl(210 100% 54.5%)` |
| Backdrop | colorBackdropDark | `hsl(240 5.3% 14.9% / .5)` (reuses light value) |
| Error frosted | colorErrorFrostedDark | `hsl(0 79% 20% / .66)`; soft `hsl(0 59% 15% / .66)` (same pattern per hue) |

### 2.4 Gradients & shadows (exact)
- **gradientStopsFadeDark** — 16-stop eased black fade for text-over-image scrims: `hsla(0,0%,0%,.8) 0%, .8 8.1%, .8 15.5%, .8 22.5%, .78 29%, .73 35.3%, .67 41.2%, .6 47.1%, .52 52.9%, .44 58.8%, .33 64.7%, .22 71%, .12 77.5%, .05 84.5%, .011 91.9%, 0 100%` — this eased (non-linear) ramp is why Porsche hero scrims never band.
- **Shadows:** sm `0 3px 8px rgba(0,0,0,.16)` · md `0 4px 16px rgba(0,0,0,.16)` · lg `0 8px 40px rgba(0,0,0,.16)`.
- **Frosted blur:** `blur(32px)`.
- **Scraped site color:** dark hero/immersive background `#0E1418` (porsche.com meta theme-color).

## 3. Typography
- **Family (exact PDS stack):** `'Porsche Next','Arial Narrow',Arial,'Heiti SC',SimHei,sans-serif`. Locale stacks are tokenized: JA `'Porsche Next','Hiragino Sans','Yu Gothic','Noto Sans JP','Arial Narrow',Arial,sans-serif`; KO swaps in `'Apple SD Gothic Neo','Malgun Gothic','Noto Sans KR'`; zh-Hans `'PingFang SC','Microsoft YaHei','Noto Sans SC'`; zh-Hant `'PingFang TC','Microsoft JhengHei','Noto Sans TC'`.
- **Weights (exact):** 400 normal · 600 semibold · 700 bold. PDS prose styles default to **400 even for headings** — semibold is an intentional upgrade, not automatic.
- **Line-height (exact, unusual):** one universal formula — `calc(6px + 2.125ex)` — leading scales with the font's x-height, so it self-adjusts across the entire fluid scale.
- **Font loading:** Porsche Next served as woff2 subsets from the PDS CDN with preload + `font-display: swap` (documented PDS practice; exact URLs not scraped — inferred).
- **Numerals:** tabular figures for specs/prices (inferred).

### Type scale (exact tokens; px computed at 320px → 1920px viewport)
| Token | Formula / value | ≈px range | Weight | Line-height | Usage |
|---|---|---|---|---|---|
| typescale5Xl | `clamp(2.28rem, 5.2vw + 1.24rem, 7.48rem)` | 36 → 120 | 400/600 | `calc(6px+2.125ex)` | hero display |
| typescale4Xl | `clamp(2.03rem, 3.58vw + 1.31rem, 5.61rem)` | 32 → 90 | 400/600 | 〃 | campaign display |
| typescale3Xl | `clamp(1.8rem, 2.41vw + 1.32rem, 4.21rem)` | 29 → 67 | 400/600 | 〃 | H1 |
| typescale2Xl | `clamp(1.6rem, 1.56vw + 1.29rem, 3.16rem)` | 26 → 51 | 400/600 | 〃 | H2 |
| typescaleXl | `clamp(1.42rem, 0.94vw + 1.23rem, 2.37rem)` | 23 → 38 | 400/600 | 〃 | H3 |
| typescaleLg | `clamp(1.27rem, 0.51vw + 1.16rem, 1.78rem)` | 20 → 28 | 400/600 | 〃 | H4 / lead paragraph |
| typescaleMd | `clamp(1.13rem, 0.21vw + 1.08rem, 1.33rem)` | 18 → 21 | 400 | 〃 | large body |
| typescaleSm | `1rem` (static) | 16 | 400 | 〃 | body / buttons |
| typescaleXs | `.875rem` (static) | 14 | 400 | 〃 | captions, consumption data |
| typescale2Xs | `.75rem` (static) | 12 | 400 | 〃 | legal fine print |

- **Case:** sentence case everywhere including headlines ("Your Porsche journey starts now" — scraped). Model names keep official form ("911 GT3 S/C"). Default letter-spacing at all sizes — no tracking tricks.

## 4. Layout & Grid
### Breakpoints (exact)
`xs 480 · sm 760 · md 1000 · lg 1300 · xl 1760 · 2xl 1920` (px, min-width).

### PDS Canvas Grid (exact internals from package)
- Grid operates from **320px min to 2560px max** (`_gridWidthMin` / `_gridWidthMax`); beyond 2560px content stops growing and centers.
- **Safe zones (outer margins), fluid formulas:**
  - base (320–760px): `max(22px, 10.625vw - 12px)` → 22–68.75px
  - s (760–1920px): `calc(5vw - 16px)` → ~22 → 80px
  - xxl (1920–2560px): `min(50vw - 880px, 400px)` → 80 → 400px
- **Grid gap:** = `spacingFluidMd` = `clamp(16px, 1.25vw + 12px, 36px)`.
- **Named column areas:** `full` (edge-to-edge media) ⊃ `wide` ⊃ `extended` ⊃ `basic` (standard content) ⊃ `narrow` (prose); spans exposed as CSS vars `--pds-grid-basic-span-one-half / -one-third / -two-thirds`, `--pds-grid-extended-span-one-half`, `--pds-grid-narrow-span-one-half`.

### Spacing (exact)
- **Static scale:** 2xs 1px · xs 4px · sm 8px · md 16px · lg 32px · xl 48px · 2xl 80px.
- **Fluid scale:** xs `clamp(4px,.25vw+3px,8px)` · sm `clamp(8px,.5vw+6px,16px)` · md `clamp(16px,1.25vw+12px,36px)` · lg `clamp(32px,2.75vw+23px,76px)` · xl `clamp(48px,3vw+38px,96px)` · 2xl `clamp(80px,7.5vw+56px,200px)`.
- **Section rhythm:** homepage bands separated by fluid-xl/2xl (48–200px); intra-section stacks fluid-md/lg (application inferred, tokens exact).

### Header / footer / z-index
- **Header:** slim sticky bar, crest + wordmark, minimal items; frosted background (`grey.100a` + `blur(32px)`) when overlaying imagery (inferred from PDS frosted tokens + site behavior).
- **Homepage structure (scraped order):** full-bleed hero (new model) → featured model carousel → model grid (911, 718, Taycan, Panamera, Macan, Cayenne) → 3-up discovery tiles (Experience / E-Performance / Finder) → footer. Consumption/emission legal data in xs/2xs under every hero.
- **Footer:** dark multi-column, legal consumption block, country selector (inferred pattern).
- **z-index layers (inferred convention from PDS component set):** content 0 · sticky header ~100 · dropdown/popover ~600 · backdrop ~900 · modal/flyout ~1000 · toast ~1100.

## 5. Components
### Buttons (PDS spec; states from tokens + docs)
| State | Primary | Secondary / ghost |
|---|---|---|
| Default | fill `#010205`, text `#fff`, radius 4px (`radiusSm`), padding ~13px 26px, font 400 `1rem` / `calc(6px+2.125ex)` | transparent fill, 2px border in primary color, text primary |
| Hover | background lightens toward `grey.800a` layer; transition `.25s` `--ease-base` | background `colorFrosted` (grey.100a) |
| Active | frosted-strong state layer (`grey.200a`) | same pattern |
| Focus-visible | **exact:** `outline: 2px solid #1A44EA; outline-offset: 2px` | same |
| Disabled | text/border `hsl(234 6% 32.9% / .324)`, cursor not-allowed | same |
- Labels sentence case, verb-first: "Explore", "Discover now" (scraped). Icon+label arrangements supported; min touch target 48px (inferred).

### Model / product cards
White or surface background, car render, model name (semibold), one-line spec teaser ("Iconic sports car with rear engine: 2 doors, 2+2 seats" — scraped), "Explore" link; whole card clickable; radius `radiusLg 8px`; media zoom ~1.05 on hover over `.4s` (inferred); shadow-md on elevation.

### Carousel (PDS)
Edge-peeking slides, gap = grid gap, arrow steppers bottom-right; slide transition `.4s` (documented: "Slide transitions in Carousels, Modals, and Link-Tiles").

### Inputs (PDS forms)
Floating label; 2px border `colorContrastMedium`; radius 4px; background canvas. Focus = border→primary + focus outline; error = border + message in `colorError` with soft fill; disabled = contrast-lower everything.

### Overlays
Modal/flyout over backdrop `grey.500a`; sheet in canvas color, radius 12px+; enter `.4s` easing-in, exit `.6s` easing-out for flyouts (documented durations); frosted-glass variants for on-image UI.

### Badges / tags
Pill radius (`calc(infinity * 1px)`); soft semantic fills (hue `/ .18`) with 950-hue text — exact token pattern.

### Footer
Dark canvas (`#0E1418`-family), columns of xs-size links, mandatory consumption legal block, social row (inferred composition).

## 6. Imagery & Iconography
- Cinematic car photography and CGI renders; dark moody environments for sports models, bright natural light for lifestyle. WebP q85, responsive named crops (`m/1299x730`) — scraped.
- Studio renders on white/surface for model grids; the eased `gradientStopsFadeDark` scrim guarantees legible white type over any hero frame.
- Iconography: PDS icon set — geometric monochrome line icons on 24px grid, ~1.5–2px stroke (inferred from PDS assets).
- No illustration. Specs as clean numeric tables; consumption data always in caption sizes.

## 7. Motion & Interaction
### Exact motion tokens with documented usage
| Token | Value | Documented usage (PDS motion docs) |
|---|---|---|
| duration short | `.25s` | hover effects — buttons, checkboxes, switches, popover display |
| duration moderate | `.4s` | slide transitions in carousels, modals, link-tiles |
| duration long | `.6s` | notifications and flyouts |
| duration very-long | `1.2s` | spinners, skeleton loaders |
| easing base | `cubic-bezier(.25,.1,.25,1)` | button hover/active, tab switching, basic fade in/out |
| easing in | `cubic-bezier(0,0,.2,1)` | banners/toasts/modals that appear quickly then ease into view |
| easing out | `cubic-bezier(.4,0,.5,1)` | closing modals/flyouts; elements sliding out of view fast |

### Animation inventory
- **Documented PDS patterns:** Moving (horizontal translate) · Enter/Exit (vertical translate + opacity) · Show/Hide (opacity fade) · Expand (height change).
- **Site behaviors:** hero autoplay video with scrim fade-in; lazy imagery fades in on scroll; carousel slides ease `.4s`; model-card media zoom on hover; nav frosts/condenses on scroll (inferred).
- **Doctrine (documented):** "Motion is swift, subtle, and purposeful" — no scroll-jacking, no parallax excess.
- **Stagger:** sequential tile reveals ~60–100ms apart (inferred from PDS enter examples).
- **Skeletons/spinners:** `1.2s` loop, very-long token (documented).
- **Reduced motion:** collapse translates to opacity-only fades under `prefers-reduced-motion: reduce` (PDS a11y guidance; implementation inferred).

## 8. Voice & Copy
- Sentence case headlines, short and confident; the car name often *is* the headline.
- Scraped examples: **"The new 911 GT3 S/C"**, **"Your Porsche journey starts now"**, **"Iconic sports car with rear engine: 2 doors, 2+2 seats"**.
- CTAs are verbs: "Explore", "Discover now" (scraped).
- Tone: engineering-first; no exclamation marks; specs stated as facts; EU consumption/emissions footnotes mandatory under heroes.
- Numbers precise (0–100 km/h, kW/PS pairs), tabular alignment (inferred).

## 9. Signature Moves
- Near-black `#010205` (never `#000`) on white; **zero decorative color** — the car supplies the color.
- One typeface at a huge fluid clamp() scale with ex-based leading `calc(6px + 2.125ex)`.
- Alpha-grey system: borders, secondary text, and state layers are all translucent greys that composite over any background or theme.
- Frosted glass (`grey alpha + blur(32px)`) for nav and on-image UI.
- 16-stop eased black gradient scrim under hero type — never a linear fade.
- Dark `#0E1418` immersive sections for reveals; light theme everywhere else; both themes fully tokenized.
- Fluid *everything*: type, spacing, and grid margins all `clamp()`ed from 320→2560px.
- Focus ring is the only saturated UI color: `2px solid #1A44EA`, offset 2px.
- Tiny legal consumption footnotes under every hero — instantly "EU car brand".

## 10. Emulation Tokens
```css
:root {
  /* ---- color: light theme (exact PDS values) ---- */
  --color-bg: #ffffff;
  --color-surface: hsl(240 10% 95%);
  --color-text: hsl(225 66.7% 1.2%);            /* ~#010205 */
  --color-text-secondary: hsl(240 6.1% 7% / .6);
  --color-text-high: hsl(240 7.1% 11% / .7);
  --color-text-hover: hsl(240 8.7% 9% / .8);
  --color-border: hsl(240 5.3% 14.9% / .5);
  --color-border-subtle: hsl(234 6% 32.9% / .324);
  --color-backdrop: hsl(240 5.3% 14.9% / .5);
  --color-frosted-soft: hsl(234 9.8% 60% / .06);
  --color-frosted: hsl(240 5% 70% / .148);
  --color-frosted-strong: hsl(236 6.5% 42% / .236);
  --color-focus: #1a44ea;
  --color-success: hsl(115 77.5% 27.8%);
  --color-success-soft: hsl(115 77.5% 27.8% / .18);
  --color-error: hsl(357 78% 41%);
  --color-error-soft: hsl(357 78% 41% / .18);
  --color-warning: hsl(28 97.7% 34.1%);
  --color-warning-soft: hsl(28 97.7% 34.1% / .18);
  --color-info: hsl(228 83.2% 51%);
  --color-hero-dark: #0e1418;                    /* scraped porsche.com theme-color */
  --gradient-scrim: linear-gradient(to top,
    hsla(0,0%,0%,.8) 0%, hsla(0,0%,0%,.8) 15.5%, hsla(0,0%,0%,.78) 29%,
    hsla(0,0%,0%,.67) 41.2%, hsla(0,0%,0%,.52) 52.9%, hsla(0,0%,0%,.33) 64.7%,
    hsla(0,0%,0%,.12) 77.5%, hsla(0,0%,0%,.011) 91.9%, hsla(0,0%,0%,0) 100%);
  --shadow-sm: 0 3px 8px rgba(0,0,0,.16);
  --shadow-md: 0 4px 16px rgba(0,0,0,.16);
  --shadow-lg: 0 8px 40px rgba(0,0,0,.16);
  --blur-frosted: blur(32px);
  /* ---- typography ---- */
  --font-sans: 'Porsche Next','Arial Narrow',Arial,'Heiti SC',SimHei,sans-serif;
  --font-weight-regular: 400; --font-weight-semibold: 600; --font-weight-bold: 700;
  --leading: calc(6px + 2.125ex);                /* universal PDS line-height */
  --text-5xl: clamp(2.28rem, 5.2vw + 1.24rem, 7.48rem);
  --text-4xl: clamp(2.03rem, 3.58vw + 1.31rem, 5.61rem);
  --text-3xl: clamp(1.8rem, 2.41vw + 1.32rem, 4.21rem);
  --text-2xl: clamp(1.6rem, 1.56vw + 1.29rem, 3.16rem);
  --text-xl: clamp(1.42rem, 0.94vw + 1.23rem, 2.37rem);
  --text-lg: clamp(1.27rem, 0.51vw + 1.16rem, 1.78rem);
  --text-md: clamp(1.13rem, 0.21vw + 1.08rem, 1.33rem);
  --text-sm: 1rem; --text-xs: .875rem; --text-2xs: .75rem;
  /* ---- spacing ---- */
  --space-static-xs: 4px; --space-static-sm: 8px; --space-static-md: 16px;
  --space-static-lg: 32px; --space-static-xl: 48px; --space-static-2xl: 80px;
  --space-fluid-xs: clamp(4px, .25vw + 3px, 8px);
  --space-fluid-sm: clamp(8px, .5vw + 6px, 16px);
  --space-fluid-md: clamp(16px, 1.25vw + 12px, 36px);
  --space-fluid-lg: clamp(32px, 2.75vw + 23px, 76px);
  --space-fluid-xl: clamp(48px, 3vw + 38px, 96px);
  --space-fluid-2xl: clamp(80px, 7.5vw + 56px, 200px);
  /* ---- radius / grid / z ---- */
  --radius-xs: 2px; --radius-sm: 4px; --radius-md: 6px; --radius-lg: 8px;
  --radius-xl: 12px; --radius-2xl: 16px; --radius-3xl: 24px; --radius-4xl: 32px;
  --radius-full: calc(infinity * 1px);
  --grid-margin: max(22px, 10.625vw - 12px);     /* base safe zone (320–760px) */
  --grid-margin-s: calc(5vw - 16px);             /* 760–1920px */
  --grid-margin-xxl: min(50vw - 880px, 400px);   /* 1920–2560px */
  --grid-gap: clamp(16px, 1.25vw + 12px, 36px);
  --max-width: 2560px;                            /* PDS grid width max */
  --z-header: 100; --z-popover: 600; --z-backdrop: 900; --z-modal: 1000; --z-toast: 1100; /* (inferred) */
  /* breakpoints: 480 / 760 / 1000 / 1300 / 1760 / 1920 (exact) */
  /* ---- motion (exact) ---- */
  --ease-base: cubic-bezier(.25,.1,.25,1);
  --ease-in: cubic-bezier(0,0,.2,1);
  --ease-out: cubic-bezier(.4,0,.5,1);
  --duration-short: .25s; --duration-moderate: .4s;
  --duration-long: .6s; --duration-very-long: 1.2s;
}
/* dark theme (exact PDS values) */
[data-theme="dark"] {
  --color-bg: hsl(225 66.7% 1.2%);
  --color-surface: hsl(240 2% 10%);
  --color-text: hsl(225 100% 99%);
  --color-text-secondary: hsl(240 12.5% 96.9% / .56);
  --color-text-high: hsl(240 12.5% 96.9% / .67);
  --color-text-hover: hsl(240 12.5% 96.9% / .78);
  --color-border: hsl(240 12.5% 96.9% / .45);
  --color-border-subtle: hsl(240 1.5% 61.8% / .302);
  --color-frosted: hsl(240 2% 43% / .228);
  --color-frosted-strong: hsl(240 1.5% 61.8% / .302);
  --color-success: hsl(157 84.9% 41.6%);
  --color-error: hsl(0 96.9% 62%);
  --color-warning: hsl(28 90.2% 56.1%);
  --color-info: hsl(210 100% 54.5%);
}
```

```css
/* Porsche primary + ghost button, all states (PDS spec) */
.btn-primary {
  font: var(--font-weight-regular) var(--text-sm) / var(--leading) var(--font-sans);
  color: #fff; background: var(--color-text);
  border: 2px solid transparent; border-radius: var(--radius-sm);
  padding: 13px 26px; cursor: pointer;
  transition: background var(--duration-short) var(--ease-base),
              color var(--duration-short) var(--ease-base);
}
.btn-primary:hover  { background: var(--color-text-hover); }
.btn-primary:active { background: var(--color-text-high); }
.btn-primary:focus-visible { outline: 2px solid var(--color-focus); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-border-subtle); cursor: not-allowed; }
.btn-ghost {
  background: transparent; color: var(--color-text);
  border: 2px solid var(--color-text); border-radius: var(--radius-sm);
  padding: 13px 26px;
  transition: background var(--duration-short) var(--ease-base);
}
.btn-ghost:hover { background: var(--color-frosted); }
```

```css
/* Model card with hover zoom */
.model-card {
  background: var(--color-bg); border-radius: var(--radius-lg);
  overflow: hidden; display: grid; gap: var(--space-static-sm);
  padding-block-end: var(--space-static-md);
}
.model-card img { aspect-ratio: 16/9; object-fit: cover; width: 100%;
  transition: transform var(--duration-moderate) var(--ease-base); }
.model-card:hover img { transform: scale(1.05); }
.model-card h3 { font: var(--font-weight-semibold) var(--text-lg) / var(--leading) var(--font-sans);
  margin: 0 var(--space-static-md); }
.model-card p  { font-size: var(--text-xs); color: var(--color-text-secondary);
  margin: 0 var(--space-static-md); }
```

```css
/* Signature effect: dark cinematic hero — fluid display type over eased scrim */
.hero {
  position: relative; min-height: 100svh; display: grid; align-content: end;
  background: var(--color-hero-dark); color: hsl(225 100% 99%);
  padding: var(--space-fluid-xl) var(--grid-margin);
}
.hero::after { content: ""; position: absolute; inset: 0; pointer-events: none;
  background: var(--gradient-scrim); }
.hero > * { position: relative; z-index: 1; }
.hero h1 { font: var(--font-weight-semibold) var(--text-5xl) / var(--leading) var(--font-sans);
  margin: 0 0 var(--space-fluid-sm); }
.hero .legal { font-size: var(--text-2xs); color: hsl(240 12.5% 96.9% / .56); }
@media (prefers-reduced-motion: reduce) {
  * { transition-duration: .01ms !important; animation-duration: .01ms !important; }
}
```
