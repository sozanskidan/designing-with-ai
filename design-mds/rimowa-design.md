# Rimowa — Web Design Language
> Source: https://www.rimowa.com · https://www.rimowa.com/us/en/luggage/original/cabin/item/92553004.html · https://abcdinamo.com/custom/bespoke-typeface-rimowa · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Rimowa.com is engineered luxury: a near-monochrome white/black canvas where full-bleed product photography and video carry all the color, and typography behaves like machined hardware. Everything references the grooved-aluminum suitcase — precise vertical rhythm, hairline rules, and a bespoke grotesque (RIMOWA Grotesk, Dinamo, 2020) whose curves were literally drawn from the case silhouette. The site suppresses ornament entirely: no gradients, no shadows, no rounded corners; hierarchy comes from scale, tracking, and uppercase. It reads as a heritage German industrial brand ("A GERMAN LEGACY OF OVER 125 YEARS") filtered through LVMH retail polish. The commerce chrome (mega-menu, buybox, accordions) is deliberately quiet so campaign media feels cinematic.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | Page ground; imagery supplies all color |
| Surface / alt section | `#F7F7F7` (inferred) | Light grey bands behind product rails, PDP gallery ground |
| Surface / footer | `#FFFFFF` + `#E5E5E5` top rule (inferred) | Footer stays white, separated by hairline |
| Text primary | `#000000` | Meta theme-color is `#000000` (scraped) |
| Text secondary | `#6E6E6E` (inferred) | Microcopy: "Ideal for 3 to 4 days of travel", delivery estimates |
| Text tertiary / legal | `#9B9B9B` (inferred) | Footer fine print, form helper text |
| Accent / CTA fill | `#000000` | Black IS the accent; solid black CTAs |
| CTA hover | invert → `#FFFFFF` fill, `#000` border/label (inferred) | Alternative: lift to `#2B2B2B` |
| CTA active | `#1A1A1A` (inferred) | Pressed state |
| Inverse text | `#FFFFFF` | On black buttons and over hero video |
| Hero scrim | `rgba(0,0,0,0.25)` (inferred) | Bottom-up gradient over video for legibility |
| Overlay (modal/menu) | `rgba(0,0,0,0.4)` (inferred) | Behind quick-view modals, mobile menu |
| Borders / rules | `#E5E5E5` (inferred) | Hairline 1px dividers, accordion separators |
| Border strong / focus | `#000000` (inferred) | Active input underline, selected swatch ring |
| Error | `#C0392B` (inferred) | Form validation |
| Stock state | `#000000` text "In Stock" (scraped copy) | Rimowa avoids green; availability stays monochrome |
| Campaign Ink Blue | `#1B2A4A` (inferred) | Seasonal shade ("Original Ink blue") — editorial only |
| Shell swatches | Silver `#C9CDD1` · Titanium `#8E8A80` · Black `#141414` · Ink `#1B2A4A` (inferred) | Circular material dots |

No dark mode. No decorative gradients — alpha limited to photographic scrims and overlay backdrops (inferred).

## 3. Typography
- **Primary family:** `RIMOWA Grotesk` — bespoke grotesque by Dinamo with Commission Studio, 2020 rebrand (documented, fetched from Dinamo). Industrial + humanistic; open strokes, angular cuts; characters take inspiration from the suitcase's curves; ancestry in early German grotesques (Record Gothic, Venus, Monotype Grotesque — documented).
- **Stack:** `"RIMOWA Grotesk", "Helvetica Neue", Helvetica, Arial, sans-serif` (fallbacks inferred)
- **Weights:** Regular 400, Medium 500, Bold 700; site leans on 400 + tracking rather than heavy weights (inferred).
- **Loading:** self-hosted woff2 via Demandware static CDN, `font-display: swap` (inferred).
- **Figures:** lining; price format `$1,550.00` — comma grouping, two decimals (scraped); use tabular figures for price alignment (inferred).

Type scale (sizes approximate/inferred; usage scraped):

| Name | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | 48–56px / 3–3.5rem | 400 | 1.1 | +0.02em | Hero statements over video |
| H1 | 40px / 2.5rem | 400 | 1.15 | +0.02em | Campaign titles ("Original Ink blue: A new permanent shade") |
| H2 | 28–32px / 1.75–2rem | 400 | 1.2 | +0.02em | Section heads ("Iconic products") |
| H3 / product title | 22–24px / 1.4rem | 400 | 1.25 | 0 | PDP model name ("Cabin", large tier) |
| Eyebrow / collection | 12px / 0.75rem | 400 | 1.4 | +0.12em CAPS | Collection tier above model ("Original") |
| Body | 14–16px / 0.9375rem | 400 | 1.5 | 0 | Descriptions, accordions |
| Price | 16–18px / 1.0625rem | 400–500 | 1.3 | 0 | `$1,550.00` near selectors |
| Button | 13–14px / 0.8125rem | 500 | 1 | +0.1em CAPS | "ADD TO CART", "DISCOVER THE COLLECTION" |
| Caption / legal | 11–12px / 0.71875rem | 400 | 1.4 | +0.08em | Footer legal, delivery microcopy |

- Responsive shift (inferred): display 56 → 32px mobile; H2 32 → 22px.
- **Case rules (scraped):** ALL CAPS for campaign declarations + CTAs ("A GERMAN LEGACY OF OVER 125 YEARS"); Title Case for editorial headlines; sentence case for support copy. Tracking increases as size decreases.

## 4. Layout & Grid
- **Container:** heroes full-bleed 100vw; inner content max ~1440px; gutters 24px mobile / 40px tablet / 64px desktop (inferred).
- **Grid:** 12-col desktop, 24px gutters; product grids 2-up mobile / 3-up tablet / 4-up desktop; editorial rows 50/50 image+text splits (inferred).
- **Breakpoints (inferred):** 544 / 768 / 1024 / 1440 px.
- **Spacing scale (inferred, 8px base):** 4, 8, 16, 24, 32, 48, 64, 96, 120. Section rhythm 80–120px desktop, 48–64px mobile.
- **Header:** two-tier. Utility bar ~32px (Ship to United States, language, account, store locator, wishlist, cart — scraped). Main bar ~64px: logo + nav New | Luggage | Bags | Accessories | Specialty | Customize | Services | Discover | RE-CRAFTED (scraped). Sticky, white, 1px bottom rule. Mega-menu: full-width panels grouped by Categories / Travel Type / Favorites / Highlights / Selection / Color / Material (scraped).
- **PDP:** two-column — gallery left ~58% (carousel, video, "Try in 3D"), sticky buybox right ~42%; accordions below ("Key Elements": TSA-Approved Locks, Flex Divider — scraped).
- **Footer:** newsletter block → 4 link columns (About RIMOWA / Support / Services / Legal) → payment icons (PayPal, Visa, MC, Amex, Discover, Diners, Apple Pay, Klarna) → social row (Instagram, YouTube, Facebook, X, LinkedIn, WeChat, Weibo) → "© 2026 RIMOWA - All rights reserved" (all scraped).
- **Z-index (inferred):** content 1 · sticky header 100 · mega-menu 200 · scrim 300 · modal 400 · toast 500.

## 5. Components
**Primary button ("ADD TO CART")**
- Rectangle, radius 0; height ~48px; padding 16px 32px; full-width in buybox.
- Label 13–14px / 500 / UPPERCASE / +0.1em.
- Default `#000` fill, `#FFF` label · Hover inverts to white fill + black border/label (inferred) · Active `#1A1A1A` · Focus-visible 2px black outline offset 2px (inferred) · Disabled `#CCC` fill (inferred).
- Transition: background/color 200ms ease.

**Secondary / ghost ("DISCOVER THE COLLECTION")**
- Transparent or white fill, 1px currentColor border, same type spec; over hero video: white border + white label; hover fills solid (inferred).

**Text links**
- Persistent 1px underline; hover thickens/fades underline (inferred). "Add to Wishlist" Title Case with heart icon (scraped).

**Header / mega-menu**
- Nav item hover opens panel (fade + translateY, ~200ms); panel white with hairline top rule; group labels 12px uppercase; cart badge = black dot + white numeral (structure scraped, styling inferred).

**Product card**
- 1:1 image on white/`#F7F7F7` → collection eyebrow → model name → price → circular swatch dots (Silver, Black, Titanium, Ink Blue — scraped). No border, no shadow. Hover: crossfade to alternate angle (inferred). Selected swatch: black ring offset 2px (inferred).

**Buybox (PDP)**
- Two-tier title (collection over model — scraped), price, "Change size" selector, swatches, "In Stock", "Expected Delivery to United States" + dates (scraped), full-width ADD TO CART, wishlist link.

**Accordions**
- Rows split by 1px `#E5E5E5`; label left, +/− right; 300ms height ease; "Read more/Read less" inside descriptions (scraped).

**Inputs**
- Underline-only: transparent field, 1px bottom border `#000`; placeholder `#9B9B9B`; focus keeps black underline, floating label; radius 0 (inferred).

**Badges**
- Rare; "RE-CRAFTED", "UNIQUE" as small uppercase text labels, not pills (names scraped, style inferred).

## 6. Imagery & Iconography
- Cinematic campaign video heroes (tarmac, hotels, travel-in-motion) with static fallbacks; assets under `/videos/homepage/2026/` (scraped).
- Studio product shots: frontal or 3/4 renders on white/light-grey seamless; grooved shell surface is the recurring brand texture.
- PDP gallery: multiple angles, detail crops (wheels, handles, TSA locks), embedded video, "Try in 3D" viewer (scraped).
- Swatches as material-accurate circles (scraped).
- Icons: minimal 1px-stroke line icons, monochrome black; payment marks flat/mono (scraped as img tags with alt text).
- Aspect ratios observed: 16:9 hero, 1:1 tiles (scraped). CDN: Demandware `/on/demandware.static/`, lazy-loaded (scraped).

## 7. Motion & Interaction
Restraint is the rule: nothing bounces, nothing overshoots. Values inferred unless noted.

| Animation | Spec |
|---|---|
| Hero video | Autoplay, muted, loop, no controls; poster fallback (scraped behavior) |
| Hero text reveal | Fade + 20px translate-up on load; 600ms `cubic-bezier(0.25,0.1,0.25,1)`; 100ms stagger eyebrow → headline → CTA |
| Mega-menu open | Opacity 0→1 + translateY(-8px→0), 200ms ease-out; close 150ms ease-in |
| Product-card hover | Image crossfade to alt angle, 300ms ease |
| Editorial tile hover | Slow zoom, scale 1→1.04, 500–700ms ease-out; text static |
| Button hover | Fill/label invert, 200ms ease |
| Accordion | max-height + opacity, 300ms ease-in-out |
| PDP gallery | Horizontal snap carousel, 350ms ease slide; thumb/dot pagination |
| Scroll reveals | Sections fade-up once at ~20% viewport threshold, 500ms decel, no re-trigger |
| Sticky header | Utility bar collapses on scroll-down, returns on scroll-up, 250ms ease |
| Swatch select | Ring instant; product image swap 200ms crossfade |

- Stagger: 80–120ms between sibling cards in a rail.
- Easing vocabulary: standard `cubic-bezier(0.25,0.1,0.25,1)`; entrances `cubic-bezier(0,0,0.2,1)`.
- Reduced motion: swap video autoplay for poster, disable translate reveals under `prefers-reduced-motion` (inferred best practice; not verified on site).

## 8. Voice & Copy
- Tone: assured, heritage-driven, engineering-flavored luxury; function stated as purpose ("functional tools for a lifetime of movement" — scraped).
- Headlines mix Title Case editorial with ALL-CAPS declarations; CTAs imperative uppercase; heritage invoked via dates/numbers.
- Real examples (scraped):
  - "Original Ink blue: A new permanent shade"
  - "Find a match for every kind of journey"
  - "A GERMAN LEGACY OF OVER 125 YEARS"
  - "Iconic products"
- Microcopy factual and logistics-precise: "Ideal for 3 to 4 days of travel", "In Stock", "Expected Delivery to United States", "Change size" (scraped).
- Button lexicon (scraped): "ADD TO CART", "CHECKOUT NOW", "BACK TO SHOP", "START SHOPPING", "VIEW MORE PRODUCTS", "DISCOVER THE COLLECTION".

## 9. Signature Moves
- Pure black-on-white chrome; product imagery is the only color.
- Bespoke RIMOWA Grotesk everywhere — industrial grotesque with suitcase-derived curves.
- Zero border-radius: sharp rectangular buttons, cards, inputs, modals.
- Tracked-out uppercase CTAs ("ADD TO CART", "DISCOVER THE COLLECTION").
- Full-bleed campaign video hero with white uppercase overlay + ghost button.
- Two-tier product naming lockup (collection eyebrow / model large).
- Circular material swatch dots under every product tile.
- Hairline 1px rules structuring accordions, nav, and footer.
- Grooved-aluminum ridge motif recurring in photography and texture.

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #ffffff;
  --color-surface: #f7f7f7;            /* inferred */
  --color-text: #000000;
  --color-text-secondary: #6e6e6e;     /* inferred */
  --color-text-tertiary: #9b9b9b;      /* inferred */
  --color-accent: #000000;
  --color-accent-hover: #2b2b2b;       /* inferred */
  --color-accent-active: #1a1a1a;      /* inferred */
  --color-inverse: #ffffff;
  --color-border: #e5e5e5;             /* inferred */
  --color-border-strong: #000000;
  --color-disabled: #cccccc;           /* inferred */
  --color-error: #c0392b;              /* inferred */
  --color-scrim: rgba(0,0,0,0.25);     /* inferred */
  --color-overlay: rgba(0,0,0,0.4);    /* inferred */
  --color-campaign-ink: #1b2a4a;       /* inferred */
  --swatch-silver: #c9cdd1; --swatch-titanium: #8e8a80;  /* inferred */
  --swatch-black: #141414;  --swatch-ink: #1b2a4a;       /* inferred */

  /* type */
  --font-sans: "RIMOWA Grotesk", "Helvetica Neue", Helvetica, Arial, sans-serif;
  --text-display: clamp(2rem, 4.5vw, 3.5rem);
  --text-h1: 2.5rem;  --text-h2: 2rem;  --text-h3: 1.4rem;
  --text-body: 0.9375rem;  --text-price: 1.0625rem;
  --text-button: 0.8125rem; --text-caption: 0.71875rem;
  --leading-display: 1.1;   --leading-body: 1.5;
  --tracking-caps: 0.1em;   --tracking-eyebrow: 0.12em;

  /* radius & shadow — brand rules */
  --radius-none: 0;
  --shadow-none: none;

  /* spacing (8px base) */
  --space-05: 4px; --space-1: 8px;  --space-2: 16px; --space-3: 24px;
  --space-4: 32px; --space-6: 48px; --space-8: 64px; --space-12: 96px;
  --space-section: 96px;               /* inferred */

  /* layout — breakpoints: 544 / 768 / 1024 / 1440 (inferred) */
  --max-width: 1440px;                 /* inferred */
  --gutter: 24px;                      /* 40–64px ≥1024 */

  /* z-index */
  --z-header: 100; --z-megamenu: 200; --z-scrim: 300; --z-modal: 400; --z-toast: 500;

  /* motion */
  --ease-standard: cubic-bezier(0.25, 0.1, 0.25, 1);   /* inferred */
  --ease-decel: cubic-bezier(0, 0, 0.2, 1);            /* inferred */
  --duration-fast: 200ms; --duration-med: 300ms; --duration-slow: 600ms;
}
```

```css
/* Rimowa primary button, all states */
.btn-rimowa {
  display: inline-block; min-height: 48px; padding: 16px 32px;
  background: var(--color-accent); color: var(--color-inverse);
  font: 500 var(--text-button)/1 var(--font-sans);
  text-transform: uppercase; letter-spacing: var(--tracking-caps);
  border: 1px solid var(--color-accent); border-radius: var(--radius-none);
  cursor: pointer;
  transition: background-color var(--duration-fast) var(--ease-standard),
              color var(--duration-fast) var(--ease-standard);
}
.btn-rimowa:hover  { background: var(--color-inverse); color: var(--color-accent); }
.btn-rimowa:active { background: var(--color-accent-active); color: var(--color-inverse); }
.btn-rimowa:focus-visible { outline: 2px solid #000; outline-offset: 2px; }
.btn-rimowa:disabled { background: var(--color-disabled); border-color: var(--color-disabled); cursor: default; }
.btn-rimowa--ghost { background: transparent; color: currentColor; border-color: currentColor; }
```

```css
/* Rimowa product card */
.card-rimowa { text-align: center; }
.card-rimowa__media { aspect-ratio: 1/1; background: var(--color-surface); position: relative; overflow: hidden; }
.card-rimowa__media img { position: absolute; inset: 0; width: 100%; height: 100%;
  object-fit: contain; transition: opacity var(--duration-med) var(--ease-standard); }
.card-rimowa__media img.alt { opacity: 0; }
.card-rimowa:hover .card-rimowa__media img.alt { opacity: 1; }
.card-rimowa__collection { margin-top: var(--space-2); font-size: 0.75rem;
  text-transform: uppercase; letter-spacing: var(--tracking-eyebrow);
  color: var(--color-text-secondary); }
.card-rimowa__name  { font-size: 1rem; margin-top: 4px; }
.card-rimowa__price { font-size: 0.9375rem; margin-top: 4px; font-variant-numeric: tabular-nums; }
.card-rimowa__swatch { width: 14px; height: 14px; border-radius: 50%; display: inline-block;
  margin: var(--space-1) 3px 0; border: 1px solid var(--color-border); }
.card-rimowa__swatch[aria-selected="true"] { box-shadow: 0 0 0 1px #fff, 0 0 0 2px #000; }
```

```css
/* Signature effect: grooved-aluminum hero band (emulates the suitcase ridges) */
.hero-rimowa {
  position: relative; min-height: 80vh; display: grid; place-items: end start;
  color: #fff; overflow: hidden; background: #111;
}
.hero-rimowa::before { /* groove texture overlay */
  content: ""; position: absolute; inset: 0; pointer-events: none; opacity: .12;
  background: repeating-linear-gradient(90deg, #ffffff 0 2px, transparent 2px 36px);
}
.hero-rimowa::after { /* legibility scrim */
  content: ""; position: absolute; inset: 0;
  background: linear-gradient(180deg, transparent 40%, var(--color-scrim));
}
.hero-rimowa > .content { position: relative; z-index: 1; padding: var(--space-8); }
.hero-rimowa h1 { font-size: var(--text-display); text-transform: uppercase;
  letter-spacing: 0.02em; line-height: var(--leading-display); }
```
