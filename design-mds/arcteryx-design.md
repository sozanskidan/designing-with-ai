# Arc'teryx — Web Design Language
> Source: https://arcteryx.com/us/en (scraped) · /us/en/c/mens/shell-jackets (scraped) · /us/en/shop/mens/beta-ar-jacket-9906 product page (scraped) · myfonts.com "ITC Elan for Arc'teryx" (font documentation) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Arcteryx.com is alpine minimalism: a stark black-and-white technical interface laid over enormous mountain photography. The design mirrors the product philosophy — remove everything non-essential, let materials perform. Category thinking is functional, not fashionable: gear is organized by protection level ("Hardshells", "Windshells", "Softshells" — scraped) and activity (Trail, Climb, Ski & Snowboard), with plain-spoken benefit copy ("Your first line of defense from wind, rain, and snow" — scraped). Product pages read like spec sheets with a story: GORE-TEX PRO ePE explained in labeled feature sections, a fit reference on a real human ("Max is 6'1.5\", wearing size M" — scraped), and an unusually honest review number ("4.2496 out of 5" — scraped, unrounded). High contrast is an explicit priority; CTAs are utilitarian and repeated ("Shop men's" / "Shop women's"); the only flourishes are the dead-bird logo and full-bleed landscapes shot in real weather.

## 2. Color
Hex values (inferred) — the React build exposes no CSS in scraped markup; roles and high-contrast doctrine are scraped observations.

### 2.1 Core palette
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | white commerce canvas |
| Surface | `#F6F6F6` | product-image wells, filter rails |
| Surface deep | `#EDEDED` | hover wells, skeletons |
| Text primary | `#1B1B1B` | hard near-black |
| Text secondary | `#5F5F5F` | descriptors, fit notes |
| Text tertiary | `#8A8A8A` | placeholders, review meta |
| Accent | `#000000` | black buttons/links — no brand accent color in UI |
| Dark sections | `#0D0D0D` | hero overlays, footer, Veilance sections |
| Text on dark | `#FFFFFF` / `#ADADAD` | primary / secondary |
| Borders | `#D9D9D9` | 1px hairlines on filters, cards, dropdowns |
| Border strong | `#1B1B1B` | active selectors, secondary buttons |
| Utility red | `#B00020` | sale/recall notices only |
| Rating gold | `#1B1B1B` stars (monochrome) | reviews stay monochrome (inferred) |

### 2.2 States & overlays (inferred)
| Role | Value |
|---|---|
| Primary button hover | `#333333` |
| Primary button active | `#000000` |
| Ghost-on-image hover | `rgba(255,255,255,.15)` fill |
| Secondary hover | inversion `#1B1B1B` fill / white text |
| Link hover | underline; arrow translates 4px right |
| Swatch selected | 2px `#1B1B1B` ring, 2px offset |
| Card hover | image swap or 1.03 zoom + subtle veil `rgba(0,0,0,.04)` |
| Hero scrim | `linear-gradient(rgba(0,0,0,.35), rgba(0,0,0,0) 55%)` top or bottom per composition |
| Overlay scrim | `rgba(0,0,0,.4)` |
| Focus ring | `2px solid #1B1B1B`, offset 2px |
| Disabled | `#8A8A8A` text / `#EDEDED` fill |
- No gradients as decoration — only functional scrims. No dark mode; dark appears as photographic/Veilance sections (observed).

## 3. Typography
- **Brand face (documented):** custom **ITC Elan for Arc'teryx** (customized ITC Elan) — corporate/wordmark face.
- **Web UI face:** neutral Helvetica-class grotesque; exact webfont not exposed in scraped markup — **(inferred)** stack: `'Arcteryx Sans','Helvetica Neue',Helvetica,Arial,sans-serif`; display moments read slightly condensed.
- **Weights:** 400 body · 500 UI/nav · 600–700 headings and caps display (inferred).
- **Case system (scraped):** ALL CAPS campaign headlines ("SUMMER GEAR IS HERE"); Title Case section headers ("The new Konseal Trek", "Fresh off the line", "Shells for summer"); sentence case benefit copy and CTAs ("Essentials for sunny days in the alpine", "Shop women's", "Learn more"); product names Title Case with gender suffix ("Beta AR Jacket Men's" — scraped).

### Type scale (inferred sizes; case/roles scraped)
| Style | Size | Weight | Line-height | Tracking | Case | Usage |
|---|---|---|---|---|---|---|
| Display | clamp 36→64px | 700 | 1.05 | +0.04em | CAPS | campaign heroes |
| H1 / PDP title | 28–32px | 600 | 1.15 | 0 | Title | "Beta AR Jacket Men's" |
| H2 | 24–28px | 600 | 1.2 | 0 | Title | "Shells for summer" |
| H3 / module title | 18–20px | 600 | 1.3 | 0 | Title | "Hardshells" |
| Feature label | 14–16px | 600 | 1.35 | +0.01em | Title/CAPS | "DropHood™", "GORE-TEX PRO ePE" |
| Body | 14–16px | 400 | 1.55 | 0 | sentence | benefit copy |
| UI / price | 14–16px | 500 | 1.4 | 0 | — | "$650.00" prominent below title (scraped) |
| Meta / caption | 12px | 400 | 1.5 | +0.01em | sentence | fit notes, review disclosure |
| Overline | 11px | 600 | 1.3 | +0.08em | CAPS | eyebrow labels, banner |
- Subheadline pattern (scraped): tech-spec-as-tagline — "GORE-TEX PRO ePE all-round shell for comfort on every trail".
- Tabular figures for prices/specs; unrounded data shown raw ("4.2496 out of 5" — scraped). Font loading woff2 + swap (inferred).

## 4. Layout & Grid
- **Homepage structure (scraped order):** regional/shipping banner ("Summer gear is here | Free shipping") → primary nav (Women, Men, Footwear, Equipment, Veilance, Discover) → full-bleed hero → product/category tiles (Konseal Trek, climbing kits, shells) → brand collections (Veilance SS26, Gamma Family) → ReBIRD trade-in CTA → Arc'teryx Academy content → footer.
- **Category page (scraped):** intro benefit line → stacked category modules (lifestyle image + bold name + functional descriptor + arrow CTA) → hierarchical expandable filters incl. activity + Extended Size Range.
- **PDP (scraped anatomy):** gallery → title → subheadline → price `$650.00` → color dropdown ("Colour: Solitude / Void") with numbered swatches (1–6) → size dropdown (XS–XXXL, 7 sizes) + "Sizing chart & Fit guide" link + model fit note → "Add to cart" → delivery/product-detail tabs → labeled feature sections with hero photography and callouts ("Maximum durability", "Softer, flexible fabric", "DropHood™", "GORE-TEX PRO ePE", "ReBIRD™ TRADE-IN") → reviews (rating, count 709, disclosure line, "Leave a review").
- **Grid:** 12-col, gutter 20–24px; content max ~1440px; heroes/feature imagery full-bleed (inferred).
- **Spacing scale (inferred):** 8-based — 8 / 16 / 24 / 32 / 48 / 64 / 96px; commerce rhythm 48–80px, brand stories ~120px.
- **Breakpoints:** ~768 / 1024 / 1366px (inferred).
- **Header:** utility banner ~36px over main bar ~60px, sticky; mega-menu panels for the six categories with nested sections (New arrivals, bestsellers, activity groups — scraped).
- **Footer (scraped):** four columns — Help (support, FAQ, contact, shipping) · My Account (login, order tracking, returns, care) · Shop More (store locator, gift cards, PRO program, resale) · About Us (mission, athletes, sustainability, careers); social (Instagram, YouTube, Facebook, TikTok); app badges (Google Play, App Store); newsletter "Get your weekly dose of adventure" + privacy acknowledgment; legal row (privacy, cookies, terms, accessibility, recall info).
- **z-index (inferred):** banner+header 100 · mega-menu 90 · drawer/modal 200 · scrim 190.

## 5. Components
### Buttons
| Property | Primary | Secondary | On-image ghost | Text link |
|---|---|---|---|---|
| Fill | `#1B1B1B` | `#FFF` | transparent | none |
| Text | `#FFF` 14px 500, sentence case ("Add to cart" — scraped) | `#1B1B1B` | `#FFF` | 14px + trailing arrow (scraped) |
| Border | none | 1px `#1B1B1B` | 1px `#FFF` | — |
| Radius | 0–2px | 0–2px | 0–2px | — |
| Padding | 14px 28px; full-width in buy box | 13px 27px | 13px 27px | — |
| Hover | `#333`, 150–200ms | inversion | white .15 fill | underline + arrow slides 4px |
| Active | `#000` | held | `.25` fill | — |
| Focus | 2px `#1B1B1B` outline, offset 2px | same | 2px `#FFF` | same |
| Disabled | `#EDEDED` fill, `#8A8A8A` text | 40% opacity | — | — |
(labels scraped: "Add to cart", "Shop now", "Shop men's", "Shop women's", "Learn more", "Find a store"; metrics inferred)

### Buy box (scraped anatomy, styling inferred)
Title 28–32px → subheadline grey → price 16px 500 → labeled dropdowns ("Colour:", "Size:") 1px `#D9D9D9`, 44px height, 0 radius → "Sizing chart & Fit guide" text link → fit note 12px grey → full-width Add to cart → tabs (delivery / details).

### Category modules (scraped anatomy)
Lifestyle image (product in use) → bold category name → one-line functional benefit ("Waterproof, breathable, and built for full exposure" — scraped) → arrow CTA link.

### Product cards (inferred)
Image on `#F6F6F6` well → name Title Case 15px 500 → price → colorway dots; hover: alternate image + quick-add.

### Filters (scraped hierarchy, styling inferred)
Left rail; expandable groups with caps 11px labels; checkbox rows 14px; "Extended Size Range" toggle; applied filters as removable chips (1px border, 0 radius).

### Feature sections (scraped pattern)
"Image/text combinations featuring hero photography with descriptive callouts rather than traditional bulleted specifications" — full-bleed photo + labeled callout block (title 600 + short benefit copy), alternating alignment.

### Reviews module (scraped)
Rating number + count "(709)" + methodology disclosure ("Reviews combine GORE-TEX ePE and prior fabric models") + "Leave a review" link; monochrome stars (inferred).

### Banner (scraped)
Slim top bar, pipe-separated messages ("Summer gear is here | Free shipping"), 12px, dark or white inverse.

## 6. Imagery & Iconography
- Photography is the brand: full-bleed alpine landscapes and athletes in genuinely bad weather — fog, rock, snow; muted natural palettes that make gear color pop (scraped emphasis: lifestyle photography is the primary visual element).
- PDP features use hero photography with callouts instead of spec bullets (scraped).
- Product shots: ghost-mannequin/flat product on white or `#F6F6F6`, fabric texture visible (inferred).
- Veilance: even more austere — black/white urban minimalism (Veilance SS26 section scraped).
- Icons: thin utilitarian line set (search, account, cart, pin), 1.5px stroke, 20–24px (inferred); arrow glyphs accompany links (scraped); the "dead bird" fossil logo is the sole emblem.
- Trademark discipline in labels: "DropHood™", "ReBIRD™" (scraped).

## 7. Motion & Interaction
- **Doctrine:** restrained; the page defers to photography; no scroll-jacking (observed).
- **Hover inventory (inferred):** tile image zoom 1.03 over 400ms; card image swap 250ms crossfade; button shade shift 150–200ms; arrow-link translate 4px; swatch ring snap-in 120ms.
- **Scroll reveals:** fade + 24px translate-up on modules, 450ms `cubic-bezier(.33,1,.68,1)`, stagger ~80ms (inferred).
- **Mega-menu:** 200ms fade-slide down, hover-intent delay (inferred).
- **PDP gallery:** swipe/thumb navigation with 300ms slide; zoom-on-click lightbox (inferred).
- **Accordions/tabs (delivery/details — scraped presence):** 250ms height ease (inferred).
- **Hero:** slow ken-burns drift on campaign video/imagery (inferred).
- **Drawer/cart:** 300ms slide-in right + scrim fade (inferred).
- **Reduced motion:** collapse translates/zooms to opacity (inferred best practice).

## 8. Voice & Copy
- Tone: plain, functional, quietly confident — benefits over adjectives; weather is the antagonist; spec language used verbatim as selling copy.
- Scraped examples: **"SUMMER GEAR IS HERE"**, **"Essentials for sunny days in the alpine"**, **"Your first line of defense from wind, rain, and snow"**, **"GORE-TEX PRO ePE all-round shell for comfort on every trail"**, **"Light, packable layers for shifting conditions"**, **"Get your weekly dose of adventure"**.
- Pattern: CAPS headline → sentence-case functional subline; category names are technical taxonomy (Hardshell / Windshell / Softshell) each with a one-line physics lesson.
- CTAs sentence case: "Shop women's", "Learn more", "Add to cart" (scraped).
- Honesty markers: unrounded rating "4.2496 out of 5", review-methodology disclosure, model fit note "Max is 6'1.5\", wearing size M" (all scraped).
- Program vocabulary: ReBIRD™ (trade-in/resale), PRO program, Academy (scraped).

## 9. Signature Moves
- Black-and-white UI as a neutral frame for storm-weather alpine photography.
- Taxonomy-as-design: Hardshell / Windshell / Softshell, each with a one-line physics lesson.
- ALL-CAPS campaign headline over full-bleed imagery; sentence-case benefit line beneath.
- Paired gender CTAs everywhere: "Shop men's" / "Shop women's".
- Arrow-suffixed text links instead of decorated buttons for secondary actions.
- Spec-sheet honesty: unrounded ratings, fit notes on a named human, review disclosures.
- Feature storytelling via full-bleed photo + labeled callout ("DropHood™") instead of bullet lists.
- The dead-bird fossil logo as the only ornament; zero accent color.
- Veilance sections flip the site into near-total black minimalism.
- Utility banner with pipe-separated offers ("Summer gear is here | Free shipping").

## 10. Emulation Tokens
```css
:root {
  /* ---- color (roles scraped, hex inferred) ---- */
  --color-bg: #ffffff;
  --color-surface: #f6f6f6;
  --color-surface-deep: #ededed;
  --color-bg-dark: #0d0d0d;
  --color-text: #1b1b1b;
  --color-text-secondary: #5f5f5f;
  --color-text-tertiary: #8a8a8a;
  --color-text-on-dark: #ffffff;
  --color-text-on-dark-secondary: #adadad;
  --color-accent: #000000;
  --color-btn-hover: #333333;
  --color-border: #d9d9d9;
  --color-border-strong: #1b1b1b;
  --color-utility-red: #b00020;
  --overlay-scrim: rgba(0,0,0,.4);
  --overlay-card-hover: rgba(0,0,0,.04);
  --gradient-hero-scrim: linear-gradient(rgba(0,0,0,.35), rgba(0,0,0,0) 55%);
  /* ---- typography (case system scraped; sizes inferred) ---- */
  --font-sans: 'Arcteryx Sans','Helvetica Neue',Helvetica,Arial,sans-serif;
  --font-weight-body: 400; --font-weight-ui: 500; --font-weight-heading: 600; --font-weight-display: 700;
  --tracking-display: .04em; --tracking-overline: .08em;
  --text-display: clamp(2.25rem, 4vw + 1rem, 4rem);      /* CAPS */
  --text-h1: clamp(1.75rem, 2vw + 1rem, 2rem);
  --text-h2: 1.625rem;
  --text-h3: 1.1875rem;
  --text-feature: .9375rem;
  --text-body: .9375rem;
  --text-ui: .875rem;
  --text-caption: .75rem;
  --text-overline: .6875rem;                              /* CAPS */
  --leading-display: 1.05; --leading-body: 1.55;
  /* ---- layout ---- */
  --radius: 0; --radius-sm: 2px;
  --space-1: 8px; --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-5: 48px; --space-6: 64px; --space-section: 88px;
  --max-width: 1440px;                  /* (inferred) */
  --gutter: 24px;
  --banner-height: 36px; --header-height: 60px;
  /* breakpoints (inferred): 768 / 1024 / 1366 */
  --z-megamenu: 90; --z-header: 100; --z-scrim: 190; --z-drawer: 200;
  /* ---- motion (inferred) ---- */
  --ease-out: cubic-bezier(.33,1,.68,1);
  --duration-fast: .15s; --duration-base: .25s;
  --duration-zoom: .4s; --duration-reveal: .45s;
}
```

```css
/* Arc'teryx primary + on-image ghost button, all states */
.btn-primary {
  font: var(--font-weight-ui) var(--text-ui)/1 var(--font-sans);
  color: #fff; background: var(--color-text);
  border: none; border-radius: var(--radius-sm);
  padding: 14px 28px; cursor: pointer; width: 100%; /* full-width in buy box */
  transition: background var(--duration-fast) var(--ease-out);
}
.btn-primary:hover  { background: var(--color-btn-hover); }
.btn-primary:active { background: #000; }
.btn-primary:focus-visible { outline: 2px solid var(--color-border-strong); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-surface-deep); color: var(--color-text-tertiary); }
.btn-ghost-onimage {
  background: transparent; color: #fff;
  border: 1px solid #fff; border-radius: var(--radius-sm); padding: 13px 27px;
  transition: background var(--duration-fast) var(--ease-out);
}
.btn-ghost-onimage:hover { background: rgba(255,255,255,.15); }
.link-arrow { color: var(--color-text); text-decoration: none; font-size: var(--text-ui); }
.link-arrow::after { content: " →"; display: inline-block;
  transition: transform var(--duration-fast) var(--ease-out); }
.link-arrow:hover { text-decoration: underline; }
.link-arrow:hover::after { transform: translateX(4px); }
```

```css
/* Category module (anatomy scraped) */
.category-module { display: grid; gap: var(--space-2); }
.category-module .media { aspect-ratio: 4/5; overflow: hidden; background: var(--color-surface); }
.category-module .media img { width: 100%; height: 100%; object-fit: cover;
  transition: transform var(--duration-zoom) var(--ease-out); }
.category-module:hover .media img { transform: scale(1.03); }
.category-module h3 { font: var(--font-weight-heading) var(--text-h3)/1.3 var(--font-sans); margin: 0; }
.category-module p  { font-size: var(--text-body); color: var(--color-text-secondary); margin: 0; }
```

```css
/* Signature effect: technical spec-list / buy-box styling (anatomy scraped) */
.buy-box { display: grid; gap: var(--space-2); max-width: 420px; }
.buy-box h1 { font: var(--font-weight-heading) var(--text-h1)/1.15 var(--font-sans); margin: 0; }
.buy-box .subhead { font-size: var(--text-body); color: var(--color-text-secondary); }
.buy-box .price { font: var(--font-weight-ui) 1rem/1 var(--font-sans);
  font-variant-numeric: tabular-nums; }
.buy-box select {
  font: var(--font-weight-body) var(--text-ui)/1 var(--font-sans);
  height: 44px; padding: 0 12px; border: 1px solid var(--color-border);
  border-radius: var(--radius); background: #fff; width: 100%;
}
.buy-box select:focus-visible { border-color: var(--color-border-strong);
  outline: 2px solid var(--color-border-strong); outline-offset: 1px; }
.buy-box .fit-note { font-size: var(--text-caption); color: var(--color-text-tertiary); }
.feature-callout { /* "DropHood™" style labeled feature */
  display: grid; gap: 6px; padding: var(--space-3) 0;
  border-top: 1px solid var(--color-border);
}
.feature-callout h4 { font: var(--font-weight-heading) var(--text-feature)/1.35 var(--font-sans);
  letter-spacing: .01em; margin: 0; }
.feature-callout p { font-size: var(--text-body); color: var(--color-text-secondary); margin: 0; }
@media (prefers-reduced-motion: reduce) {
  * { transition-duration: .01ms !important; animation-duration: .01ms !important; }
}
```
