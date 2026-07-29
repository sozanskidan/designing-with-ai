# Teenage Engineering — Web Design Language
> Source: https://teenage.engineering, https://teenage.engineering/products/ep-133 + fontofweb/design.withfudge.com token capture of teenage.engineering + norrly.io breakdown · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
teenage.engineering reads like a Swedish instruction manual: white page, small black lowercase text, hard grid, zero decoration. It is ruthless reduction — few elements per viewport, one CTA per screen, art-directed product photography doing all of the emotional work. The site borrows the language of industrial spec sheets (model numbers, precise en/em dashes, hairline-ruled tables) rather than marketing pages. Nothing is rounded, almost nothing is animated, and every word is lowercase and earns its place. The restraint makes the occasional pop of product color — TE safety orange, campaign red — feel electric, and it perfectly mirrors the hardware's Dieter-Rams-meets-toy sensibility.

## 2. Color

### Core palette (scraped via third-party token capture + page observation)
| Role | Value | Notes |
|---|---|---|
| Background | `#ffffff` | Entire site; light theme only, no dark mode |
| Surface (image fields) | `#ffffff` / `#f5f5f5` (inferred) | Products photographed on white/pale seamless |
| Text primary | `#000000` / `#181818` | Dense small black text |
| Text secondary | `#484848` | Spec values, captions |
| Text muted | `#a8a8a8` | De-emphasized labels, sold-out states |
| Border / hairline | `#d8d8d8` | Table rules, dividers — the only line weight used |
| Accent (CTA/link) | `#181818` | CTAs are dark text, not colored buttons |
| Accent (brand pop) | `#ff4a00` (inferred) | TE safety orange; product hardware, sale tags |
| Promo/theme red | `#ec003f` | Reported theme color in token capture (campaign/sale accent) |

### States & overlays
| Role | Value | Notes |
|---|---|---|
| Link hover | underline, same `#181818` | Color never changes; only decoration (inferred from behavior) |
| Link dim / visited-ish | `#484848` | Secondary nav states (inferred) |
| Disabled / sold out | `#a8a8a8` text, no strikethrough | Muted gray label (inferred) |
| Image hover | alternate product angle swap | No overlay tint |
| Overlay (menus, mobile) | `#ffffff` solid full-screen | No scrims/blur (inferred) |
| Sale price | `#ec003f` | Red price beside struck gray original (inferred pairing) |

### Gradients & modes
- **No gradients anywhere.** Flat white, flat black text, hairlines. Color arrives only inside photographs.
- No dark mode; `apple-mobile-web-app-status-bar-style: black-translucent` is the only "dark" chrome (scraped meta)

## 3. Typography

### Families & loading
- Primary (scraped family names): **Univers TE-20** and **Univers TE-40** — custom TE cuts of Univers — with system fallback (`-apple-system`) also captured
- Recommended stack: `"Univers TE-20", "Univers", "Helvetica Neue", Helvetica, Arial, sans-serif` (fallback order inferred)
- TE-20 ≈ regular text cut; TE-40 ≈ heavier/display cut (role split inferred from naming)
- Self-hosted woff2 from `assets.teenage.engineering` (inferred from asset host); no Google Fonts
- Mono feel comes from Univers set small with tabular alignment in spec tables, not an actual mono font

### Type scale (site resists large type; sizes inferred from rendered layout)
| Name | Size | Weight | Line-height | Letter-spacing | Usage |
|---|---|---|---|---|---|
| campaign-display | 40–64px | 700 (TE-40) | 1.05 | 0 | Rare launch/campaign heroes |
| product-title | 20–24px | 400–700 | 1.2 | 0 | "EP–133 K.O. II" page titles |
| section-head | 16px | 700 | 1.3 | 0 | "knockout features", "gear up" |
| body / nav | 13px | 400 | 1.5 | 0 | Everything: nav, copy, links |
| spec-table | 12px | 400 | 1.6 | 0 | Two-column spec rows |
| price | 13px | 400 | 1.5 | 0 | "$299" beside product name |
| legal / footer | 11–12px | 400 | 1.5 | 0 | Address, terms |

### Conventions
- **Strictly lowercase everywhere** — brand name, nav, headlines, buttons ("teenage engineering", "buy now")
- Typographically correct dashes and marks: "EP–133 K.O. II", "OB–4", "field system™", "10" EP format" (all scraped strings)
- Numerals: lining figures, aligned in spec tables (tabular alignment inferred)
- No responsive type inflation — text stays small on desktop; whitespace scales instead

## 4. Layout & Grid
- Fluid full-width layout; content within ~1400–1600px, slim 16–24px margins (inferred)
- Homepage: vertical stack of product-category blocks — large photograph + one lowercase caption line + "buy now"
- Product pages (scraped structure): hero image → repeated CTA → feature rows (icon + text) → two-column spec tables → "gear up" accessory carousel → footer grid
- Grid: effectively 1-col editorial with 2-col spec tables and 3–4-col accessory/product grids (~16px gutters, inferred)
- Spacing scale (inferred rhythm): 4, 8, 16, 24, 32, 64, 96–128px between major blocks — big vertical gaps against tiny text
- Header: single slim text row (~48px tall, inferred), lowercase links "product instruments audio designs store … support" + literal cart counter "checkout 0" (scraped)
- Footer (scraped): minimal lowercase row — newsletter, retailers, store, terms, press, contact, returns — plus "Textilgatan 31, 120 30 Stockholm, Sweden", "free shipping over $120", "©2026 teenage engineering"
- Breakpoints: fluid collapse to single column ≈ 768px; nav wraps rather than hamburgers where possible (inferred)
- Z-index: nearly flat — header above content, full-screen menu on top; no floating layers (inferred)

## 5. Components

### Product block (atomic unit)
Edge-to-edge or large centered photo → one lowercase title line (13–16px) → "buy now" text link. No card chrome, no border, no shadow, no radius.

### Buttons / CTAs
| Variant | Default | Hover | Active | Focus | Disabled |
|---|---|---|---|---|---|
| Text CTA ("buy now") | `#181818` 13px lowercase, plain or underlined | underline (or removes underline) | none — instant | browser default ring (inferred) | `#a8a8a8` |
| Boxed CTA ("add to bag") | solid `#181818` bg, `#fff` text, radius 0, pad ~10px 20px (inferred box treatment) | invert or dim to `#484848` (inferred) | instant | ring | gray |
| Store link ("visit store") | plain text + no icon | underline | — | — | — |
- Transitions: effectively none — state changes are instant or ≤120ms linear (inferred)

### Spec table (signature component)
Two columns, 12px text; label left `#484848`, value right `#181818`; 1px `#d8d8d8` row rules; generous 8–12px cell padding; no zebra striping, no radius.

### Navigation
- Header links lowercase 13px, spaced by plain gaps; current section may underline (inferred)
- Cart is literal text "checkout 0" that increments — no bag icon
- Mobile: full-screen white overlay list of the same lowercase links (inferred)

### Cards / accessory carousel ("gear up")
Small product thumbnail on white → name (13px) → price (13px). Horizontal scroll, no visible scrollbar chrome, no card border; hover swaps image angle (inferred).

### Inputs / forms
Bare rectangles: 1px `#d8d8d8` border, radius 0, 13px lowercase placeholder `#a8a8a8`; focus: border darkens to `#181818` (inferred); newsletter field + "subscribe" text button.

### Badges
Sale/price tags in `#ec003f` red text; "new" as plain lowercase word, no pill (inferred).

### Footer
Single hairline rule above; lowercase link row; street address as plain text — the anti-footer.

## 6. Imagery & Iconography
- Studio product photography on seamless white/pale gray — archive-documentation style, hard focus, true color
- Occasional deadpan lifestyle/campaign shots (product in hand, absurdist humor) as heroes
- Assets: `.webp` from `assets.teenage.engineering/_img/` (scraped); SVG icons referenced (scraped)
- Icons: tiny 1px-stroke schematic glyphs — knobs, waveforms, connector symbols — monochrome black, drawn like circuit-diagram symbols
- Product hardware color IS the site's palette: orange, yellow, red devices punching through the white page
- No illustration, no 3D renders passed off as photos, no stock imagery

## 7. Motion & Interaction

### Timing & easing
- Default: instant or near-instant; where transitions exist, ~100–150ms `linear` / `ease-out` (inferred — no scraped keyframes)
- No scroll-jacking, no parallax, no reveal-on-scroll choreography — the page just scrolls

### Animation inventory
- **Image swap on hover**: product photos flip to alternate angle with a hard cut (no crossfade) (inferred from behavior)
- **Cart counter**: "checkout 0" → "checkout 1" text increment, no fly-to-cart animation
- **Carousel drag**: native momentum scrolling in "gear up" rows
- **Interactive easter eggs**: select pages embed playable demos (on-page synth/sampler toys, draggable knobs) — the one place TE spends motion budget (documented campaign behavior)
- **Video**: autoplaying muted product loop videos inline on some product pages (inferred)
- Page transitions: full reload, no SPA transitions
- Reduced motion: trivially compliant — there is almost nothing to reduce

## 8. Voice & Copy
- All lowercase, deadpan, engineering-flavored with dry humor; boxing metaphors throughout EP–133 ("K.O.")
- Headlines are tiny noun phrases, not sentences; model numbers double as headlines
- Real examples (scraped): "no. 1 champion" · "world's first super segment hybrid display" · "knockout features" · "one-two punch" · "go the distance" · "free shipping over $120"
- Microcopy: "buy now", "add to bag", "visit store" — never urgency language, never exclamation marks
- Meta description (scraped): "teenage engineering creates high quality, well designed, electronic products for all people who love sound and music."
- Spec-sheet voice: facts stated flatly ("10" EP format"), superlatives only when literally true ("world's first…")

## 9. Signature Moves
- Everything lowercase — brand name, nav, headlines, buttons
- Tiny 12–13px black text on vast white; spec-sheet density instead of marketing scale
- Custom Univers cuts (TE-20/TE-40) doing quiet Swiss-modernist work
- Product model numbers with typographically correct dashes ("EP–133 K.O. II") used as headlines
- One photograph + one caption + "buy now" as the entire section anatomy
- Zero border-radius, zero shadows, zero gradients; hairline `#d8d8d8` rules only
- "checkout 0" literal text cart counter in the nav
- Two-column hardware spec tables as a content centerpiece
- Deadpan copy humor ("no. 1 champion") against clinical layout

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #ffffff;
  --color-surface: #f5f5f5;            /* (inferred) */
  --color-text: #181818;
  --color-text-strong: #000000;
  --color-text-secondary: #484848;
  --color-text-muted: #a8a8a8;
  --color-accent: #181818;             /* CTAs are dark text */
  --color-accent-invert: #ffffff;
  --color-pop: #ff4a00;                /* TE orange (inferred) */
  --color-promo: #ec003f;              /* sale/campaign red */
  --color-border: #d8d8d8;
  --color-border-focus: #181818;       /* (inferred) */
  /* typography */
  --font-body: "Univers TE-20", Univers, "Helvetica Neue", Helvetica, Arial, sans-serif;
  --font-display: "Univers TE-40", Univers, "Helvetica Neue", Helvetica, Arial, sans-serif;
  --text-display: 48px;   /* campaign only */
  --text-title: 22px;
  --text-section: 16px;
  --text-base: 13px;
  --text-spec: 12px;
  --text-legal: 11px;
  --leading-base: 1.5;  --leading-display: 1.05;
  --case-global: lowercase;
  /* spacing */
  --space-1: 4px;  --space-2: 8px;   --space-3: 16px;
  --space-4: 24px; --space-5: 32px;  --space-6: 64px;
  --space-section: 96px; --space-mega: 128px;
  /* radius — the brand does not round corners */
  --radius-none: 0; --radius-sm: 0; --radius-md: 0;
  /* shadows — none */
  --shadow-none: none;
  /* layout — breakpoints: ~768px single-col collapse (inferred) */
  --max-width: 1520px;
  --gutter: 16px;
  /* z-index */
  --z-header: 10; --z-menu: 100;
  /* motion */
  --ease-linear: linear;
  --ease-out: ease-out;
  --duration-instant: 0ms;
  --duration-fast: 120ms;
}
```

### Example: text CTA + boxed CTA with states
```css
.cta-te {
  font: 400 var(--text-base)/1 var(--font-body);
  text-transform: lowercase;
  color: var(--color-accent);
  text-decoration: none;
  transition: none;                       /* state changes are instant */
}
.cta-te:hover { text-decoration: underline; }
.cta-te:disabled, .cta-te[aria-disabled="true"] { color: var(--color-text-muted); }

.btn-te {
  font: 400 var(--text-base)/1 var(--font-body);
  text-transform: lowercase;
  background: var(--color-accent);
  color: var(--color-accent-invert);
  border: 0; border-radius: 0;
  padding: 10px 20px;
  cursor: pointer;
}
.btn-te:hover  { background: var(--color-text-secondary); }  /* (inferred) */
.btn-te:focus-visible { outline: 1px solid var(--color-text-strong); outline-offset: 2px; }
.btn-te:disabled { background: var(--color-text-muted); }
```

### Example: signature spec table
```css
.spec-te {
  width: 100%;
  border-collapse: collapse;
  font: 400 var(--text-spec)/1.6 var(--font-body);
  text-transform: lowercase;
}
.spec-te tr { border-bottom: 1px solid var(--color-border); }
.spec-te td { padding: 10px 0; vertical-align: top; }
.spec-te td:first-child { color: var(--color-text-secondary); width: 40%; }
.spec-te td:last-child  { color: var(--color-text); font-variant-numeric: tabular-nums; }
```

### Example: product block (photo + caption + buy now)
```css
.block-te { padding: var(--space-section) var(--gutter); text-align: center; }
.block-te img { max-width: 100%; height: auto; display: block; margin: 0 auto var(--space-4); }
.block-te .caption {
  font: 400 var(--text-base)/1.5 var(--font-body);
  text-transform: lowercase;
  color: var(--color-text);
}
.block-te .caption .price { color: var(--color-text-secondary); margin-left: var(--space-2); }
```
