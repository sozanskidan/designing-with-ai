# Freitag — Web Design Language
> Source: https://www.freitag.ch · https://www.freitag.ch/en/bags · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Freitag.ch looks like industrial logistics paperwork turned into a webshop: shouting ALL-CAPS grotesque type, warehouse-flat greys, and product photos of one-of-a-kind tarp bags shot like inventory. The design language is anti-luxury utilitarianism — the truck tarp, the factory, and the recycling loop are the brand, so the UI stays raw, boxy and functional ("WE THINK AND ACT IN CYCLES"). Humor is engineered in via deadpan microcopy (an actual `¯\_(ツ)_/¯` shrug in the empty state). Every bag is unique, so the product grid behaves like a live feed ("FRESHLY UPLOADED") rather than a catalog. Nothing is decorated: buttons are rectangles, arrows are ASCII, and the loudest visual event on any page is a scratched tarp.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` (inferred) | White page ground |
| Surface (product tiles) | `#EDEDED` (inferred) | Bags shot on neutral seamless grey |
| Surface alt / section bands | `#F4F4F4` (inferred) | Filter bars, footer ground |
| Text primary | `#000000` | Monochrome logo treatment emphasized (scraped note) |
| Text secondary | `#666666` (inferred) | Filter counts, meta lines, delivery notes |
| Accent / CTA fill | `#000000` | Black is the CTA color; no decorative accent hue |
| CTA hover | `#333333` fill, or invert to white + 1px black border (inferred) | |
| CTA active | `#1A1A1A` (inferred) | |
| Inverse lockup | `#FFFFFF` on `#000000` | White FREITAG wordmark in black rectangle |
| Borders hard | `#000000` (inferred) | 1px black rules for emphasis, table-like lists |
| Borders soft | `#D9D9D9` (inferred) | Grid seams, card separation |
| Overlay (menu/cart drawer) | `rgba(0,0,0,0.5)` (inferred) | Behind off-canvas panels |
| Disabled | `#B3B3B3` text on `#EDEDED` (inferred) | Sold-out states |
| Utility green | `#2AD587` (inferred) | Occasional circular-economy campaign highlight |
| Error/notice | `#000000` text, no color-coding (inferred) | Even errors stay monochrome + kaomoji |

No dark mode, no gradients, no shadows (inferred from flat rendering). Tarp photography supplies all chroma.

## 3. Typography
- **Family:** heavy neo-grotesque, Helvetica/Akzidenz lineage, set almost everywhere in bold caps. Exact webfont not exposed in scraped markup and not documented by font-index sites — treat as (inferred); emulate with `Helvetica Neue` Bold or `Inter`/`Neue Haas` at 700.
- **Stack (emulation):** `"Helvetica Neue", Helvetica, Arial, sans-serif` (inferred)
- **Weights:** 700 dominates (headlines, nav, product names, CTAs); 400 for body/legal only (inferred).
- **Loading:** self-hosted, hashed asset filenames (bundler pipeline confirmed by `F-logo.43d753f6.jpg` — scraped); `font-display: swap` (inferred).
- **Figures:** lining; prices in plain format (e.g. `CHF 210.00` / `€ 190`), tabular alignment in cart (inferred).

Type scale (approx., inferred; usage scraped):

| Name | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Hero statement | 36–56px / 2.25–3.5rem | 700 | 1.05 | 0, CAPS | "WE THINK AND ACT IN CYCLES" |
| Sub-statement | 20–24px / 1.25–1.5rem | 700 | 1.15 | 0, CAPS | "BAGS AND ACCESSORIES MADE FROM USED AND CIRCULAR MATERIALS" |
| Section header | 20–28px / 1.5rem | 700 | 1.1 | 0, CAPS | "FRESHLY UPLOADED" |
| Product name | 14–16px / 0.9375rem | 700 | 1.2 | 0, CAPS | "F13 TOP CAT" |
| Body | 14–16px / 0.9375rem | 400 | 1.5 | 0 | Material/story copy, sentence case |
| Price | 14px / 0.875rem | 400–700 | 1.3 | 0 | Below product name |
| CTA / link | 13–14px / 0.875rem | 700 | 1.2 | 0, CAPS | "CLIP IT ON NOW", "DISCOVER ONE-OFF ITEMS" |
| Meta / label | 11–12px / 0.75rem | 400–700 | 1.4 | +0.02em, CAPS | Filter labels, footer column heads |

- Responsive shift: hero 56 → 28px mobile; everything stays caps (inferred).
- **Case rules (scraped):** ALL CAPS for headlines, section headers, CTAs, nav, footer heads, product names; sentence case for descriptive body. Product grammar: `F` + number + shouted name (F13 TOP CAT).

## 4. Layout & Grid
- **Container:** edge-to-edge modular tiles; content max ~1520–1600px, tight gutters 8–16px so the grid reads like stacked crates (inferred).
- **Grid:** product feed 2-up mobile / 3-up tablet / 4-up desktop, near-zero visual gap or thin `#D9D9D9` seams (inferred); category tiles in irregular 1/2–1/3 splits.
- **Breakpoints (inferred):** 600 / 900 / 1280 px. Viewport meta `viewport-fit=cover` (scraped).
- **Spacing scale (inferred, 8px base):** 4, 8, 12, 16, 24, 32, 48, 64, 96. Section rhythm compact: 48–80px desktop, 32px mobile — the site is denser than a fashion brand on purpose.
- **Header:** single minimal strip (~56–64px): hamburger main-menu toggle (kept on desktop — scraped), F-lockup logo home link, language/delivery-country selector, account toggle, cart toggle (scraped). No persistent category nav — everything lives in the drawer.
- **Home flow (scraped):** hero carousel with overlaid text → tile-based category cards with background images → "FRESHLY UPLOADED" product feed → Instagram feed module.
- **Listing pages (scraped):** primary nav "All Products", filter controls with +/- steppers, dense grid, "Load more" progressive button (no pagination).
- **Footer (scraped):** multi-column caps-headed sections — CONTACT, ABOUT FREITAG, PRODUCTS, SERVICES, SOCIAL MEDIA, CONNECT, LEGAL — plus "© 2026 FREITAG" and repeated logo.
- **Z-index (inferred):** content 1 · sticky header 100 · off-canvas drawer 300 · overlay scrim 250 · toast 400.

## 5. Components
**Primary button / CTA**
- Rectangle, radius 0; height 44–48px; padding 12px 24px.
- Label 13–14px / 700 / CAPS.
- Default: `#000` fill, `#FFF` label (or bare black text CTA with "≥" arrow). Hover: fill `#333` or invert white/black-border (inferred). Active: `#1A1A1A`. Focus-visible: 2px solid black outline, offset 2px (inferred). Disabled/sold-out: `#B3B3B3` on `#EDEDED` (inferred).
- Transition: background 150ms linear (inferred) — deliberately mechanical.

**Text CTA with ASCII arrow (scraped pattern)**
- Bold caps text + "≥" glyph: "CLIP IT ON NOW ≥". Hover: underline appears; arrow does not animate elaborately (inferred).

**Product card (scraped anatomy)**
- Grey-seamless photo of the individual, unique bag → bold caps code + name ("F13 TOP CAT") → price. No ratings, no swatches, no color variants — every item is one-off. Hover: swap to alternate angle or model shot, 150ms (inferred). Sold: overlaid "SOLD" caps label (inferred).

**Category tile**
- Full-bleed background image, caps label block (white text or black text on white chip), entire tile clickable (scraped structure).

**Filters**
- Utilitarian toggles and +/- increment steppers (scraped); active filter = black filled chip with white caps label (inferred). Empty result state: "¯\_(ツ)_/¯ OOPS, WE CANNOT FIND ANYTHING BASED ON YOUR SELECTION." + "No products match your current filters." (both scraped).

**Load more**
- Plain wide rectangle button at grid end, caps label, progressive feed extension (scraped).

**Off-canvas menu / cart**
- Hamburger opens full-height drawer; caps link list in bold, counts in parentheses; cart drawer mirrors it (inferred behavior from toggles scraped).

**Inputs**
- Square fields, 1px black border, radius 0; caps labels above; focus: border thickens to 2px (inferred).

## 6. Imagery & Iconography
- Product photography: flat, even, documentary — bags frontal on neutral grey seamless, showing real tarp wear, scratches and print fragments; every SKU photographed individually because every bag differs (brand fact + scraped card structure).
- Campaign imagery: factory floor, trucks, tarp-cutting, Zurich industrial contexts; unretouched realism.
- Logos shipped as raster assets (`F-logo.43d753f6.jpg`, `F-logo-short.17f68bb7.jpg` — scraped); OG image on Cloudinary (scraped).
- Icons: sparse functional glyphs (cart, account, +/- steppers); ASCII/keyboard characters ("≥", kaomoji shrug) used as first-class design elements (scraped).
- Instagram feed integration on home (scraped).

## 7. Motion & Interaction
Motion is mechanical and near-invisible; the site should feel like machinery, not theater. Values inferred unless noted.

| Animation | Spec |
|---|---|
| Hero carousel | Auto-advance ~5s interval, hard cut or fast 300ms linear slide; overlaid text moves with slide (behavior scraped, timing inferred) |
| Card hover | Instant or 150ms linear image swap to alt angle; no zoom, no lift, no shadow |
| Button hover | Background invert, 150ms linear |
| Drawer open (menu/cart) | translateX(100%→0), 250ms `cubic-bezier(0.4,0,0.2,1)`; scrim fades 200ms |
| Load more | New rows append with 150ms fade-in, 40ms stagger; page does not scroll-jack |
| Filter apply | Grid crossfades 200ms; count updates instantly |
| Scroll behavior | No parallax, no scroll-triggered choreography; lazy-load images fade in 200ms |
| Steppers (+/-) | Instant value change, active state = filled black |
| Page transitions | None; hard navigation (SPA hydration invisible to user) |

- Stagger: minimal, 40ms max — feed should feel loaded, not performed.
- Easing vocabulary: `linear` and `cubic-bezier(0.4,0,0.2,1)` only.
- Reduced motion: carousel stops auto-advance; fades become instant (inferred best practice; not verified).

## 8. Voice & Copy
- Tone: deadpan, self-aware, sustainability-literal; Swiss-factual with jokes hidden in microcopy. Speaks in first-person-plural factory voice.
- ALL CAPS declarative headlines; body copy explains materials and cycles plainly; error states get kaomoji instead of apology fluff.
- Real examples (scraped):
  - "WE THINK AND ACT IN CYCLES"
  - "BAGS AND ACCESSORIES MADE FROM USED AND CIRCULAR MATERIALS"
  - "FRESHLY UPLOADED"
  - "¯\_(ツ)_/¯ OOPS, WE CANNOT FIND ANYTHING BASED ON YOUR SELECTION."
- CTAs imperative and playful: "CLIP IT ON NOW", "DISCOVER ONE-OFF ITEMS" (scraped).
- Product names are shouted part-numbers: "F13 TOP CAT" (scraped).

## 9. Signature Moves
- Everything shouts: bold ALL-CAPS grotesque for headlines, nav, product names, footer heads.
- White-on-black rectangular FREITAG wordmark as the anchor mark.
- One-off inventory framing ("FRESHLY UPLOADED") — commerce as a live feed of unique items.
- F-number product codes (F13 TOP CAT) styled like industrial part numbers.
- Flat grey seamless product photography showing real tarp wear and scratches.
- ASCII arrows "≥" and kaomoji shrugs as UI ornament.
- Hamburger menu retained on desktop; chrome kept warehouse-minimal.
- Zero border-radius, zero shadows, zero gradients; 150ms linear everything.

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #ffffff;                 /* inferred */
  --color-surface: #ededed;            /* inferred */
  --color-surface-alt: #f4f4f4;        /* inferred */
  --color-text: #000000;
  --color-text-secondary: #666666;     /* inferred */
  --color-accent: #000000;
  --color-accent-hover: #333333;       /* inferred */
  --color-accent-active: #1a1a1a;      /* inferred */
  --color-inverse: #ffffff;
  --color-border: #d9d9d9;             /* inferred */
  --color-border-hard: #000000;
  --color-disabled: #b3b3b3;           /* inferred */
  --color-overlay: rgba(0,0,0,0.5);    /* inferred */
  --color-utility-green: #2ad587;      /* inferred, campaign only */

  /* type */
  --font-sans: "Helvetica Neue", Helvetica, Arial, sans-serif; /* inferred stand-in */
  --font-weight-display: 700;
  --text-hero: clamp(1.75rem, 4.5vw, 3.5rem);
  --text-sub: 1.375rem;   --text-section: 1.5rem;
  --text-product: 0.9375rem; --text-body: 0.9375rem;
  --text-cta: 0.875rem;   --text-meta: 0.75rem;
  --leading-hero: 1.05;   --leading-body: 1.5;
  --case-display: uppercase;

  /* radius & shadow — brand rules */
  --radius-none: 0;
  --shadow-none: none;

  /* spacing (8px base, dense) */
  --space-05: 4px; --space-1: 8px;  --space-15: 12px; --space-2: 16px;
  --space-3: 24px; --space-4: 32px; --space-6: 48px;  --space-8: 64px;
  --space-section: 64px;               /* inferred */

  /* layout — breakpoints: 600 / 900 / 1280 (inferred) */
  --max-width: 1520px;                 /* inferred */
  --gutter: 12px;                      /* tight, crate-like */

  /* z-index */
  --z-header: 100; --z-scrim: 250; --z-drawer: 300; --z-toast: 400;

  /* motion — mechanical */
  --ease-utility: linear;
  --ease-drawer: cubic-bezier(0.4, 0, 0.2, 1);  /* inferred */
  --duration-instant: 100ms; --duration-fast: 150ms;
  --duration-med: 250ms;     --duration-carousel: 300ms;
}
```

```css
/* Freitag primary button + ASCII-arrow text CTA, all states */
.btn-freitag {
  display: inline-block; min-height: 48px; padding: 12px 24px;
  background: var(--color-accent); color: var(--color-inverse);
  font: 700 var(--text-cta)/1.2 var(--font-sans);
  text-transform: uppercase; border: 1px solid var(--color-accent);
  border-radius: 0; cursor: pointer;
  transition: background var(--duration-fast) var(--ease-utility),
              color var(--duration-fast) var(--ease-utility);
}
.btn-freitag:hover  { background: var(--color-inverse); color: var(--color-accent); }
.btn-freitag:active { background: var(--color-accent-active); color: var(--color-inverse); }
.btn-freitag:focus-visible { outline: 2px solid #000; outline-offset: 2px; }
.btn-freitag:disabled { background: var(--color-surface); color: var(--color-disabled);
  border-color: var(--color-border); cursor: default; }

.cta-freitag-text { font: 700 var(--text-cta)/1.2 var(--font-sans);
  text-transform: uppercase; color: #000; text-decoration: none; }
.cta-freitag-text::after { content: " \2265"; } /* ≥ */
.cta-freitag-text:hover { text-decoration: underline; }
```

```css
/* Freitag one-off product card */
.card-freitag { display: block; text-decoration: none; color: #000; }
.card-freitag__media { aspect-ratio: 1/1; background: var(--color-surface);
  position: relative; overflow: hidden; }
.card-freitag__media img { width: 100%; height: 100%; object-fit: cover;
  transition: opacity var(--duration-fast) var(--ease-utility); }
.card-freitag__media img.alt { position: absolute; inset: 0; opacity: 0; }
.card-freitag:hover .card-freitag__media img.alt { opacity: 1; }
.card-freitag__name { margin-top: var(--space-1);
  font: 700 var(--text-product)/1.2 var(--font-sans); text-transform: uppercase; }
.card-freitag__price { font: 400 0.875rem/1.3 var(--font-sans);
  color: var(--color-text-secondary); font-variant-numeric: tabular-nums; }
.card-freitag--sold .card-freitag__media::after {
  content: "SOLD"; position: absolute; inset: 0; display: grid; place-items: center;
  font: 700 1rem var(--font-sans); background: rgba(255,255,255,0.6); }
```

```css
/* Signature effect: utilitarian list row + wordmark lockup + shrug empty state */
.row-freitag { display: flex; justify-content: space-between; align-items: center;
  padding: var(--space-2) 0; border-top: 1px solid var(--color-border-hard);
  font: 700 var(--text-cta)/1.2 var(--font-sans); text-transform: uppercase; }
.row-freitag:last-child { border-bottom: 1px solid var(--color-border-hard); }
.row-freitag:hover { background: var(--color-surface-alt); }

.logo-freitag { display: inline-block; background: #000; color: #fff;
  padding: 6px 10px; font: 700 0.875rem/1 var(--font-sans);
  text-transform: uppercase; letter-spacing: 0.02em; }

.empty-freitag { text-align: center; padding: var(--space-8) var(--space-2);
  font: 700 1.25rem/1.3 var(--font-sans); text-transform: uppercase; }
.empty-freitag::before { content: "\00AF\005C_(\30C4)_/\00AF"; display: block;
  font-weight: 400; text-transform: none; margin-bottom: var(--space-2); }
```
