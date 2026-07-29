# Bang & Olufsen — Web Design Language
> Source: https://www.bang-olufsen.com (en/us) · https://www.bang-olufsen.com/en/us/headphones/beoplay-h100 · fontsinuse.com/uses/5419 (historical type ID) · Contentful case study (platform facts) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Bang & Olufsen's site is a luxury product gallery: enormous cinematic imagery of aluminium, leather and speaker fabric, with the interface reduced to quiet typography floating over or beneath it. The design language mirrors the industrial design — precise, material-honest, Scandinavian — so pages are essentially full-bleed photography/video bands with short poetic captions and a single pill CTA. Commerce details (price, finish pickers, gifting offers) are rendered with boutique restraint rather than retail urgency; there are no ratings, badges or countdowns. Content is Contentful-driven (imagery served from `images.ctfassets.net`, scraped; commercetools commerce backend, documented), and the system flexes between light gallery pages and near-black dramatic hero moments. Motion is slow and cinematic: autoplay video, long crossfades, gentle scroll-scrubbed product stories.

## 2. Color
### Core roles
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | Scraped observation: predominantly white/light ground |
| Surface / alt band | `#F4F2EF` (inferred) | Warm greige echoing aluminium/textile tones |
| Surface hover | `#EDEAE6` (inferred) | Tiles/rows darken one step |
| Background dark (hero) | `#0F0F0F` (inferred) | Near-black cinematic sections; also footer |
| Surface on dark | `#1C1C1C` (inferred) | Cards/panels over dark |
| Text primary | `#1A1A1A` (inferred) | Soft black; never harsh `#000` on white |
| Text secondary | `#707070` (inferred) | Specs, captions, legal |
| Text on dark | `#FFFFFF` / secondary `#B3B0AC` (inferred) | |
| Accent | none (monochrome) | Finishes are the palette: Century Brown, Infinite Black, Hourglass Sand, Sunset Apricot, Fragment Edition (scraped names) |
| Borders | `#E5E2DE` light / `rgba(255,255,255,0.16)` dark (inferred) | Hairlines on swatch rings, dividers |
| Error | `#C0392B` (inferred) | Forms only |

### States, overlays, gradients
- Primary pill button: `#1A1A1A` → hover `#333331` → active `#0D0D0C`; on dark heroes inverted white pill `#FFFFFF` → hover `#E8E6E2` (inferred)
- Text links: 1px underline appears/persists on hover, 250ms (inferred)
- Hero legibility scrim: `linear-gradient(180deg, rgba(0,0,0,0) 45%, rgba(0,0,0,0.45) 100%)` over photography/video when text overlays (inferred)
- Swatch selected state: 1px `#1A1A1A` ring offset 3px from the material dot (inferred)
- No decorative gradients; elevation nearly flat — soft `0 8px 24px rgba(0,0,0,0.08)` only on overlays/drawers (inferred)
- No user-facing dark mode; dark is an editorial section treatment, not a theme

## 3. Typography
- Current site: proprietary/licensed neo-grotesque self-hosted via WOFF2 (inferred; visually close to Neue Haas Grotesk / Helvetica Now). Historical Fonts In Use ID for bang-olufsen.com (documented, older iteration): **Baskerville** + **Frutiger** — the "sober but stylish" serif/humanist pairing has since been replaced by the single grotesque voice
- Stack: `"BeoSans", "Neue Haas Grotesk", "Helvetica Neue", Helvetica, Arial, sans-serif` (inferred)
- Weights: 300 (light, airy) for large display; 400 body; 500 buttons/labels; no heavy bolds
- Loading: self-hosted WOFF2, `font-display: swap` (inferred); lining figures; prices plain ("$2,300", "From $2,200" — scraped)

### Type scale (approx, inferred from rendered pages)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Hero display | 56–64px / 3.5–4rem | 300 | 1.05–1.1 | −0.01em | Overlaid hero statements |
| H2 section | 36–40px | 300–400 | 1.15 | −0.005em | "Explore our bestsellers" |
| H3 / product name | 24–28px | 400 | 1.25 | 0 | "Beoplay H100" |
| Sub / descriptor | 18–20px | 400 | 1.45 | 0 | "Ultimate over-ear headphones" |
| Body | 16px / 1rem | 400 | 1.5 | 0 | Descriptions |
| UI / button | 14px | 500 | 1 | +0.01em | "Shop", "Learn more" |
| Caption / spec / legal | 12–13px | 400 | 1.5 | +0.01em | Benefits row, offer terms |
- Case: sentence case headlines; product proper nouns capitalized (Beoplay, Beosound, Beo Grace); tiny uppercase only for rare eyebrow labels (inferred)
- Responsive: hero 64→40→32px, H2 40→28px below tablet/mobile (inferred); body constant

## 4. Layout & Grid
- Breakpoints ≈ 768 / 1024 / 1440px (inferred)
- Containers: imagery is 100vw full-bleed; contained content max ~1440px with 24/48/80px gutters per breakpoint; text measure ~640px (inferred)
- Grid: 12-col desktop; bestseller grid 2-col mobile → 4-col desktop, 16–24px gutters (scraped: 8-product grid)
- Spacing scale (inferred): `8, 16, 32, 64, 120, 180` px; major bands separated by 120–180px; text sits 32–64px from adjacent imagery
- Homepage rhythm (scraped): full-viewport hero (Beo Grace) → "Explore our bestsellers" 8-tile grid → alternating single-product feature bands (Beosound A5, Beoplay H100, Beosound Explore) → newsletter ("The House of Bang & Olufsen") → footer
- Product page rhythm (scraped): 8-frame image carousel hero → overview + colour selection → price/promo ("Receive a complimentary powerbank valued at 145€/$179") → 6-item benefits callout → footer
- Header: minimal ~64–72px — logo left, sparse nav, cart icon right; transparent over heroes, solid white + hairline on scroll (inferred); mega-menu opens as full-width white panel with product-category imagery (inferred)
- Footer: 4 columns — Customer Care (shipping, returns, FAQ, store locator) / Our Policies / Our Company / Social (Facebook, Instagram, LinkedIn, X, YouTube, TikTok, Pinterest) + app badges + "© Bang & Olufsen 2026" (scraped)
- Z-index (inferred): 10 sticky header · 20 mega-menu · 30 cart drawer · 40 modal · 50 cookie/banner
- Sticky buy-bar on product pages: product name + price + "Shop" pill pinned after scrolling past hero (inferred)

## 5. Components
### Buttons
| Property | Primary (pill) | Inverted (on dark/photo) | Text link |
|---|---|---|---|
| Fill | `#1A1A1A` | `#FFFFFF` | none |
| Text | `#FFFFFF`, 14px/500 | `#1A1A1A` | `#1A1A1A` underlined on hover |
| Padding | `14px 32px` | same | — |
| Radius | 9999px | 9999px | — |
| Hover | `#333331` | `#E8E6E2` | underline + color hold |
| Active | `#0D0D0C` | `#DDDAD5` | — |
| Focus | 2px ring `#1A1A1A`/`#FFF`, 2px offset | same | underline + outline |
| Disabled | bg `#D8D5D0`, text `#9C9994` | opacity .4 | — |
| Transition | 250ms ease-out | same | 250ms |
(shape/labels scraped: "Shop", "Select a colour", "Learn more"; state values inferred)

### Product tile (bestseller grid)
- Large image on neutral studio ground, name (24px), one-line descriptor, "From $2,200" price line (scraped pattern); square corners on media; hover: image swaps angle or zooms to scale(1.03) over 600ms (inferred); no badges/ratings

### Colour/finish swatch selector
- Row of 24–28px circular material swatches (real finish photos, not flat color), finish name label ("Century Brown"…, scraped); selected = offset ring; "Select a colour" dropdown on PDP (scraped, British spelling)

### Benefits callout
- Row/grid of 6 items: 24px line icon + 13px text (shipping, returns, warranty etc. — scraped count); hairline separators (inferred)

### Newsletter / forms
- "The House of Bang & Olufsen" block (scraped): email input — 1px `#E5E2DE` border or bottom-rule, 16px text, radius 0; focus border `#1A1A1A`; paired pill submit (inferred)

### Carousel
- Edge-to-edge slides, 8 frames on PDP (scraped); thin progress bar or minimal dots; arrows appear on hover, 40px circular ghost buttons (inferred)

### Header / nav spec
- Height ~64–72px; transparent over hero (white logo/icons), transitions to solid `#FFFFFF` + 1px `#E5E2DE` bottom hairline after ~80px scroll, 250ms fade (inferred)
- Nav labels 14px/500, 32px apart; hover = 1px underline; cart icon with count dot (inferred; cart presence scraped)
- Mega-menu: full-width white panel, category columns + product imagery, opens 350ms `ease-ui` with 100ms content fade stagger (inferred)
- Mobile: full-screen panel, product categories as large 24px rows with imagery (inferred)

### Footer spec
- Dark `#0F0F0F` (inferred) with 4 white-text columns (Customer Care / Our Policies / Our Company / Social — scraped) at 14px/2.0; app-store badges; newsletter entry point; bottom row "© Bang & Olufsen 2026" (scraped) + locale selector (inferred)

## 6. Imagery & Iconography
- Cinematic lifestyle + macro material photography: brushed aluminium, anodized edges, speaker fabric, leather grain, wood; moody directional lighting; warm-neutral grading matching the greige UI
- Products staged in architectural Scandinavian/luxury interiors or elemental outdoor scenes ("Built for every element" — scraped); heritage referenced visually ("decades of history" copy — scraped)
- Video heroes autoplay muted/looped; imagery via Contentful CDN `images.ctfassets.net` with responsive params (scraped)
- Aspect ratios: 16:9 and taller ~4:5 mobile crops for heroes; 1:1 product tiles (inferred)
- Icons: 1–1.5px stroke line icons (cart, benefits, playback); UI chrome nearly invisible; finish swatches act as the icon system

## 7. Motion & Interaction
### Timing & curves (all inferred; the feel is documented "cinematic/luxury")
| Token | Value | Use |
|---|---|---|
| duration-micro | 200–250ms | links, buttons, swatch rings |
| duration-ui | 350–450ms | menus, drawers, sticky bar in/out |
| duration-media | 600–800ms | image zooms, crossfades, reveals |
| duration-hero | 1000–1200ms | hero crossfades, video fade-ins |
| ease-cinematic | `cubic-bezier(0.22, 1, 0.36, 1)` | media, reveals (long decel tail) |
| ease-ui | `cubic-bezier(0.4, 0, 0.2, 1)` | buttons, menus |

### Animation inventory
- **Hero**: video fades in from black ~1000ms; overlaid headline rises ~20px + fades, delayed ~300ms after media (inferred)
- **Scroll-driven product story**: on feature bands, image scale eases 1.05→1.0 and captions fade-up as the band enters; some PDP sections pin briefly while product frames scrub through the 8-frame sequence (sticky scrub) (inferred)
- **Parallax**: subtle background image translate at ~0.9× scroll speed on full-bleed bands (inferred)
- **Hover micro**: tile zoom scale(1.03) 600ms; arrow buttons fade in over carousels; underline slide-in on links; swatch ring grows from center 200ms (inferred)
- **Carousel**: horizontal slide with `ease-cinematic` 600ms; swipe with momentum on touch (inferred)
- **Sticky buy-bar**: translates down into view 350ms once hero scrolls past (inferred)
- **Stagger**: caption elements 100–150ms apart, max 3 steps (inferred)
- **Page transitions**: none/simple fade (inferred)
- **Reduced motion**: video stills replace autoplay, scrubs/parallax disabled, opacity fades retained (inferred best practice)

## 8. Voice & Copy
- Elevated, sensorial, confident; short declarative fragments; heritage + innovation framing; sentence case
- Signature cadence: two-beat "Statement. Fragment." — real examples (scraped): "The ultimate noise cancelling headphones. Nothing less." · "Beo Grace Wireless sound. Connected to the moment."
- Long-form feature lines run poetic (scraped): "A headphone experience that reaches back into decades of history to redefine your listening future" · "Wireless speaker designed to move seamlessly from indoors to out - without compromising on power" · "Built for every element"
- Microcopy minimal and polite: "Shop", "Select a colour", "Explore our bestsellers"; luxury gifting instead of discounts ("complimentary powerbank valued at 145€/$179" — scraped); prices stated plainly
- Naming system as copy: Beo- prefixes (Beoplay, Beosound, Beo Grace) and evocative finish names double as brand voice
- Technical proof points named, not numbered into tables: Dolby Atmos, titanium drivers (scraped) — specs appear inside sentences
- Newsletter framed as belonging: "The House of Bang & Olufsen" (scraped)
- Never used: discount percentages, urgency timers, exclamation marks, feature-checklist grids

## 9. Signature Moves
- Full-bleed material-porn photography/video as the primary layout element — the UI floats on it
- Two-beat headline cadence ending in a punchline fragment ("…Nothing less.")
- Monochrome interface over warm greige/white; product finishes are the only palette
- Evocative finish names rendered as copy (Century Brown, Hourglass Sand, Sunset Apricot)
- Light-weight (300) oversized grotesque display type with tight leading
- Pill CTAs and hairline swatch rings as nearly the only chrome; media always square-cornered
- Slow cinematic motion: 600–1200ms crossfades, gentle scroll-scrubbed product sequences
- Dark cinematic hero ↔ light gallery body alternation; luxury gifting promos, never discount banners

## 10. Emulation Tokens
```css
:root {
  /* color (inferred unless noted) */
  --color-bg: #FFFFFF;                 /* scraped: light ground */
  --color-surface: #F4F2EF;
  --color-surface-hover: #EDEAE6;
  --color-bg-dark: #0F0F0F;
  --color-surface-dark: #1C1C1C;
  --color-text: #1A1A1A;
  --color-text-2: #707070;
  --color-text-inverse: #FFFFFF;
  --color-text-inverse-2: #B3B0AC;
  --color-border: #E5E2DE;
  --color-border-dark: rgba(255,255,255,0.16);
  --color-btn-hover: #333331;  --color-btn-active: #0D0D0C;
  --color-btn-disabled-bg: #D8D5D0; --color-btn-disabled-text: #9C9994;
  --color-error: #C0392B;
  --overlay-hero: linear-gradient(180deg, rgba(0,0,0,0) 45%, rgba(0,0,0,0.45) 100%);
  --shadow-overlay: 0 8px 24px rgba(0,0,0,0.08);
  /* type */
  --font-sans: "BeoSans", "Neue Haas Grotesk", "Helvetica Neue", Helvetica, Arial, sans-serif; /* inferred */
  --text-hero: 60px; --text-h2: 38px; --text-h3: 26px; --text-sub: 19px;
  --text-body: 16px; --text-ui: 14px; --text-caption: 13px;
  --weight-display: 300; --weight-body: 400; --weight-ui: 500;
  --leading-hero: 1.08; --leading-heading: 1.2; --leading-body: 1.5;
  --tracking-display: -0.01em; --tracking-ui: 0.01em;
  /* space */
  --space-1: 8px;  --space-2: 16px; --space-3: 32px;
  --space-4: 64px; --space-5: 120px; --space-6: 180px;
  /* shape */
  --radius-pill: 9999px;   /* buttons */
  --radius-media: 0;       /* imagery square-edged */
  --radius-input: 0;
  /* z-index (inferred) */
  --z-header: 10; --z-megamenu: 20; --z-drawer: 30; --z-modal: 40; --z-banner: 50;
  /* motion */
  --duration-micro: 225ms; --duration-ui: 400ms;
  --duration-media: 700ms; --duration-hero: 1100ms;
  --ease-cinematic: cubic-bezier(0.22, 1, 0.36, 1);
  --ease-ui: cubic-bezier(0.4, 0, 0.2, 1);
  /* layout: breakpoints ~768 / 1024 / 1440 */
  --max-width: 1440px; --max-width-text: 640px;
}
```

```css
/* B&O primary pill button with states */
.btn-pill {
  padding: 14px 32px; border: none; border-radius: var(--radius-pill);
  font: 500 14px/1 var(--font-sans); letter-spacing: 0.01em;
  color: var(--color-text-inverse); background: var(--color-text);
  transition: background var(--duration-micro) var(--ease-ui);
}
.btn-pill:hover  { background: var(--color-btn-hover); }
.btn-pill:active { background: var(--color-btn-active); }
.btn-pill:focus-visible { outline: 2px solid var(--color-text); outline-offset: 2px; }
.btn-pill:disabled { background: var(--color-btn-disabled-bg); color: var(--color-btn-disabled-text); }
.btn-pill--inverse { background: #FFFFFF; color: var(--color-text); }
.btn-pill--inverse:hover { background: #E8E6E2; }
```

```css
/* B&O product tile with slow zoom */
.tile { background: var(--color-surface); }
.tile .media { overflow: hidden; aspect-ratio: 1 / 1; }
.tile .media img { width: 100%; height: 100%; object-fit: cover;
  transition: transform var(--duration-media) var(--ease-cinematic); }
.tile:hover .media img { transform: scale(1.03); }
.tile h3 { font: 400 26px/1.25 var(--font-sans); margin: 24px 0 4px; }
.tile .desc { font: 400 16px/1.5 var(--font-sans); color: var(--color-text-2); }
.tile .price { font: 400 13px/1.5 var(--font-sans); color: var(--color-text-2); margin-top: 8px; }
```

```css
/* Signature: full-bleed cinematic hero with scrim + rising caption */
.hero { position: relative; height: 100vh; background: var(--color-bg-dark); overflow: hidden; }
.hero video, .hero img { position: absolute; inset: 0;
  width: 100%; height: 100%; object-fit: cover; }
.hero::after { content: ""; position: absolute; inset: 0; background: var(--overlay-hero); }
.hero .caption { position: absolute; inset-inline: 0; bottom: 10vh; z-index: 1;
  text-align: center; color: var(--color-text-inverse); }
.hero .caption h1 { font: 300 clamp(32px, 5vw, 60px)/1.08 var(--font-sans);
  letter-spacing: -0.01em; }
@media (prefers-reduced-motion: no-preference) {
  .hero .caption { animation: rise 900ms var(--ease-cinematic) 300ms both; }
  @keyframes rise { from { opacity: 0; transform: translateY(20px); } }
}
```

```css
/* B&O material finish swatch selector */
.swatches { display: flex; gap: 16px; align-items: center; }
.swatch { width: 28px; height: 28px; border-radius: 50%;
  background-size: cover; background-position: center;  /* real material photo */
  border: 1px solid var(--color-border); cursor: pointer; position: relative;
  transition: transform var(--duration-micro) var(--ease-ui); }
.swatch:hover { transform: scale(1.08); }
.swatch[aria-checked="true"]::after { content: ""; position: absolute; inset: -5px;
  border: 1px solid var(--color-text); border-radius: 50%; }
.swatch-name { font: 400 13px/1.5 var(--font-sans); color: var(--color-text-2); }
/* finish names are copy: "Century Brown", "Hourglass Sand", "Sunset Apricot" */
```
