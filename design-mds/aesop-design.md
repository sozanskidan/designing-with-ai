# Aesop — Web Design Language
> Source: https://www.aesop.com · https://www.aesop.com/us/c/skin/ · typefaces documented via fontsinuse.com/uses/20234 (Work & Co redesign) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Aesop's site reads like a quietly luxurious print catalogue: an apothecary aesthetic built on warm paper-toned neutrals, restrained typography, and editorial copy that never hard-sells. Products are photographed as still-life objects on textural, art-directed sets (brushed metal, a yellow curtain, stone) rather than as cutouts on white. The interface disappears — hairline rules, chevron list rows, underline links and square-cornered type do the work of buttons, and there is deliberately no brand accent color. Density is low and rhythm is slow; whitespace, long-form "Library" editorial and the two-voice type system (Suisse Int'l + a Zapf/Optima humanist) signal considered intelligence over urgency. The original digital design system was built with Work & Co (documented).

## 2. Color
### Core roles
| Role | Value | Notes |
|---|---|---|
| Background (page) | `#FFFEF2` (inferred) | Warm cream "paper"; scraped meta theme-color is `#E9E9E9` |
| Surface / alt band | `#F6F5E8` (inferred) | Deeper parchment for banded sections and cards |
| Surface hover | `#EFEEE0` (inferred) | List rows and tiles darken one step on hover |
| Text primary | `#252525` (inferred) | Near-black charcoal; never pure `#000` |
| Text secondary | `#666660` (inferred) | Captions, prices, meta ("2 Sizes / From $35.00") |
| Text disabled | `#9B9A90` (inferred) | Disabled labels, sold-out |
| Accent | none | Deliberate absence; amber bottles and photography carry warmth |
| Borders / rules | `#D5D4C8` (inferred) | 1px hairlines between list rows and sections |
| Border strong / focus | `#252525` (inferred) | Active input underline, focused controls |
| Inverse band bg / text | `#252525` / `#FFFEF2` (inferred) | Occasional dark editorial blocks |
| Error | `#B3261E` (inferred) | Muted brick red, form validation only |

### States, overlays, gradients
- Link default: charcoal with 1px underline; hover: underline persists, color eases to `#666660` (or opacity .7) over ~250ms (inferred)
- Primary button hover: `#252525` → `#3A3A38`; active `#1C1C1B`; disabled bg `#D5D4C8` text `#8A897E` (inferred)
- Image overlay for text-on-photo heroes: `linear-gradient(180deg, rgba(0,0,0,0) 40%, rgba(0,0,0,0.35) 100%)` (inferred)
- No decorative gradients anywhere else; flat fills only; shadows effectively absent (0 elevation design)
- Dark mode: none — the cream palette is fixed (scraped observation)

## 3. Typography
- Documented faces (Fonts In Use, scraped): **Suisse Int'l** (body + display), **Zapf Humanist** (Bitstream Optima; secondary web typography, echoes the Optima logo), **Neue Helvetica** on packaging, wordmark in **Optima**
- Stacks: sans `"Suisse Intl", "Helvetica Neue", Arial, sans-serif`; humanist accent `"Zapf Humanist", Optima, "Segoe UI", sans-serif` (inferred fallbacks)
- Weights: 400 dominant everywhere; 500 sparingly (product names, active nav); bold and italic effectively absent
- Loading: self-hosted WOFF2, `font-display: swap` (inferred)
- Figures: lining figures, prices always with two decimals ("$190.00", scraped)

### Type scale (approx, inferred from rendered pages)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | 44–48px / 2.75–3rem | 400 | 1.15 | 0 | Hero statements |
| H2 section | 28–32px / 1.75–2rem | 400 | 1.25 | 0 | "Browse by category" |
| H3 / feature | 22–24px | 400 | 1.3 | 0 | Editorial split headings |
| Product name | 18–20px | 500 | 1.4 | 0 | Cards, PDP |
| Body | 15–16px / 1rem | 400 | 1.55 | +0.005em | Paragraphs, descriptions |
| List row / UI | 14px | 400 | 1.5 | 0 | Chevron rows, nav |
| Caption / price | 12–13px | 400 | 1.5 | +0.01em | Prices, meta, legal |
- Case: sentence case universally — nav, buttons, headlines ("Shop all", "Find your regimen"); zero all-caps, zero exclamation
- Responsive: display 48→32px, H2 32→24px below ~768px (inferred); body constant

## 4. Layout & Grid
- Breakpoints: ~640 / 1024 / 1440px (inferred from layout reflow)
- Containers: full-bleed imagery bands; inner content max ~1440px with 24px (mobile) / 48–80px (desktop) gutters; text measure capped ~600–680px (inferred)
- Grid: 12-col desktop, 4-col mobile; product grids 2-col mobile → 3–4-col desktop with 16–24px gutters (inferred)
- Spacing scale (inferred): `8, 16, 24, 40, 64, 96, 160` px; section bands separated by 96–160px; hairline-ruled lists use 16–20px row padding
- Page rhythm (scraped): promo banner → hero carousel → curated sets grid → fragrance comparison → category browse → store/retail feature → Library editorial → footer; category pages alternate hero, consultant-recommendation blocks, chevron product lists
- Header: two tiers — slim utility row (search, stores, customer service, account, cart) over text-only category nav (Shop all, New & Notable, Skin Care, Hand & Body, Fragrance, Home, Hair, Travel, Gifts, Library, Experience — scraped); sticky with solid cream bg on scroll (inferred); skip-links present (scraped)
- Footer: multi-column — Orders and support / About / Sustainability + newsletter with email **and phone** field, SMS consent legal ("HELP"/"STOP" copy — scraped), social row (Instagram, LinkedIn, Pinterest, Facebook), legal links row
- Z-index (inferred): 10 sticky header · 20 dropdown/cart drawer · 30 modal/overlay · 40 toast/banner

## 5. Components
### Buttons
| Property | Primary | Secondary (outline) | Text link |
|---|---|---|---|
| Fill | `#252525` | transparent | none |
| Text | `#FFFEF2`, 14–15px, 400 | `#252525` | `#252525` underlined |
| Border | none | 1px `#252525` | none |
| Padding | `14px 24px`, often full-width in forms/PDP | same | — |
| Radius | 0 | 0 | — |
| Hover | bg `#3A3A38` | bg fills `#252525`, text inverts to cream | color → `#666660` |
| Active | bg `#1C1C1B` | as hover, pressed | — |
| Focus | 2px `#252525` outline, 2px offset | same | underline + outline |
| Disabled | bg `#D5D4C8`, text `#8A897E` | border/text `#9B9A90` | — |
| Transition | 250–300ms ease | same | 200ms |
(all state values inferred; shape/case scraped)

### Chevron list row (signature)
- Full-width row, 1px `#D5D4C8` top/bottom rules, 16–20px padding, label left ("Toner name"), meta right ("2 Sizes / From $35.00" — scraped) + chevron ›; hover: bg `#EFEEE0`, chevron shifts 2px right (inferred)

### Product tile
- Image on art-directed set ground (not white), 4:5 ratio; name (18px/500), one-line poetic descriptor, price 13px `#666660`; no ratings, badges, or quick-add clutter; hover: image crossfades to alternate still, ~400ms (inferred)

### Forms / inputs
- Underline-only inputs: transparent bg, 1px bottom border `#D5D4C8`, 16px text, label floats above at 12px; focus: border thickens/darkens to `#252525`; error: `#B3261E` underline + 12px message (inferred); newsletter block includes email + phone + consent checkbox (scraped)

### Header / nav
- Utility tier ~40px: 13px links (search, stores, customer service, account, cart count) (structure scraped)
- Category tier ~48px: 14px sentence-case links, 24–32px apart; active/hover state = 1px underline, no color change; sticky, solid cream, 1px bottom hairline on scroll (states inferred)
- Search expands inline as an underline field rather than a modal (inferred)
- Mobile: hamburger → full-screen cream panel, nav as hairline-ruled chevron rows (same list-row component) (inferred)

### Footer
- Cream on cream, top hairline; 3 link columns (Orders and support / About / Sustainability) at 14px/1.8 + newsletter block with email + phone underline fields, consent checkbox, full-sentence SMS legal ("HELP"/"STOP" — scraped)
- Social row as text links or 20px line icons (Instagram, LinkedIn, Pinterest, Facebook — scraped); legal links 12px in a final hairline-separated row (Privacy policy, Terms & Conditions, Accessibility Statement, Your Privacy Choices, SMS Terms — scraped)

### Other
- Promo banner: slim cream strip, 13px text, code styled inline ("VIRERE25" — scraped)
- Cart: right-side drawer over dim scrim, same hairline list language (inferred)
- Editorial split: 50/50 image|text, small overline, H3, ~70-word paragraph, underlined text link
- Accessibility niceties present (scraped): skip links, offline-mode notice, no-JS message — emulations should keep visible focus states on the charcoal outline system

## 6. Imagery & Iconography
- Still-life product photography with sculptural sets: brushed metal, stone, textiles, botanicals; amber glass bottles as the recurring motif; occasional saturated prop (yellow curtain — scraped) as the only "accent color"
- Muted warm grading, soft directional light, visible texture/grain; store/architecture photography for the Experience/retail sections; portraits rare
- Aspect ratios: wide 16:9/2:1 heroes, 4:5 product tiles, square editorial (inferred)
- Iconography: sparse 1px-stroke line icons (search, cart, account, arrow/chevron); no decorative or filled icons; chevrons are the dominant glyph

## 7. Motion & Interaction
### Timing & curves (all inferred; site is calm and CSS-transition-driven)
| Token | Value | Use |
|---|---|---|
| duration-micro | 200ms | link color, underline, chevron nudge |
| duration-ui | 300–400ms | button fills, row hover, drawer elements |
| duration-media | 500–700ms | image crossfades, fade-ups |
| duration-hero | 800–1000ms | hero carousel crossfade |
| ease-calm | `cubic-bezier(0.25, 0.1, 0.25, 1)` | default |
| ease-drawer | `cubic-bezier(0.32, 0.72, 0, 1)` | cart/menu slide-in |

### Animation inventory
- **Hero carousel**: slow crossfade (opacity only, no slide), ~900ms, 5–7s dwell; minimal dot/da­sh progress indicators
- **Scroll reveals**: single gentle fade-up (~16px) on section entry, one-shot; no parallax, no scrubbing, no pinned scenes — stillness is the brand
- **Hover micro**: product image crossfade to alternate still; list-row background tint + 2px chevron shift; link color ease
- **Cart/menu drawer**: slide from right 350–400ms with scrim fade to rgba(0,0,0,0.3)
- **Accordion (PDP details)**: height auto-animate 300ms + chevron rotate 180°
- **Stagger**: essentially none — elements arrive together; restraint over choreography
- **Reduced motion**: crossfades degrade to cuts; fade-ups removed (inferred best practice)
- **Page transitions**: none; standard navigation
- **Search expand**: inline width animation 300ms with caret fade-in (inferred)
- **Sticky header**: background solidifies + hairline fades in over 250ms after ~80px scroll (inferred)
- **Anti-patterns to avoid when emulating**: parallax, scroll-jacking, bouncy springs, skeleton shimmer, badge pulses — all off-brand; if in doubt, remove the animation

## 8. Voice & Copy
- Erudite, literary, understated; benefit-focused but poetic; never exclamatory, no urgency mechanics, no discount shouting (offers whispered: "Old price/New price" — scraped)
- Headline pattern: balanced paired fragments and considered declaratives, always sentence case
- Real examples (scraped): "Plant-based and laboratory-made ingredients" · "Cool Coriander Seed. Warm Black Pepper." · "Immaculate to exfoliate. Lucent to brighten" · "Certified B Corp"
- Microcopy calm and precise: "Browse our product offering", "Find your regimen", "Discover [Category]", "Shop all"
- Product descriptors read like tasting notes; education ("Understanding your skin") sits beside commerce; legal/consent copy written in full courteous sentences
- Category/section labels stay editorial rather than transactional: "Brilliant performers", "Blending for extra benefit" (scraped)
- Numbers and abbreviations spelled with care ("2 Sizes / From $35.00"); currency always with decimals
- Never used: exclamation marks, "Buy now", countdowns, "Best seller!" badges, emoji

## 9. Signature Moves
- Warm cream/paper background (`#FFFEF2`-family) instead of white — the whole site feels printed
- Zero border-radius and zero drop shadows anywhere; 1px hairline rules organize everything
- Sentence-case-only typography in quiet Suisse Int'l, with a Zapf Humanist/Optima secondary voice echoing the logo
- Poetic paired-fragment headlines ("Cool Coriander Seed. Warm Black Pepper.")
- Product photography on sculptural, textural sets — never cutouts on white
- Chevron-terminated hairline list rows as the primary browse/variant pattern
- Underline-only form fields; buttons as sharp charcoal rectangles
- Editorial "Library" and education content given equal weight to commerce; no ratings/badges/urgency UI

## 10. Emulation Tokens
```css
:root {
  /* color (inferred unless noted) */
  --color-bg: #FFFEF2;              /* scraped theme-color was #E9E9E9 */
  --color-surface: #F6F5E8;
  --color-surface-hover: #EFEEE0;
  --color-text: #252525;
  --color-text-2: #666660;
  --color-text-disabled: #9B9A90;
  --color-border: #D5D4C8;
  --color-border-strong: #252525;
  --color-inverse-bg: #252525;      --color-inverse-text: #FFFEF2;
  --color-error: #B3261E;
  --color-btn-hover: #3A3A38;       --color-btn-active: #1C1C1B;
  --color-btn-disabled-bg: #D5D4C8; --color-btn-disabled-text: #8A897E;
  --overlay-hero: linear-gradient(180deg, rgba(0,0,0,0) 40%, rgba(0,0,0,0.35) 100%);
  --overlay-scrim: rgba(0,0,0,0.3);
  /* type */
  --font-sans: "Suisse Intl", "Helvetica Neue", Arial, sans-serif;
  --font-humanist: "Zapf Humanist", Optima, "Segoe UI", sans-serif;
  --text-display: 48px; --text-h2: 32px; --text-h3: 24px;
  --text-product: 19px; --text-body: 16px; --text-ui: 14px; --text-caption: 13px;
  --leading-display: 1.15; --leading-heading: 1.3; --leading-body: 1.55;
  --tracking-body: 0.005em; --tracking-caption: 0.01em;
  /* space */
  --space-1: 8px;  --space-2: 16px; --space-3: 24px; --space-4: 40px;
  --space-5: 64px; --space-6: 96px; --space-7: 160px;
  /* shape & elevation */
  --radius-none: 0;                 /* radius is 0 everywhere */
  --shadow-none: none;              /* flat; drawers use scrim, not shadow */
  /* z-index (inferred) */
  --z-header: 10; --z-drawer: 20; --z-modal: 30; --z-banner: 40;
  /* motion */
  --duration-micro: 200ms; --duration-ui: 350ms;
  --duration-media: 600ms; --duration-hero: 900ms;
  --ease-calm: cubic-bezier(0.25, 0.1, 0.25, 1);
  --ease-drawer: cubic-bezier(0.32, 0.72, 0, 1);
  /* layout: breakpoints ~640 / 1024 / 1440 */
  --max-width: 1440px; --max-width-text: 660px;
}
```

```css
/* Aesop primary button with states */
.btn-primary {
  padding: 14px 24px; border-radius: 0; border: none;
  font: 400 15px/1 var(--font-sans);
  color: var(--color-inverse-text); background: var(--color-text);
  transition: background var(--duration-ui) var(--ease-calm);
}
.btn-primary:hover  { background: var(--color-btn-hover); }
.btn-primary:active { background: var(--color-btn-active); }
.btn-primary:focus-visible { outline: 2px solid var(--color-text); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-btn-disabled-bg); color: var(--color-btn-disabled-text); }
.btn-outline {
  background: transparent; color: var(--color-text);
  border: 1px solid var(--color-text);
}
.btn-outline:hover { background: var(--color-text); color: var(--color-inverse-text); }
```

```css
/* Aesop chevron list row (browse/variant pattern) */
.list-row {
  display: flex; justify-content: space-between; align-items: center;
  padding: 18px 0; border-top: 1px solid var(--color-border);
  font: 400 14px/1.5 var(--font-sans); color: var(--color-text);
  transition: background var(--duration-micro) var(--ease-calm);
}
.list-row:last-child { border-bottom: 1px solid var(--color-border); }
.list-row .meta { color: var(--color-text-2); font-size: 13px; }
.list-row .chevron { transition: transform var(--duration-micro) var(--ease-calm); }
.list-row:hover { background: var(--color-surface-hover); }
.list-row:hover .chevron { transform: translateX(2px); }
```

```css
/* Signature: muted editorial product tile on paper ground */
.product-tile { background: var(--color-surface); }
.product-tile img { aspect-ratio: 4 / 5; object-fit: cover; display: block;
  transition: opacity var(--duration-media) var(--ease-calm); }
.product-tile .img-alt { position: absolute; inset: 0; opacity: 0; }
.product-tile:hover .img-alt { opacity: 1; }   /* crossfade to alternate still */
.product-tile h3 { font: 500 19px/1.4 var(--font-sans); margin: 16px 0 4px; }
.product-tile .desc { font: 400 14px/1.5 var(--font-sans); color: var(--color-text-2); }
.product-tile .price { font: 400 13px/1.5 var(--font-sans); color: var(--color-text-2); }
```

```css
/* Aesop underline-only input (newsletter/forms) */
.field { position: relative; margin-top: 24px; }
.field input {
  width: 100%; background: transparent; border: none;
  border-bottom: 1px solid var(--color-border); border-radius: 0;
  padding: 8px 0; font: 400 16px/1.4 var(--font-sans); color: var(--color-text);
  transition: border-color var(--duration-micro) var(--ease-calm);
}
.field label { position: absolute; top: -14px; left: 0;
  font: 400 12px/1 var(--font-sans); color: var(--color-text-2); }
.field input:focus { outline: none; border-bottom-color: var(--color-border-strong); }
.field input[aria-invalid="true"] { border-bottom-color: var(--color-error); }
.field .hint { font: 400 12px/1.5 var(--font-sans); color: var(--color-text-2); margin-top: 6px; }
```
