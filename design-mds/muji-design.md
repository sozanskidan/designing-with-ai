# MUJI — Web Design Language
> Source: https://www.muji.com (JP net store), https://www.muji.us (US store), brand red documentation via encycolorpedia/brandcolorcode/colorswall for #7f0019 · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
MUJI's web presence is "no-brand" (mujirushi) retail minimalism: white space, unretouched product photography, and typography that recedes so the objects speak. The only persistent brand element is the deep bordeaux red (`#7f0019`, documented) of the logotype; everything else is white, warm gray, and near-black — even links and buttons stay utilitarian. Layout is a calm merchandising machine: full-width photo banners over strict rows of 4–6 identical product cards, denser than Western minimal sites because retail efficiency matters more than air. There is almost no motion, no gradients, no shadows — pages behave like well-set paper catalogs, mirroring the brand's ethos of simplicity ("kanketsu") and sufficiency ("this will do" rather than "this is best"). Copy names things plainly ("The Everyday Hoodie") instead of selling loudly; the design goal is a store shelf, not a campaign.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background (page) | `#ffffff` | Flat white throughout |
| Surface (alt bands, promo strips) | `#f5f4f2` | Very light warm gray (inferred shade) |
| Surface (photo backdrop) | `#f7f6f4`–`#efedeb` | Product-shot neutrals bleed into page (inferred) |
| Text primary | `#3c3c3c` | Dark gray body/product names (inferred exact) |
| Text strong | `#000000` | Prices, headings when emphasized |
| Text secondary | `#7d7d7d` | Meta, captions (inferred) |
| Text disabled | `#b0b0b0` | Sold-out labels (inferred) |
| Brand accent | `#7f0019` | MUJI bordeaux red — logo, rare key highlights (documented) |
| Brand tints | `#8c1a30` / `#993347` | Documented lighter steps of the brand red (colorswall palette) |
| Utility links (JP store) | standard blue `#0066c0`-class | Observed blue text links on muji.com (shade inferred) |
| Sale/notice red | `#b12704`-class | Price-off flags (inferred) |
| Border | `#e0e0e0` | 1px hairlines: cards, tables, nav dividers (inferred) |
| Border strong | `#cccccc` | Input strokes (inferred) |

### State variants (inferred; MUJI keeps states nearly invisible)
| Token | Default | Hover | Active |
|---|---|---|---|
| Dark button | `#3c3c3c` fill, white text | `#000000` | `#000000` |
| Outline button | white, 1px `#3c3c3c` border | inverts to dark fill/white text | — |
| Text link | `#3c3c3c` | underline appears | — |
| Product card | plain | alternate image swap or image opacity 0.92 | — |
| Nav category | `#3c3c3c` | underline 1px | — |

### Overlays & alpha
- Essentially none; banners place text on calm image areas or on white margins rather than scrims. Mobile menu scrim `rgba(0,0,0,0.4)` (inferred).
- No gradients, no shadows anywhere except a faint dropdown shadow `0 2px 8px rgba(0,0,0,0.08)` (inferred). No dark mode.

## 3. Typography
- **Latin:** Helvetica-family neutrality (documented brand association; the sites rely on system-grade stacks rather than webfonts). Stack: `"Helvetica Neue", Helvetica, Arial, sans-serif`.
- **Japanese (muji.com):** `"Hiragino Kaku Gothic ProN", "Yu Gothic", Meiryo, sans-serif` (inferred standard JP stack; no custom font loading observed).
- Loading: no display webfonts — system fonts are the brand statement ("no-brand" typography). Zero FOUT by design.
- Weights: 400 for nearly everything; 600–700 only for prices, section heads, promo titles. Hierarchy via size + spacing, not weight contrast.
- Figures: lining; prices set slightly bolder than product names; JP store shows tax-inclusive notation in smaller size (scraped convention: 消費税込).

### Type scale (inferred from renders; heading copy scraped)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Hero/banner title | 28–40px | 400–600 | 1.3 | 0 | "Blueprint to Success" |
| Section heading | 20–24px | 600 | 1.4 | +0.02em | "Discover What's New" / 新商品 |
| Category tile label | 16–18px | 400 | 1.4 | 0 | "Pens & Pencils" |
| Product name | 14–15px | 400 | 1.5 | 0 | 1–2 quiet lines |
| Price | 14–16px | 600 | 1.4 | 0 | Below name |
| Nav category | 14–15px | 400 | 1 | 0 | Mega-menu row |
| Caption/meta | 12px | 400 | 1.5 | 0 | Shipping notes, tax notes |
| Legal | 11–12px | 400 | 1.6 | 0 | Footer |

- JP text runs roomier: body line-height ~1.7–1.8 (inferred JP convention followed on muji.com).
- Responsive: hero 40→24px on mobile; product grid text unchanged (inferred).
- Casing: short title-style phrases on US site ("The Everyday Hoodie"); JP site uses plain noun headings (新商品, 特集, 読みもの). Never all-caps shouting, no letter-spacing effects beyond small labels.

## 4. Layout & Grid
- **Containers:** center column ≈ 1080–1280px with white margins (inferred); hero banners full-width/full-bleed on muji.us.
- **Product grid:** 4–6 cards/row desktop → 3 tablet → 2 mobile; equal square image boxes; gutters 12–16px (inferred). Category tiles 4-up (scraped: Pens & Pencils, Acrylic Storage, Office Storage, Bags & Backpacks).
- **Spacing scale** (inferred, 8-based but compact): 4, 8, 12, 16, 24, 32, 48, 64, 80px. Section rhythm 48–80px — denser than Western minimal sites.
- **Breakpoints** (inferred): 600px, 960px, 1200px.
- **Header stack (scraped structure):** utility strip (app link / free-shipping promo banner) → logo row (bordeaux logotype, search field, account/cart icons) → full-width category mega-menu (JP: 7 categories — 婦人/紳士/こども/化粧品/生活雑貨/家具・家電/食品; US: Sale, New, Women, Men, Accessories, Stationery, Travel, Furniture, Home, Health & Beauty, Food) with dropdowns of 10–15 plain text links each.
- **Footer (scraped):** dense link stacks — Get Help, About, Top Searches, store locator; JP adds related services (hotels, books, cafés, MUJI passport app); social row (Instagram, X, Facebook, TikTok, LINE, YouTube — scraped) ; country/region selector (37+ regions, scraped); legal row.
- **Z-index** (inferred): content 0 → sticky header 100 → mega-menu 200 → cart drawer/modal 1000.

## 5. Components
### Buttons
- Primary: rectangle, radius 0–4px, solid `#3c3c3c`/black fill, white 14–15px label, padding ~12px 32px; hover deepens to `#000000`; focus 2px dark outline; disabled `#b0b0b0` (inferred states). Small and unassuming ("Shop Now" — scraped label).
- Secondary/outline: white fill, 1px `#3c3c3c` border; hover inverts to dark fill.
- Text links: quiet gray-black; hover underline only.

### Product card (signature)
- Anatomy: square photo on pure white (no border, no shadow, no radius — the white field *is* the card) → product name 14–15px in 1–2 lines → price 600-weight → optional small tag (New / Sale / colors count).
- States: hover swaps to alternate image or dims to ~0.92 opacity; name never changes style; whole card clickable (inferred behaviors; card anatomy scraped).

### Hero / campaign banner
- Full-width photograph, short title (scraped: "The Everyday Hoodie", "A Comfortable Start"), small button or text link; rotating carousel with minimal dot pagination on JP home (scraped: seasonal campaign carousel).

### Category tile
- Photo + label, 4-up row; label centered beneath or overlaid on calm image area; hairline border optional.

### Mega-menu
- Full-width dropdown panel, white, faint shadow, exhaustive plain-text subcategory columns (10–15 links each, scraped counts); no imagery inside menus on JP store, occasional featured-collection thumb on US (scraped structure).

### Service/info boxes (JP)
- 1px `#e0e0e0` bordered utility boxes with small icon + text (delivery, MUJI passport, store services) (scraped presence).

### Inputs / search
- Rectangular, 1px `#cccccc` border, radius 0–4px, 14–15px text, gray placeholder; focus darkens border to `#3c3c3c`; search field prominent in header row (inferred styling; placement scraped).

### Badges
- Tiny text labels ("New", "Sale", 限定) in plain red/gray text or hairline boxes — never filled pills (inferred).

## 6. Imagery & Iconography
- Product photography: flat, even, shadow-soft shots on pure white or calm natural interiors; colors muted and true; consistent square crops so grids align perfectly.
- Lifestyle imagery: quiet domestic scenes, natural light, beige/wood/linen palettes; people incidental, mid-use, never posed at camera.
- Iconography: thin-line utility glyphs only (search, cart, user, globe, store pin); no decorative icon system; no illustration — text and photography only.
- The bordeaux logotype is the sole persistent color element; JP store adds the MUJI passport app badge and LINE icon (scraped).
- Editorial content ("読みもの" reading section, scraped) uses the same photography language with longer captions — catalog-as-magazine.

## 7. Motion & Interaction
Philosophy: catalog stillness. Motion budget approaches zero; anything that moves is functional. (All timings inferred.)

| Animation | Trigger | Duration | Easing | Description |
|---|---|---|---|---|
| Hero carousel advance | auto (~5s) / dots | 400–500ms | ease-in-out | fade or lateral slide; minimal pagination dots |
| Product image swap | hover | 150–250ms | ease | primary → alternate shot crossfade |
| Link hover | hover | 100–150ms | ease | underline appears; color unchanged |
| Button hover | hover | 150ms | ease | fill deepens / outline inverts |
| Mega-menu open | hover/click | 150–200ms | ease-out | panel fades/drops with faint shadow |
| Cart drawer | click | 250ms | ease-in-out | slide-in from right |
| Back-to-top | click | 400ms | ease-in-out | smooth scroll |
| Scroll reveals | — | none | — | no scroll-triggered animation (observed stillness) |
| Parallax / video heroes | — | none | — | static photography only |
| Page transitions | route | none | — | plain loads |

- No stagger choreography; grids render at once like a printed page.
- Reduced motion: effectively native — the site already meets `prefers-reduced-motion` expectations; carousel should stop auto-advance under the media query (inferred).

## 8. Voice & Copy
- Quiet, descriptive, benefit-through-simplicity. Product names are generic-descriptive by design — "no-brand" naming as brand voice. US site allows light lifestyle framing; JP site is almost purely functional labels.
- No exclamation marks, no superlatives; reasons ("because") over hype. Prices and materials do the persuading.
- Microcopy utilitarian: "Shop Now", "Store Locator", free-shipping-threshold notices (scraped: newsletter 10% offer, free shipping banner).
- Real examples (scraped):
  - "Blueprint to Success" (muji.us back-to-school hero)
  - "The Everyday Hoodie" / "A Comfortable Start" (muji.us)
  - "新商品" (New Products) / "特集" (Special Features) / "読みもの" (Readings) — muji.com section heads

## 9. Signature Moves
- Single brand color: bordeaux `#7f0019` confined to the logotype while the entire page stays white/gray/black.
- White as the primary "material" — cards defined by whitespace, not borders, shadows, or radii.
- System-font Helvetica-class neutrality; typography deliberately unbranded, no webfonts.
- Dense-but-orderly merchandising grid (4–6 up, perfect square crops) beneath calm full-width photo banners.
- Generic-descriptive product naming ("The Everyday Hoodie") as voice.
- Flat, true-color product photography on white; lifestyle shots in linen/wood palettes.
- Exhaustive plain-text mega-menu (10–15 links per category) — completeness as honesty.
- Near-total motion abstinence: the page as printed catalog.

## 10. Emulation Tokens
```css
:root {
  /* color — brand red documented; neutrals inferred */
  --color-bg: #ffffff;
  --color-surface: #f5f4f2;
  --color-surface-photo: #f7f6f4;
  --color-ink: #3c3c3c;
  --color-ink-strong: #000000;
  --color-text-secondary: #7d7d7d;
  --color-text-disabled: #b0b0b0;
  --color-brand: #7f0019;            /* documented MUJI red */
  --color-brand-tint-1: #8c1a30;     /* documented palette step */
  --color-brand-tint-2: #993347;     /* documented palette step */
  --color-link-utility: #0066c0;     /* inferred JP-store link blue */
  --color-sale: #b12704;             /* inferred */
  --color-border: #e0e0e0;           /* inferred */
  --color-border-strong: #cccccc;    /* inferred */
  --color-scrim: rgba(0, 0, 0, 0.4); /* inferred */
  --shadow-menu: 0 2px 8px rgba(0, 0, 0, 0.08); /* inferred; the only shadow */

  /* type — system stacks by design */
  --font-sans: "Helvetica Neue", Helvetica, Arial, sans-serif;
  --font-sans-jp: "Hiragino Kaku Gothic ProN", "Yu Gothic", Meiryo, sans-serif; /* inferred */
  --text-hero: clamp(1.5rem, 3.5vw, 2.5rem);
  --text-h2: 1.375rem;
  --text-tile: 1.0625rem;
  --text-product: 0.9375rem;
  --text-price: 0.9375rem;    /* weight 600 */
  --text-caption: 0.75rem;
  --text-legal: 0.6875rem;
  --lh-body: 1.5;
  --lh-body-jp: 1.75;
  --ls-heading: 0.02em;

  /* radius — effectively square */
  --radius-none: 0;
  --radius-xs: 2px;
  --radius-sm: 4px;

  /* spacing (inferred, compact retail rhythm) */
  --space-1: 4px;  --space-2: 8px;  --space-3: 12px; --space-4: 16px;
  --space-5: 24px; --space-6: 32px; --space-7: 48px; --space-8: 64px;
  --space-9: 80px;

  /* layout — breakpoints (inferred): 600 / 960 / 1200px */
  --max-width: 1200px;
  --gutter: 16px;
  --grid-products-desktop: repeat(5, 1fr);
  --grid-products-tablet: repeat(3, 1fr);
  --grid-products-mobile: repeat(2, 1fr);
  --grid-gap: 14px;

  /* z-index (inferred) */
  --z-header: 100; --z-megamenu: 200; --z-drawer: 1000;

  /* motion — near zero (inferred) */
  --ease-standard: ease-in-out;
  --duration-tap: 150ms;
  --duration-base: 200ms;
  --duration-slide: 450ms;
}
@media (prefers-reduced-motion: reduce) {
  .carousel { animation: none; }       /* stop auto-advance */
  * { transition-duration: 1ms !important; }
}
```

### Buttons (with states)
```css
.btn-primary {
  font: 400 0.9375rem/1 var(--font-sans);
  color: #fff;
  background: var(--color-ink);
  padding: 12px 32px;
  border: 0;
  border-radius: var(--radius-xs);
  cursor: pointer;
  transition: background-color var(--duration-tap) var(--ease-standard);
}
.btn-primary:hover  { background: var(--color-ink-strong); }
.btn-primary:focus-visible { outline: 2px solid var(--color-ink-strong); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-text-disabled); cursor: default; }

.btn-outline {
  font: 400 0.9375rem/1 var(--font-sans);
  color: var(--color-ink);
  background: #fff;
  border: 1px solid var(--color-ink);
  padding: 12px 32px; border-radius: var(--radius-xs);
  transition: all var(--duration-tap) var(--ease-standard);
}
.btn-outline:hover { background: var(--color-ink); color: #fff; }
```

### Product card (chromeless)
```css
.product-card { display: block; text-decoration: none; }   /* no border/shadow/radius */
.product-card .media { aspect-ratio: 1; background: var(--color-surface-photo); overflow: hidden; }
.product-card img { width: 100%; height: 100%; object-fit: cover;
  transition: opacity var(--duration-base) var(--ease-standard); }
.product-card:hover img { opacity: 0.92; }                 /* or alternate-image swap */
.product-card .name {
  font: 400 var(--text-product)/var(--lh-body) var(--font-sans);
  color: var(--color-ink); margin: var(--space-2) 0 2px;
  display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;
}
.product-card .price { font: 600 var(--text-price)/1.4 var(--font-sans); color: var(--color-ink-strong); }
.product-card .tag { font: 400 var(--text-caption)/1 var(--font-sans); color: var(--color-sale); }
```

### Signature effect — unadorned merchandising grid under a calm banner
```css
.banner { position: relative; }
.banner img { display: block; width: 100%; }
.banner .title {
  position: absolute; left: 6%; bottom: 12%;
  font: 400 var(--text-hero)/1.3 var(--font-sans);
  color: var(--color-ink-strong);              /* on a calm, light image area — no scrim */
}
.product-grid {
  max-width: var(--max-width); margin: var(--space-7) auto;
  padding: 0 var(--gutter);
  display: grid; grid-template-columns: var(--grid-products-desktop); gap: var(--grid-gap);
}
@media (max-width: 960px) { .product-grid { grid-template-columns: var(--grid-products-tablet); } }
@media (max-width: 600px) { .product-grid { grid-template-columns: var(--grid-products-mobile); } }
.section-head {
  font: 600 var(--text-h2)/1.4 var(--font-sans);
  letter-spacing: var(--ls-heading); color: var(--color-ink-strong);
  max-width: var(--max-width); margin: var(--space-8) auto var(--space-4);
}
```
