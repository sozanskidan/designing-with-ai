# Leica — Web Design Language
> Source: https://leica-camera.com/en-int (scraped) · /en-int/photography/cameras/m (scraped) · /en-int/photography/cameras/q (scraped) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped — the Drupal build aggregates/hashes its CSS, so hex values and the webfont name are reconstructed

## 1. Design Philosophy
Leica-camera.com behaves like a gallery catalogue: a white/neutral canvas, restrained monochrome UI, and the famous red dot used as the single point of color. The site (Drupal-based, scraped) is organized as a deep, thumbnail-rich mega-menu spanning ten business areas — Photography, Sport Optics, Home Cinema, Watches, Mobile, Eyecare, Brand Collection, Experience Leica, Company, Service — so navigation itself is the primary design surface. Product presentation borrows from the cameras: matte blacks, metal greys ("Metal Gray" is literally a product colorway), precise Title Case labels, terse alphanumeric product names ("Q3 43", "SL3-P", "M EV1" — all scraped), and large uncluttered product photography. Copy "emphasizes craftsmanship and photographic capability rather than technical specs alone" (scraped observation). Everything communicates German precision and heritage; nothing is playful or loud.

## 2. Color
Hex values (inferred) unless noted — reconstructed from observed rendering; roles and usage patterns are scraped.

### 2.1 Core palette
| Role | Value | Notes |
|---|---|---|
| Background / canvas | `#FFFFFF` | white throughout commerce + nav sheets |
| Surface / alt section | `#F4F4F4` | light neutral panels, mega-menu group backgrounds |
| Surface deeper | `#EAEAEA` | image placeholder / thumbnail wells |
| Text primary | `#1A1A1A` | near-black |
| Text secondary | `#6E6E6E` | spec lines, meta, breadcrumbs |
| Text tertiary / disabled | `#9B9B9B` | inactive filters, placeholder |
| Accent — Leica red | `#E20612` | documented brand red (Pantone 485-family); logo dot, active indicators, notification badges — nothing else |
| Accent hover | `#C00510` | darkened red for hover on red elements |
| Dark sections / footer | `#0F0F0F`–`#1A1A1A` | black editorial bands, footer |
| Text on dark | `#FFFFFF` / `#B3B3B3` | primary / secondary |
| Borders / hairlines | `#E0E0E0` | 1px dividers between mega-menu groups (dividers scraped) |
| Border strong | `#1A1A1A` | button outlines, focused inputs |

### 2.2 States & overlays
| Role | Value | Notes |
|---|---|---|
| Button primary hover | `#333333` | black lightens (inferred) |
| Button inverse hover | `#F4F4F4` | white button darkens a step |
| Overlay scrim | `rgba(0,0,0,.4)` | behind modals/menus on mobile |
| Image hover veil | `rgba(0,0,0,.06)` | subtle darken on tiles |
| Focus ring | `#1A1A1A` 2px | monochrome focus (inferred) |
| Error | `#D0021B` | forms only |
| Success | `#2E7D32` | forms only |
- **No gradients** in UI — flat fields only; photography provides all depth (observed).
- **Dark mode:** none. The site is permanently light with black editorial bands (scraped — no theme-color meta, no scheme switch).

## 3. Typography
- **Family:** proprietary corporate grotesque (Helvetica-class). Exact webfont name not exposed in scraped markup — **(inferred)** stack: `'LeicaWeb','Helvetica Neue',Helvetica,Arial,sans-serif`.
- **Weights:** 400 body · 500 UI/nav · 700 headings and product names (inferred).
- **Case conventions (scraped):** Title Case for nearly everything — nav ("All Products", "Our Cameras", "Camera Portfolio", "Photographic Styles"), section headings, buttons ("Find a store", "Online Store", "Test Drive", "Trade-In", "Financing Service"). Sentence case only in descriptive body copy ("Explore rangefinder photography with digital and analog Leica M-Cameras.").
- **Product names:** terse alphanumerics, sometimes full caps ("LEICA SL3-P" scraped), given generous whitespace.

### Type scale (inferred sizes; roles scraped)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | 56–64px / 3.5–4rem | 700 | 1.1 | 0 | campaign heroes |
| H1 | 40–48px | 700 | 1.15 | 0 | page titles |
| H2 | 32px | 700 | 1.2 | 0 | section bands |
| H3 | 24px | 500 | 1.3 | 0 | product family titles |
| Product name | 18–20px | 700 | 1.3 | 0 | cards, menu items |
| Body | 16px | 400 | 1.6 | 0 | descriptions |
| UI / nav | 14px | 500 | 1.4 | +0.01em | mega-menu links |
| Meta / caption | 12–13px | 400 | 1.5 | +0.02em | spec lines, legal |
| Overline label | 11px CAPS | 500 | 1.3 | +0.08em | eyebrow labels ("M-SYSTEM") |
- Responsive: display steps down ~30% below 768px (inferred).
- Font loading: woff2, `font-display: swap` (standard Drupal theme practice, inferred). Tabular figures for spec tables (inferred).

## 4. Layout & Grid
- **Max width:** content ~1440–1600px centered; full-bleed hero imagery (inferred).
- **Grid:** 12-col, 24px gutters desktop / 16px mobile; product grids 3–4 col desktop, 2 col tablet, 1–2 col mobile (inferred).
- **Breakpoints:** ~768 / 1024 / 1280px (inferred; Drupal responsive image styles scraped: `menu_thumbnail_desktop`, `menu_product_thumbnail_desktop` imply desktop/mobile style forks).
- **Spacing scale (inferred):** 8-based — 8 / 16 / 24 / 40 / 64 / 96px; section bands 80–120px vertical padding.
- **Header (scraped anatomy):** "Skip to main content" a11y link → logo home link → mega-menu categories → search form → account ("Open Flying Account card") → store finder → prominent "Online Store" button. Height ~64–72px, sticky (inferred).
- **Mega-menu (scraped):** the signature layout — full-width white sheet; 3-level hierarchy (primary category → grouped columns separated by hairline dividers → items); every product family carries a thumbnail preview image; groups like Products → (All Products, Our Cameras, Camera Portfolio, Camera Types, Photographic Styles, Lenses, Accessories, Pre-Owned, Apps).
- **Page structure (scraped/observed):** hero banner → product-family tiles → editorial/campaign bands (often black) → stores/Akademie/experience content → newsletter → footer.
- **Footer:** multi-column sitemap mirroring nav taxonomy (Products, Experience Leica, Company, Service), legal row, country/language selector (inferred from scraped taxonomy).
- **z-index (inferred):** header 100 · mega-menu 90 (under header) · search overlay 110 · modal 1000.

### Responsive & accessibility behaviors
- Mobile nav collapses the mega-menu into an accordion drawer with the same thumbnail rows; search becomes a full-screen overlay (inferred from Drupal desktop/mobile image-style forks scraped).
- "Skip to main content" link is the first focusable element (scraped); `HandheldFriendly` / `MobileOptimized` metas present (scraped).
- Product grids: 4 → 2 → 1–2 columns across breakpoints; hero type steps down ~30%; header keeps only logo, search, cart, burger on mobile (inferred).
- Touch targets ≥ 44px in nav rows and buttons (inferred standard).

## 5. Components
### Buttons
| Property | Primary | Secondary | Text link |
|---|---|---|---|
| Fill | `#1A1A1A` black | `#FFFFFF` | none |
| Text | `#FFFFFF`, 14–15px, 500, Title Case | `#1A1A1A` | `#1A1A1A`, underline on hover |
| Border | none | 1px `#1A1A1A` | — |
| Radius | 0–2px (near-sharp) | 0–2px | — |
| Padding | 14px 28px | 14px 28px | — |
| Hover | `#333333`, 200ms ease-out | fill `#1A1A1A`, text white (inversion) | underline slides in |
| Active | `#000000` | held inversion | — |
| Focus | 2px outline `#1A1A1A`, offset 2px | same | same |
| Disabled | `#C7C7C7` fill | `#C7C7C7` border/text | 50% opacity |
- Scraped labels: "Online Store", "Find a store", "Explore Cameras", "Contact", "Downloads", "Test Drive", "Trade-In", "Financing Service". (Styling inferred, labels exact.)

### Mega-menu panel (scraped anatomy)
Full-width sheet under header; columns of grouped links with 1px `#E0E0E0` dividers; items = 14px/500 label, optional thumbnail (Drupal style `menu_product_thumbnail_desktop`, WebP); hover: label darkens + thumbnail veil; opens on hover/click with ~250ms fade-slide (motion inferred).

### Product cards (scraped anatomy)
Product image on neutral background → product name ("M EV1", "SL3-P") → optional one-line descriptor → link. No visible price in menus; price appears on shop tiles. Minimal chrome: no border, no shadow, hover = image veil + name underline (inferred).

### Hero
Full-width photograph or black band; eyebrow overline (caps, tracked) → Title Case headline → single CTA. Text left-aligned or centered per campaign (inferred composition; content types scraped).

### Inputs / search
Persistent header search form (scraped); 1px `#E0E0E0` border or underline style, 0 radius, focus border `#1A1A1A`; floating or top-aligned labels; newsletter email + submit inversion button (inferred styling).

### Badges
"New" / "Pre-Owned" tags: rectangular, 11px caps, black on white or red `#E20612` for alerts (inferred).

### Footer
Dark `#0F0F0F`; columns of 13px links; social row; country selector; legal microtext 12px `#B3B3B3` (inferred composition from scraped taxonomy).

## 6. Imagery & Iconography
- Two registers: (1) pristine studio product photography — cameras on white/graphite, every dial legible, "Metal Gray" materiality; (2) authentic reportage photography *taken with* Leica gear for editorial bands — black-and-white or muted-color documentary style (register split observed; image pipeline scraped).
- Image pipeline (scraped): Drupal image styles `styles/{style_name}/public/{year-month}/{file}`, WebP variants, responsive per-context crops, descriptive filenames, preloading of menu thumbnails.
- Icons: thin-line monochrome (search, account, store pin, cart), ~1.5px stroke, 20–24px grid (inferred). The red dot logo is the only colored mark on most pages.
- No illustration anywhere; photography carries all emotion. Product tiles keep consistent scale/angle across a family (observed).

## 7. Motion & Interaction
- **Doctrine:** conservative, near-editorial stillness — motion never competes with photography (observed).
- **Mega-menu:** fade + 8px slide-down, ~250ms ease-out; close ~200ms; hover-intent delay ~100ms before opening (inferred).
- **Hover states:** image zoom 1.03–1.05 over 400–500ms ease-out on tiles; text links underline; buttons invert black↔white at 200ms (inferred).
- **Scroll reveals:** gentle fade + 20–30px translate-up on editorial bands, 500–600ms, staggered ~100ms per tile (inferred).
- **Carousels:** product-family sliders with arrow controls, 400ms ease slide (inferred).
- **Hero:** occasional slow ken-burns drift on campaign imagery (inferred).
- **Reduced motion:** no documented handling — assume opacity-only fallback (inferred).
- Easing family: `cubic-bezier(.25,.46,.45,.94)` (ease-out-quad-class) fits observed feel (inferred).

## 8. Voice & Copy
- Tone (scraped observation): "Professional, aspirational, heritage-focused. Copy emphasizes craftsmanship and photographic capability rather than technical specs alone."
- Title Case discipline for headlines/nav; sentence case body.
- Scraped examples: **"Digital M-Cameras with Rangefinder"**, **"Explore rangefinder photography with digital and analog Leica M-Cameras. Unmatched quality and german precision for unique captures."**, **"Global manufacturer of high-end cameras and lenses, observation, and fine mechanical instruments..."**, nav items **"Experience Leica"**, **"Photographic Styles"**.
- Microcopy functional and courteous: "Find a store", "Skip to main content", "Open Flying Account card" (scraped).
- Service vocabulary is premium-ownership: "Test Drive", "Trade-In", "Financing Service" (scraped) — cameras sold like cars.
- Precision vocabulary: "german precision", "Unmatched quality"; no exclamation marks.

## 9. Signature Moves
- The red dot: `#E20612` appears essentially once per viewport (logo); everything else strictly monochrome.
- Encyclopedic mega-menu with thumbnail imagery for every product family, columned and divided by 1px hairlines.
- "Metal Gray" materiality: blacks/greys that echo camera bodies; UI chrome feels machined.
- Title Case discipline across nav, headings, buttons, and product names.
- Terse alphanumeric product names ("M11", "SL3-P", "Q3 43") set bold with breathing room.
- Black editorial bands alternating with white commerce sections.
- Reportage photography shot on Leica as brand proof, opposite sterile studio product shots.
- Persistent header "Online Store" button separating brand experience from shop.
- Car-dealer service language for cameras: Test Drive, Trade-In, Financing.

## 10. Emulation Tokens
```css
:root {
  /* ---- color (hex values inferred; roles scraped) ---- */
  --color-bg: #ffffff;
  --color-surface: #f4f4f4;
  --color-surface-deep: #eaeaea;
  --color-bg-dark: #0f0f0f;
  --color-text: #1a1a1a;
  --color-text-secondary: #6e6e6e;
  --color-text-tertiary: #9b9b9b;
  --color-text-on-dark: #ffffff;
  --color-text-on-dark-secondary: #b3b3b3;
  --color-accent: #e20612;            /* Leica red — documented brand color */
  --color-accent-hover: #c00510;
  --color-border: #e0e0e0;
  --color-border-strong: #1a1a1a;
  --color-btn-hover: #333333;
  --color-disabled: #c7c7c7;
  --color-error: #d0021b;
  --color-success: #2e7d32;
  --overlay-scrim: rgba(0,0,0,.4);
  --overlay-image-hover: rgba(0,0,0,.06);
  --shadow-menu: 0 8px 24px rgba(0,0,0,.08);
  /* ---- typography (webfont name inferred) ---- */
  --font-sans: 'LeicaWeb','Helvetica Neue',Helvetica,Arial,sans-serif;
  --font-weight-body: 400; --font-weight-ui: 500; --font-weight-heading: 700;
  --text-display: clamp(2.5rem, 4vw + 1rem, 4rem);
  --text-h1: clamp(2.25rem, 3vw + 1rem, 3rem);
  --text-h2: 2rem;
  --text-h3: 1.5rem;
  --text-product: 1.125rem;
  --text-body: 1rem;
  --text-ui: .875rem;
  --text-caption: .8125rem;
  --text-overline: .6875rem;          /* caps, tracked */
  --tracking-overline: .08em;
  --leading-heading: 1.15; --leading-body: 1.6;
  /* ---- layout ---- */
  --radius: 0px; --radius-sm: 2px;
  --space-1: 8px; --space-2: 16px; --space-3: 24px; --space-4: 40px;
  --space-5: 64px; --space-6: 96px; --space-section: 112px;
  --max-width: 1520px;                /* (inferred) */
  --gutter: 24px;
  --header-height: 68px;
  /* breakpoints (inferred): 768 / 1024 / 1280 */
  --z-megamenu: 90; --z-header: 100; --z-search: 110; --z-modal: 1000;
  /* ---- motion (inferred) ---- */
  --ease-out: cubic-bezier(.25,.46,.45,.94);
  --duration-fast: .2s; --duration-base: .25s; --duration-reveal: .5s;
}
```

```css
/* Leica primary + inverse button, all states (labels scraped, styling inferred) */
.btn-primary {
  font: 500 .9375rem/1 var(--font-sans);
  color: #fff; background: var(--color-text);
  border: 1px solid var(--color-text); border-radius: var(--radius-sm);
  padding: 14px 28px; cursor: pointer; text-transform: none; /* Title Case in markup */
  transition: background var(--duration-fast) var(--ease-out);
}
.btn-primary:hover  { background: var(--color-btn-hover); }
.btn-primary:active { background: #000; }
.btn-primary:focus-visible { outline: 2px solid var(--color-border-strong); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-disabled); border-color: var(--color-disabled); }
.btn-outline {
  background: #fff; color: var(--color-text);
  border: 1px solid var(--color-border-strong); border-radius: var(--radius-sm);
  padding: 14px 28px;
  transition: background var(--duration-fast) var(--ease-out),
              color var(--duration-fast) var(--ease-out);
}
.btn-outline:hover { background: var(--color-text); color: #fff; } /* inversion */
```

```css
/* Mega-menu product item (anatomy scraped) */
.menu-item {
  display: grid; grid-template-columns: 56px 1fr; gap: 12px; align-items: center;
  padding: 8px 0; border-bottom: 1px solid var(--color-border);
}
.menu-item img { width: 56px; aspect-ratio: 4/3; object-fit: contain;
  background: var(--color-surface); }
.menu-item span { font: 500 var(--text-ui)/1.4 var(--font-sans); color: var(--color-text); }
.menu-item:hover span { text-decoration: underline; }
```

```css
/* Signature effect: red-dot accent discipline — monochrome page, one red mark */
.logo-dot {
  inline-size: 44px; block-size: 44px; border-radius: 50%;
  background: var(--color-accent); color: #fff; display: grid; place-items: center;
  font: 700 .625rem/1 var(--font-sans); letter-spacing: .02em; /* "LEICA" */
}
.editorial-band { /* black band between white commerce sections */
  background: var(--color-bg-dark); color: var(--color-text-on-dark);
  padding-block: var(--space-section);
}
.editorial-band .overline {
  font-size: var(--text-overline); letter-spacing: var(--tracking-overline);
  text-transform: uppercase; color: var(--color-text-on-dark-secondary);
}
/* rule: --color-accent may appear at most once per viewport, never on buttons */
```
