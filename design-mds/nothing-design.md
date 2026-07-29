# Nothing — Web Design Language
> Source: https://us.nothing.tech, https://us.nothing.tech/products/phone-3 + fontofweb/design.withfudge.com font capture of nothing.tech + Fonts In Use (typeface documentation) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped; site CSS was not directly retrievable, so most numeric tokens are inferred from brand documentation and rendered layout

## 1. Design Philosophy
Nothing's site is monochrome techno-minimalism with a retro-mainframe accent: stark black-and-white surfaces, dot-matrix display type (NDot), and typewriter-flavored mono body text inspired by 1980s IBM terminals. Product names are typeset lowercase with spaced parentheses — "phone ( 3 )", "ear ( 3a )" — turning nomenclature itself into the brand's most recognizable graphic device. Layouts are full-bleed and photographic, letting transparent-hardware product shots supply all the texture, with a single red accent used like a hardware recording light. The overall effect is engineered, deadpan, and nostalgic-futurist: "tech is fun again," rendered in grayscale with one blinking red dot.

## 2. Color

### Core palette
| Role | Value | Notes |
|---|---|---|
| Background (light) | `#ffffff` | Commerce/product pages |
| Background (dark) | `#000000` | Campaign heroes, alternating sections |
| Surface (card field) | `#f4f4f4` (inferred) | Pale gray product-card backgrounds |
| Surface (dark raised) | `#111111` (inferred) | Cards on black sections |
| Text primary (light bg) | `#000000` / `#1a1a1a` (inferred) | Near-black |
| Text primary (dark bg) | `#ffffff` | |
| Text secondary | `#737373` (inferred) | Specs, captions, mono labels |
| Text muted | `#a3a3a3` (inferred) | Disabled, fine print |
| Border (light) | `#e5e5e5` (inferred) | Hairlines between commerce modules |
| Border (dark) | `#2a2a2a` (inferred) | Hairlines on black |

### Accent & states
| Role | Value | Notes |
|---|---|---|
| Accent red | `#d71921` (inferred, documented brand red) | Glyph dots, sale tags, alerts — used surgically |
| Button primary (light ctx) | `#000000` fill, `#ffffff` text | Inverts on dark sections |
| Button hover | invert or `#2a2a2a` fill (inferred) | Black↔white inversion is the hover language |
| Button active | slight dim, no scale (inferred) | Mechanical, instant |
| Focus | 2px `#000000` outline (inferred) | High-contrast ring |
| Disabled | `#a3a3a3` text on `#f4f4f4` (inferred) | |
| Sale price | `#d71921` beside struck gray (inferred) | |
| Overlay/scrim | `rgba(0,0,0,0.6)` (inferred) | Menus, quick-view |

### Gradients & modes
- **Effectively no gradients** — flat monochrome fields; depth comes from photography
- "Dark mode" is editorial: whole sections/campaign pages flip to black; commerce stays light (scraped structure)
- Meta theme-color: not set (scraped: absent)

## 3. Typography

### Families & loading (family names scraped via token capture; roles documented via Fonts In Use)
- **NDot (55/57)** — dot-matrix display: logo, hero numerals, campaign headlines
- **NType 82** — primary web/UI text (custom, Colophon Foundry; IBM-mainframe-era inspiration)
- **NType 82 Mono** — spec/label mono variant
- **LL Lettera Mono** (two widths, Lineto) — supporting mono, captured on the live site
- Stacks (fallbacks inferred): body `"NType 82", "Helvetica Neue", Arial, sans-serif`; mono `"NType 82 Mono", "Lettera Mono LL", "Courier New", monospace`; display `"NDot 55", "NType 82", monospace`
- Self-hosted woff2 via Shopify/Sanity asset pipeline (inferred)

### Type scale (inferred from rendered layout; site CSS not retrievable)
| Name | Size | Weight | Line-height | Letter-spacing | Usage |
|---|---|---|---|---|---|
| display-ndot | 64–96px | 400 (dot glyphs) | 1.0 | +0.02em | Campaign heroes, numerals |
| display | 48–56px | 500 | 1.05 | -0.01em | Product hero names |
| h2 | 32–40px | 500 | 1.15 | 0 | Section heads ("New Glyph Interface") |
| h3 / product title | 20–24px | 500 | 1.25 | 0 | Card titles, PDP title |
| body | 14–16px | 400 | 1.5 | 0 | Paragraphs |
| mono-label | 12–13px | 400 | 1.5 | +0.05em, often UPPERCASE | Eyebrows, spec labels, prices |
| caption / legal | 11–12px | 400 | 1.5 | 0 | Footnotes |

### Conventions
- Product names lowercase with spaced parentheses: "phone ( 3 )", "ear ( 3a )" (scraped strings)
- ALL CAPS reserved for collab/campaign lines: "NOTHING ( CHARLI XCX )" (scraped)
- Mono type carries all metadata (prices, specs, eyebrow labels); dot-matrix reserved for moments, never body
- Numerals prominent and tabular in specs (inferred)

## 4. Layout & Grid
- Full-width, edge-to-edge heroes; inner container ≈ 1280–1440px (inferred)
- Grid: 12-col with ~16–24px gutters; product card grids 2-up mobile / 4-up desktop (inferred)
- Spacing scale (inferred rhythm): 8, 16, 24, 32, 48, 64, 96, 128px; sections padded 80–120px vertically
- Homepage structure (scraped): announcement/offers bar → stacked full-bleed product billboards (image + name + "Discover"/"Learn more") → grid product showcase → footer
- PDP anatomy (scraped): header → hero gallery (6 images) → title + key features → color/storage selector → price + "Add to bag" → footer
- Header: slim bar (~56–64px, inferred), dot-matrix wordmark left, minimal links, cart right; sticky add-to-bag bar on PDP scroll (inferred)
- Footer (scraped links): About, Community, Club Nothing, Playground, Offers, Support, Business Sales Enquiries + Account/Contact/Careers/Legal + social row (Instagram, YouTube, X, TikTok)
- Breakpoints: Shopify-theme tiers ~750 / 990 / 1200px (inferred; Shopify + Sanity CMS backend scraped)
- Z-index (inferred): content 0 · sticky header 100 · overlay menu 500 · modal 1000

## 5. Components

### Hero billboard (atomic unit)
Full-bleed photo/render → lowercase product name (NDot or NType display) → one-line benefit → single CTA. Text bottom-left or centered; inverts white/black with the section.

### Buttons
| Variant | Default | Hover | Active | Focus | Disabled |
|---|---|---|---|---|---|
| Primary | `#000` fill, `#fff` mono/NType 13–14px label, pill radius ~24px (inferred) or square, pad 12px 24px | inverts to `#fff`/`#000` with 1px black border (inferred) | dim, instant | 2px black ring | gray |
| Primary on dark | `#fff` fill, `#000` text | inverts | — | white ring | — |
| Ghost | transparent, 1px border currentColor | fill flips in | — | ring | — |
| Promo | `#d71921` fill, white text (inferred) | darken | — | — | — |
- Labels (scraped): "Add to bag", "Discover", "Learn more", "Explore Offers"
- Transition: fast, mechanical ~150ms ease-out or stepped (inferred)

### Navigation
- Minimal link set; hover underlines in mono type; cart count as plain numeral
- Mega/mobile menu: full-screen monochrome overlay, large lowercase product list, staggered reveal (inferred)
- Announcement bar: full-width strip, 12px mono text, offers/shipping (scraped presence)

### Cards (product grid)
- `#f4f4f4` field, centered render, name (NType 20px) + price (mono 13px) below; hover: image swaps to alternate angle or hairline border appears (inferred); radius 0–8px (inferred small)

### Variant selectors (scraped presence on PDP)
- Color: circular swatch dots with 1px ring, selected = 2px black ring offset
- Storage: bordered rounded-rect chips, mono label, selected = solid black border/fill inversion (inferred styling)

### Inputs
- Rectangular, 1px `#000` or `#e5e5e5` border, minimal radius, mono placeholder in caps (inferred); focus border thickens to 2px

### Badges
- "NEW" in 11px mono caps, plain or red text; red dot indicator motif (inferred)

### Footer
- Black or white field, mono column headings in caps, 13px links; newsletter input + arrow button; social icons monochrome

## 6. Imagery & Iconography
- Product photography of transparent hardware — exposed screws, ribbon cables, Glyph LED matrices — on neutral white/gray/black studio fields
- Assets: Sanity.io CDN (up to 4096×2305) + Shopify CDN, WebP (scraped)
- Campaign art: high-contrast monochrome portraits with dot-matrix type overlays (e.g. Charli XCX collab, scraped)
- Icons: pixel/dot-matrix glyphs + thin geometric line icons, strictly monochrome
- Red appears only as a functional dot — recording-light motif — never a color wash
- UI screenshots (Nothing OS) shown in monochrome widget style with dot-matrix numerals

## 7. Motion & Interaction

### Timing & easing (inferred — no scraped motion values available)
- UI micro: 150–250ms `ease-out`; the brand look favors **stepped/mechanical** timing (`steps(4–8)`) for dot-matrix effects over smooth easing
- Page transitions: standard loads; no SPA choreography

### Animation inventory
- **Dot-matrix text build**: headlines/numerals decode letter-by-letter or dot-by-dot in campaign moments — mirrors Nothing OS boot/widget animations (inferred from brand system)
- **Scroll-driven PDP sequences**: pinned hero sections with image swaps / video scrub showing Glyph lights firing as you scroll (inferred from product-page behavior)
- **Hero gallery**: snap-scroll carousel of 6 images with dot indicators (scraped structure)
- **Hover**: product-card image angle swap (hard cut), link underline, button black↔white inversion
- **Blinking red dot**: recording-light pulse (~1s steps(2) infinite) as an accent motif (inferred)
- **Marquee/ticker**: occasional scrolling mono text strips for offers (inferred, campaign pages)
- **Sticky add-to-bag bar**: slides up on PDP after hero (inferred)
- Reduced motion: degrade builds to static text; standard practice (inferred)

## 8. Voice & Copy
- Deadpan, spec-forward, lightly playful; brand mission cheeky ("tech is fun again")
- Product names always styled exactly: lowercase + spaced parentheses
- Real examples (scraped): "Phone ( 3 )" · "New Glyph Interface" · "New Essential Search" · "Four 50MP cameras system" · "Capture what you hear with Audio Snapshot + call recording" · "Stay in the moment with Essential Notifications" · "Custom sound with tuning by KEF" · "NOTHING ( CHARLI XCX )"
- Brand meta line (scraped): "Here at Nothing, we're building a world where tech is fun again..."
- Pattern: [Feature noun phrase] or [Verb-first benefit clause]; collab titles in caps with parentheses
- Microcopy: "Add to bag", "Discover", "Learn more", "Explore Offers" — short, flat, no exclamation

## 9. Signature Moves
- Lowercase product names with spaced parentheses: "phone ( 3 )", "ear ( 3a )"
- NDot dot-matrix display type against clean NType/mono body text
- Strict black/white/gray palette with one surgical red dot (`#d71921`)
- Transparent-hardware photography as the entire visual identity
- Mono/terminal type (NType 82 Mono, Lettera Mono LL) for specs, prices, eyebrows — IBM-mainframe nostalgia
- Full-bleed billboard sections with a single CTA
- Black↔white section inversion (and button inversion on hover) instead of color
- Stepped, mechanical motion — dot-matrix builds, hard-cut image swaps, blinking-dot pulses

## 10. Emulation Tokens
```css
:root {
  /* color — surfaces */
  --color-bg: #ffffff;
  --color-bg-dark: #000000;
  --color-surface: #f4f4f4;            /* (inferred) */
  --color-surface-dark: #111111;       /* (inferred) */
  /* color — text */
  --color-text: #1a1a1a;               /* (inferred) */
  --color-text-secondary: #737373;     /* (inferred) */
  --color-text-muted: #a3a3a3;         /* (inferred) */
  --color-text-on-dark: #ffffff;
  /* color — accent & states */
  --color-accent: #d71921;             /* Nothing red (inferred) */
  --color-btn: #000000;
  --color-btn-text: #ffffff;
  --color-btn-hover-bg: #ffffff;       /* inversion hover */
  --color-btn-hover-text: #000000;
  --color-border: #e5e5e5;             /* (inferred) */
  --color-border-dark: #2a2a2a;        /* (inferred) */
  --color-scrim: rgba(0, 0, 0, 0.6);   /* (inferred) */
  /* typography */
  --font-display: "NDot 55", "NType 82", monospace;
  --font-body: "NType 82", "Helvetica Neue", Arial, sans-serif;
  --font-mono: "NType 82 Mono", "Lettera Mono LL", "Courier New", monospace;
  --text-display-xl: 80px; --text-display: 52px; --text-h2: 36px;
  --text-h3: 22px; --text-body: 15px; --text-mono: 13px; --text-caption: 12px;
  --leading-display: 1.0; --leading-body: 1.5;
  --tracking-mono: 0.05em;
  /* spacing */
  --space-1: 8px;  --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-6: 48px; --space-8: 64px; --space-section: 96px; --space-mega: 128px;
  /* radius */
  --radius-none: 0; --radius-sm: 4px; --radius-chip: 8px; --radius-pill: 24px; /* (inferred) */
  /* shadows — essentially none; photography provides depth */
  --shadow-none: none;
  /* layout — breakpoints (inferred Shopify tiers): 750px | 990px | 1200px */
  --max-width: 1440px; --gutter: 24px;
  /* z-index (inferred) */
  --z-content: 0; --z-header: 100; --z-menu: 500; --z-modal: 1000;
  /* motion */
  --ease-out: cubic-bezier(0.25, 0.1, 0.25, 1);
  --ease-mechanical: steps(4, end);    /* dot-matrix / hardware feel */
  --duration-fast: 150ms; --duration-normal: 250ms;
  --duration-blink: 1s;
}
```

### Example: inversion button with states
```css
.btn-nothing {
  font: 400 var(--text-mono)/1 var(--font-mono);
  letter-spacing: var(--tracking-mono);
  text-transform: uppercase;
  background: var(--color-btn);
  color: var(--color-btn-text);
  border: 1px solid var(--color-btn);
  border-radius: var(--radius-pill);
  padding: 12px 24px;
  cursor: pointer;
  transition: background var(--duration-fast) var(--ease-out),
              color var(--duration-fast) var(--ease-out);
}
.btn-nothing:hover {
  background: var(--color-btn-hover-bg);
  color: var(--color-btn-hover-text);
}
.btn-nothing:focus-visible { outline: 2px solid currentColor; outline-offset: 3px; }
.btn-nothing:disabled { background: var(--color-text-muted); border-color: var(--color-text-muted); }
/* dark-section variant: swap the custom props */
.section-dark .btn-nothing { --color-btn: #ffffff; --color-btn-text: #000000;
  --color-btn-hover-bg: #000000; --color-btn-hover-text: #ffffff; }
```

### Example: product card
```css
.card-nothing {
  background: var(--color-surface);
  border-radius: var(--radius-sm);
  padding: var(--space-4);
  text-align: center;
}
.card-nothing img { mix-blend-mode: multiply; max-width: 100%; }
.card-nothing .name  { font: 500 var(--text-h3)/1.25 var(--font-body);
  text-transform: lowercase; margin-top: var(--space-2); }
.card-nothing .price { font: 400 var(--text-mono)/1.5 var(--font-mono);
  color: var(--color-text-secondary); letter-spacing: var(--tracking-mono); }
.card-nothing:hover  { outline: 1px solid var(--color-border-dark); } /* hairline on hover */
```

### Example: signature dot-matrix headline build + blinking red dot
```css
.ndot-headline {
  font-family: var(--font-display);
  font-size: var(--text-display);
  line-height: var(--leading-display);
  text-transform: lowercase;
  /* decode effect: characters revealed in steps */
  overflow: hidden; white-space: nowrap; width: 0;
  animation: ndot-decode 1.2s steps(12, end) forwards;
}
@keyframes ndot-decode { to { width: 100%; } }

.rec-dot {
  display: inline-block; width: 10px; height: 10px;
  border-radius: 50%;
  background: var(--color-accent);
  animation: rec-blink var(--duration-blink) steps(2, start) infinite;
  vertical-align: middle; margin-right: 8px;
}
@keyframes rec-blink { 50% { opacity: 0; } }
@media (prefers-reduced-motion: reduce) {
  .ndot-headline { animation: none; width: auto; }
  .rec-dot { animation: none; }
}
```
