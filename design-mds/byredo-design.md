# Byredo — Web Design Language
> Source: https://www.byredo.com blocked by robots.txt — NOT scraped (rule honored: no alternate fetching). Built from documentation: maxibestof.one/typefaces/byredo-sans + /websites/39807-byredo (fetched), inviqa.com/case-studies/byredo (fetched), stan-khoruzhenko.com/byredo redesign case study (fetched), dafont.com forum font ID (fetched) · Compiled 2026-07-29 · Most values are (inferred); documented facts are cited inline

## 1. Design Philosophy
Byredo.com is radical typographic minimalism applied to luxury e-commerce: essentially black text on white, set in the custom **Byredo Sans** (documented — in use on byredo.com since 2016), with products photographed like objects on a shelf. The redesign brief is documented verbatim: photography was "redirected towards cleaner look and feel with intention to reflect physical, real-life experience, similar to what you expect to see on actual shelf in the store," with "magazine-inspired grid layouts" and F-pattern scannability for a "sophisticated look." There is almost no UI chrome — no colored buttons, no shadows, no rounded corners; hierarchy comes from case (uppercase labels), size, and whitespace. The logo wordmark descends from Engravers Bold (documented font ID), giving the brand its engraved-label DNA, while the site UI runs entirely on the sans. It reads like a pharmacy label crossed with an art catalogue — exactly the product design language of the bottles.

## 2. Color
All hex values (inferred) — the domain cannot be scraped; roles follow documented minimal-luxury direction.

### 2.1 Core palette
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | pure white everywhere |
| Surface / campaign band | `#F7F7F5` | warm off-white, rare |
| Surface product well | `#F2F2F0` | seamless behind still-lifes |
| Text primary | `#000000` | true black — harder than most luxury sites |
| Text secondary | `#757575` | ml sizes, meta, muted prices |
| Text tertiary | `#A3A3A3` | placeholders, disabled |
| Accent | none | monochrome by design; photography is the only color |
| Border primary | `#000000` | 1px on buttons/inputs |
| Border hairline | `#E5E5E5` | grid dividers, table rules |
| Error | `#B00000`-class red | forms only, sparing |

### 2.2 States & overlays
| Role | Value | Notes |
|---|---|---|
| Button hover | inversion: `#000` fill / `#FFF` text | the primary interactive signal |
| Button active | held inversion | no third state color |
| Link hover | underline appears/disappears | no color change |
| Image hover | crossfade to alternate photo | no veil/zoom on product cards |
| Overlay scrim | `rgba(0,0,0,.3)` | behind cart drawer |
| Focus ring | `1px dashed #000` or `2px solid #000` offset 2px | monochrome |
| Disabled | `#A3A3A3` text, `#E5E5E5` border | |
- No gradients, no shadows, no dark mode — permanent white (inferred, consistent with all documentation).

## 3. Typography
- **Families:**
  - **Byredo Sans** (documented — custom sans serif, 2016, in use on byredo.com). (inferred) fallback stack: `'Byredo Sans','Helvetica Neue',Helvetica,Arial,sans-serif`.
  - Logo wordmark lineage: **Engravers Bold** (documented font identification) — wide engraved serif caps; wordmark used as image/SVG, not a text face.
- **Weights:** essentially one — Regular 400; emphasis via UPPERCASE and size, never weight (inferred).
- **Case system:** UPPERCASE for all structure — nav, product names, buttons, section labels; sentence case for descriptive/editorial body (inferred from brand packaging conventions).
- **Letter-spacing:** generous positive tracking on all caps — the signature typographic move.

### Type scale (all inferred)
| Style | Size | Weight | Line-height | Tracking | Case | Usage |
|---|---|---|---|---|---|---|
| Display lockup | 48–72px | 400 | 1.05 | +0.02em | CAPS | campaign statements |
| H1 / collection | 32–40px | 400 | 1.1 | +0.03em | CAPS | category headers |
| H2 | 24px | 400 | 1.2 | +0.04em | CAPS | section labels |
| Product name | 14–16px | 400 | 1.4 | +0.06em | CAPS | cards, PDP title |
| Body | 13–14px | 400 | 1.6–1.7 | 0 | sentence | descriptions, notes |
| UI / nav | 12px | 400 | 1.4 | +0.08em | CAPS | menu, buttons |
| Meta / caption | 10–11px | 400 | 1.5 | +0.10em | CAPS | ml sizes, legal, labels |
- Responsive: display drops ~35% on mobile; product/UI sizes stay constant (inferred).
- Font loading: woff2 self-hosted, `font-display: swap` (inferred).
- Numerals: lining figures; prices set small and quiet, same size as product name or below (inferred).

## 4. Layout & Grid
- **Header (documented structure):** persistent top menu "always visible" on desktop — replaced the hamburger in the documented redesign; categories can appear as a **left-hand submenu** on listing pages for constant access; BYREDO wordmark centered or left.
- **Grid (documented direction):** "magazine-inspired grid layouts", F-pattern scannability. (inferred) implementation: 12-col base; product listings as strict 2–4 column grids; editorial rows mixing 1/1, 1/2+1/2, 2/3+1/3 splits.
- **Max width:** effectively full-width with generous margins; inner content ~1400px (inferred).
- **Spacing scale (inferred):** 8 / 16 / 32 / 64 / 128px; section rhythm tall — 100–160px; a single product often gets a full viewport.
- **PDP (documented):** photo-dominant with a **custom scroll technique to browse product photos on desktop**; spare buy column — name, size/ml selector, price, ADD TO BAG.
- **Breakpoints:** ~768 / 1024 / 1440px (inferred).
- **Footer:** small uppercase link columns (Customer Care, Legal, Newsletter), tiny type, generous top margin (inferred).
- **z-index (inferred):** header 100 · left submenu 50 · cart drawer 200 · scrim 190.
- Mobile (documented): simplified menu placement to reduce friction; cart/checkout "built to perfection" for responsive use.

### Responsive behaviors
- Mobile (documented from redesign case study): simplified menu placement to reduce friction; responsive cart and checkout treated as first-class ("built to perfection").
- (inferred) Listing grids drop 4 → 2 columns; the left category submenu becomes a horizontal scrolling chip row under the header; PDP scroll-gallery becomes a swipe gallery; buy button becomes a sticky full-width bottom bar.
- Tracking on caps is kept even at small sizes — legibility is protected by size floors (11px minimum), not by dropping the caps convention (inferred).

## 5. Components
### Buttons
| Property | Primary (ADD TO BAG) | Secondary | Text link |
|---|---|---|---|
| Fill | `#FFF` (or `#000` for emphasis) | `#FFF` | none |
| Text | 12px, 400, CAPS, +0.08em | same | 11–12px CAPS |
| Border | 1px solid `#000` | 1px solid `#000` | none |
| Radius | **0** | 0 | — |
| Padding | 16px 32px; full-width in buy module/mobile | 14px 24px | — |
| Hover | inversion → `#000` fill, `#FFF` text, ~250ms | inversion | underline appears |
| Active | held inversion | held | — |
| Focus | 2px solid `#000`, offset 2px | same | underline + outline |
| Disabled | `#A3A3A3` text, `#E5E5E5` border | same | 50% opacity |

### Product cards (inferred anatomy)
Still-life photo on white/off-white → CAPS product name → grey category/size line ("EAU DE PARFUM 100 ML") → price. No card background, border, or shadow — whitespace separates. Hover: crossfade to alternate image; no zoom.

### Nav (documented + inferred)
Persistent text-only top bar, 12px CAPS tracked items; left category submenu on listings; cart as text counter "BAG (1)" rather than icon (inferred).

### Search (documented)
Autosuggest field displaying possible results upfront as you type.

### Inputs (inferred)
Underline or 1px-border rectangles, 0 radius; CAPS 10–11px labels above or as placeholder; black border on focus; error text in small red under field.

### Cart drawer (documented existence, inferred styling)
Right slide-in panel over `rgba(0,0,0,.3)` scrim; same monochrome treatment; motion-guided checkout flow (documented "delightful motion" in checkout).

### Badges
Text-only: "NEW", "BACK IN STOCK" — 10px CAPS tracked, no pill, no color (inferred).

### Footer
Hairline `#E5E5E5` top rule; 3–4 uppercase columns of 11px links; newsletter input; legal microtext (inferred). Site messaging documented: "Free shipping. Free returns. Complimentary samples."

### Content/editorial blocks (inferred)
- Full-viewport campaign image with a single caps line and one underlined text link.
- Two-up "story" rows: image left, short poetic paragraph right (or mirrored), huge whitespace gutters.
- Ingredient/notes lists rendered like label copy: TOP / HEART / BASE in tiny tracked caps with hairline rules between rows.
- Quote blocks set in the same sans at display size — no italic, no serif switch.

## 6. Imagery & Iconography
- **Product (documented direction):** clean shelf-like still lifes — bottle/candle centered on white or warm-neutral seamless, soft even lighting, true-to-material color, consistent scale across a range.
- **Campaign:** fashion-editorial photography — portraits, hands, texture studies — full-bleed between commerce rows, frequently monochrome or desaturated (inferred).
- **Icons:** nearly none; text labels preferred. Where unavoidable (close, arrows), hairline 1px strokes at small sizes (inferred).
- No illustration; no decorative graphics; the label typography on the bottles is the graphic language.
- Aspect ratios steady per row (4:5 product, 3:2 editorial) to keep the magazine grid quiet (inferred).

## 7. Motion & Interaction
- **Documented:** the redesign introduces "dynamic interactions or motion" throughout, aiming for a "humanized feeling from interaction"; a **custom scrolling technique to look through product photos on desktop** (scroll advances the PDP gallery); "delightful motion guides users through the checkout flow".
- **(inferred) implementation details:**
  - Page/section reveals: slow opacity + 20px translate-up, 500–700ms, ease-out `cubic-bezier(.22,.61,.36,1)`.
  - PDP gallery: scroll-linked image sequence — images swap/crossfade as the user scrolls the pinned product column.
  - Hover: 250ms black↔white inversion on buttons; 300ms crossfade on card images; underline reveals on links.
  - Cart drawer: 350–400ms slide-in from right with scrim fade.
  - Stagger: grid items fade in 60–80ms apart on first paint.
  - No parallax, no bounce, no spring physics — linear-feeling elegance.
- **Reduced motion:** collapse scroll-linked galleries to click-through, reveals to plain opacity (inferred best practice).

## 8. Voice & Copy
(inferred from brand materials + documented microcopy; site not scrapable)
- Tone: spare, poetic, sensory — fragrance described in evocative fragments, not marketing claims; documented redesign goal: "more human-centered tone" replacing outdated communication.
- UPPERCASE product names function as headlines: "GYPSY WATER", "BAL D'AFRIQUE", "MOJAVE GHOST".
- Microcopy terse: "ADD TO BAG", "DISCOVER", "READ MORE".
- Functional reassurance kept tiny (documented site messaging): "Free shipping. Free returns. Complimentary samples."
- Category language: "Perfumes, Candles, Makeup, Leather And Body Care" (documented).
- No exclamation marks, no discount shouting; scarcity of words = luxury.

## 9. Signature Moves
- One typeface (Byredo Sans), one color (black), one background (white) — brutal reduction.
- Tracked-out UPPERCASE for everything structural; case *is* the hierarchy.
- Zero border-radius, zero shadows — flat 1px-border rectangles only.
- Hover = black/white inversion as the universal interactive signal.
- Products photographed like objects on a shelf, centered, enormous whitespace.
- Persistent minimal text nav + left category submenu instead of mega-menus.
- Scroll-driven PDP photo browsing on desktop (documented custom technique).
- Label-like buy modules: NAME / SIZE / PRICE stacked in tiny caps, like the bottle label itself.
- Engraved-caps wordmark (Engravers Bold lineage) sitting over an otherwise sans-only UI.

## 10. Emulation Tokens
```css
:root {
  /* All values (inferred) — byredo.com robots-blocked; roles per documented design */
  --color-bg: #ffffff;
  --color-surface: #f7f7f5;
  --color-surface-product: #f2f2f0;
  --color-text: #000000;
  --color-text-secondary: #757575;
  --color-text-tertiary: #a3a3a3;
  --color-border: #000000;
  --color-border-hairline: #e5e5e5;
  --color-error: #b00000;
  --overlay-scrim: rgba(0,0,0,.3);
  /* ---- typography ---- */
  --font-sans: 'Byredo Sans','Helvetica Neue',Helvetica,Arial,sans-serif;
  --font-serif-logo: 'Engravers MT','Engravers Bold',serif;  /* wordmark lineage only */
  --font-weight: 400;                     /* single weight */
  --tracking-display: .02em; --tracking-h: .04em;
  --tracking-ui: .08em; --tracking-caption: .10em;
  --text-display: clamp(2.5rem, 4.5vw + 1rem, 4.5rem);
  --text-h1: clamp(1.75rem, 2vw + 1rem, 2.5rem);
  --text-h2: 1.5rem;
  --text-product: .9375rem;               /* CAPS */
  --text-body: .8125rem;
  --text-ui: .75rem;                      /* CAPS */
  --text-caption: .6875rem;               /* CAPS */
  --leading-display: 1.05; --leading-body: 1.65;
  /* ---- layout ---- */
  --radius: 0;
  --space-1: 8px; --space-2: 16px; --space-3: 32px;
  --space-4: 64px; --space-5: 96px; --space-section: 128px;
  --max-width: 1400px;
  --gutter: 24px;
  --header-height: 56px;
  /* breakpoints (inferred): 768 / 1024 / 1440 */
  --z-submenu: 50; --z-header: 100; --z-scrim: 190; --z-drawer: 200;
  /* ---- motion ---- */
  --ease-out: cubic-bezier(.22,.61,.36,1);
  --duration-hover: .25s; --duration-fade: .3s;
  --duration-drawer: .4s; --duration-reveal: .6s;
}
```

```css
/* Byredo button — inversion is the whole interaction model */
.btn {
  font: var(--font-weight) var(--text-ui)/1 var(--font-sans);
  letter-spacing: var(--tracking-ui); text-transform: uppercase;
  color: var(--color-text); background: var(--color-bg);
  border: 1px solid var(--color-border); border-radius: var(--radius);
  padding: 16px 32px; cursor: pointer; width: 100%; /* full-width in buy module */
  transition: background var(--duration-hover) var(--ease-out),
              color var(--duration-hover) var(--ease-out);
}
.btn:hover, .btn:active { background: var(--color-text); color: var(--color-bg); }
.btn:focus-visible { outline: 2px solid var(--color-border); outline-offset: 2px; }
.btn:disabled { color: var(--color-text-tertiary);
  border-color: var(--color-border-hairline); background: var(--color-bg); }
```

```css
/* Product card — whitespace does the separating */
.product-card { display: grid; gap: 12px; text-align: center; }
.product-card .media { aspect-ratio: 4/5; background: var(--color-surface-product);
  display: grid; place-items: center; position: relative; }
.product-card .media img { position: absolute; inset: 0; margin: auto;
  max-width: 70%; max-height: 80%;
  transition: opacity var(--duration-fade) var(--ease-out); }
.product-card .media img.alt { opacity: 0; }
.product-card:hover .media img.alt { opacity: 1; }      /* crossfade, no zoom */
.product-card h3 { font: var(--font-weight) var(--text-product)/1.4 var(--font-sans);
  letter-spacing: .06em; text-transform: uppercase; margin: 0; }
.product-card .meta { font-size: var(--text-caption); letter-spacing: var(--tracking-caption);
  text-transform: uppercase; color: var(--color-text-secondary); }
.product-card .price { font-size: var(--text-body); }
```

```css
/* Signature effect: stark oversized type lockup over whitespace */
.statement {
  min-height: 80vh; display: grid; place-content: center; text-align: center;
  padding: var(--space-section) var(--space-3); background: var(--color-bg);
}
.statement h2 {
  font: var(--font-weight) var(--text-display)/var(--leading-display) var(--font-sans);
  letter-spacing: var(--tracking-display); text-transform: uppercase;
  max-width: 18ch; margin: 0 auto var(--space-3);
}
.statement a { font-size: var(--text-ui); letter-spacing: var(--tracking-ui);
  text-transform: uppercase; color: var(--color-text);
  text-decoration: none; border-bottom: 1px solid currentColor; padding-bottom: 2px; }
@media (prefers-reduced-motion: reduce) {
  * { transition-duration: .01ms !important; animation-duration: .01ms !important; }
}
```
