# IKEA — Web Design Language
> Source: https://www.ikea.com · https://www.ikea.com/us/en/ · https://www.robinwhittleton.com/2025/04/23/ikea-web-fonts/ · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped; component conventions align with IKEA's Skapa design system (docs at skapa.ikea.com are robots-blocked, so Skapa specifics are inferred/known-from-documentation)

## 1. Design Philosophy
Ikea.com is democratic-design retail at scale: a friendly, high-density storefront where the Swedish blue-and-yellow brand pair frames endless warm lifestyle photography and relentlessly clear prices. The UI (built on IKEA's Skapa design system) is rounded, tactile and mobile-first — pill buttons, chunky search bar, horizontally scrolling category carousels — optimized for millions of shoppers rather than aesthetic minimalism. Typography is deliberately unglamorous: a custom Noto Sans variant ("Noto IKEA") chosen for worldwide script coverage and tiny file sizes — brand consistency measured in kilobytes. The tone is "Hej!" — cheerful, budget-conscious, practical; price is the hero graphic on almost every module.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | Clean white storefront ground |
| Surface (search, tiles, image bg) | `#F5F5F5` (inferred) | Neutral grey fills |
| Surface hover | `#EFEFEF` (inferred) | List rows, chips |
| Text primary | `#111111` (inferred, Skapa) | Near-black ink |
| Text secondary | `#484848` (inferred) | Descriptions |
| Text tertiary / meta | `#767676` (inferred) | Review counts, captions |
| Brand blue (primary action) | `#0058A3` (inferred, official brand) | Primary buttons, links, IKEA Family price accents |
| Blue hover | `#004F93` (inferred) | Primary button hover |
| Blue active | `#003E75` (inferred) | Pressed |
| Brand yellow | `#FFDB00` (inferred, official brand) | Logo field, promo highlights; sparing in UI |
| Yellow pairing text | `#0058A3` on yellow (inferred) | Logo lockup convention |
| Dark button | `#111111` fill (inferred, Skapa emphasised) | "Add to bag" variants |
| Dark button hover | `#333333` (inferred) | |
| Sale / "new lower price" red | `#CC0008` (inferred, Skapa convention) | Discount price + savings badges |
| IKEA Family price | `#0058A3` (inferred) | Second price row on cards (dual pricing scraped) |
| Borders | `#DFDFDF` (inferred) | 1px card and divider rules |
| Border strong / focus | `#111111` + 1px `#FFF` gap (inferred, Skapa focus style) | Double-ring focus |
| Rating star | `#111111` (inferred) | Monochrome stars + "(count)" (structure scraped) |
| Overlay | `rgba(0,0,0,0.6)` (inferred) | Modals, image zoom |
| Semantic positive | `#0A8A00` (inferred) | "In stock" states |
| Semantic error | `#E00751` (inferred) | Form errors |

No dark mode on the storefront. Color discipline: blue for action, red only for price drama, yellow only for brand moments (inferred).

## 3. Typography
- **Family (documented, scraped from web-fonts article):** `Noto IKEA` — custom variant of Google Noto Sans with amended characters (notably capital "I"); replaced Verdana (2010–) which replaced print-era Futura (~1954). Chosen for pan-script brand consistency (Thai, Korean, etc. all get a matching Noto).
- **Stack (documented):** `"Noto IKEA", "Noto Sans", sans-serif` (article cites `Noto IKEA, Noto Sans, …, sans-serif` with per-locale entries in between)
- **Weights (documented):** Normal 400 and Bold 700 only.
- **Loading (documented):** WOFF2 only (Brotli-compressed); ~2KB CSS + ~12KB per weight for Latin markets; self-hosted, per-language font fragments at `https://www.ikea.com/global/assets/fonts/en/font-fragment.html`.
- **OpenType features (documented):** retained slashed zero, tabular numbers, diacritic positioning; stripped swashes, small caps and other unused features to hit the size budget.
- **Figures:** tabular numbers documented — use for prices and comparison tables.

Type scale (approx./inferred; conventions scraped):

| Name | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Hero | 32–48px / 2–3rem | 700 | 1.15 | 0 | Campaign banners ("Welcome to IKEA USA") |
| H2 section | 22–28px / 1.5rem | 700 | 1.2 | 0 | "Back to school – but make it budget-friendly" |
| H3 / module title | 18–20px / 1.125rem | 700 | 1.3 | 0 | Card group titles |
| Product name | 14px / 0.875rem | 700 | 1.4 | 0, CAPS | FÅGELFJÄLLET, MELLGRUND (scraped) |
| Product descriptor | 12–14px / 0.75rem | 400 | 1.4 | 0 | "Desk, 47 1/4x23 5/8"" style lines |
| Price integer | 18–28px / 1.5rem | 700 | 1 | 0 | Superscript-cent price module |
| Price cents | ~55% of integer, superscript | 700 | 1 | 0 | `$129.⁹⁹` treatment |
| Body | 14–16px / 0.875rem | 400 | 1.5 | 0 | Editorial copy |
| Button label | 14px / 0.875rem | 700 | 1 | 0 | "Shop", "See all" |
| Fine print / legal | 12px / 0.75rem | 400 | 1.5 | 0 | Footer, disclaimers |

- Responsive shift: hero 48 → 28px mobile; density otherwise preserved (inferred).
- **Case (scraped):** sentence case headlines; Title Case nav; ALL-CAPS Swedish product names as brand identifiers.

## 4. Layout & Grid
- **Container:** max ~1440px (inferred, Skapa), gutters 16px mobile / 24px tablet / 40px desktop.
- **Grid:** responsive 4 / 8 / 12 columns, 16–24px gutters (inferred, Skapa convention); product rails override grid with horizontal scroll.
- **Breakpoints (inferred, Skapa):** 600 / 900 / 1200 px (sm/md/lg).
- **Spacing scale (inferred, Skapa 8px base):** 2, 4, 8, 12, 16, 24, 32, 40, 48, 64. Section rhythm compact for retail: 40–64px desktop, 24–32px mobile.
- **Header (scraped, us/en):** top row — logo left, prominent rounded search field center (full-width on mobile), utility cluster right (Login/sign up, Favorites heart, Shopping bag). Second row — category nav: Products, Rooms, Deals, Design & ideas, Services. Third strip — ZIP code entry + store selector. Sticky search on scroll (inferred).
- **Home body (scraped):** horizontal category carousel (Deals, Storage & organization, Beds & mattresses, Sofas & armchairs, Rugs & home textiles, Desks & desk chairs, Kitchen appliances + 15 more) → promo hero banners → product-recommendation rails with "Skip listing" a11y links → editorial/inspiration grids → video embeds.
- **Footer (scraped):** columns Help / Shop & Learn / About IKEA / Legal; IKEA Family + IKEA Business Network blocks; payment icons (Visa, Mastercard, Discover, Amex, PayPal, Apple Pay, Google Pay…); country selector; global site adds 60+ country links.
- **Z-index (inferred):** content 1 · sticky header 100 · dropdown/search suggest 200 · overlay 300 · modal/drawer 400 · toast 500.

## 5. Components
**Primary pill button (Skapa "button/emphasised")**
- Full pill, radius 999px (Skapa uses ~64px); height 40px small / 48px regular; padding 12px 24px.
- Label 14px / 700 / sentence case.
- Blue variant: `#0058A3` fill, white label. Hover `#004F93`, active `#003E75` (inferred). Dark variant: `#111111` fill, hover `#333333` (inferred).
- Focus-visible (Skapa double ring, inferred): 1px white inner gap + 2px `#111` outer ring.
- Disabled: `#DFDFDF` fill, `#929292` label (inferred).
- Transition: background 150ms ease-out.

**Secondary / ghost pill**
- White fill, 1px `#111111` border, dark label; hover: `#F5F5F5` fill (inferred). Tertiary: borderless text button, underline on hover.

**Icon buttons**
- 40px circles (heart, bag, share); hover `#F5F5F5` fill circle (inferred). Bag/favorites show count badge: 16px circle `#0058A3`, white 10px numeral (inferred).

**Search bar**
- Grey `#F5F5F5` fully-rounded field, height 48px, magnifier icon left, camera (visual search) icon right; focus: white fill + `#111` ring; dominates header (presence scraped, styling inferred).

**Product card (anatomy scraped)**
- Image on white/`#F5F5F5` (thumbnail, hover swaps to lifestyle/detail shot — inferred) → optional red "New lower price"/percent-savings badge → ALL-CAPS name → grey descriptor line → price module with superscript cents → IKEA Family second price (blue) when applicable → star rating + "(review count)" → "More options" variant expander → circular add-to-bag icon button bottom-right (inferred position).
- Card itself borderless; hover: image swap only, no lift (inferred).

**Price module (Skapa convention, inferred styling; dual pricing scraped)**
- `$` small, integer huge bold, cents superscript; "New lower price" = red `#CC0008` price + small struck-through previous price with "Reg." label; IKEA Family price row in blue with member label.

**Category chips/tiles carousel (scraped)**
- Square image tile + centered caption, or rounded chip row; arrow buttons at rail ends; "Skip listing" skip-link for keyboard users (scraped).

**Inputs / forms**
- 4px-radius rectangles (Skapa inputs are squarer than buttons, inferred), 1px `#929292` border; focus `#0058A3` 2px border; labels above, helper text 12px below; error `#E00751` border + message.

**Badges**
- "New", "Top seller", "Last chance": small rectangular 2–4px-radius labels, `#111` on white or red/white for price events (inferred).

**Footer**
- Bold 14px column heads, 14px/400 links; newsletter CTA; legal fine print 12px `#767676` (structure scraped).

## 6. Imagery & Iconography
- Lifestyle photography: warm, lived-in, slightly cluttered room scenes with natural light ("atmospheric photography" — scraped); products always in believable homes; people shown mid-task.
- Studio cutouts on white/`#F5F5F5` for product cards; consistent 1:1 or 3:4 ratios (inferred).
- Video embeds for product demos and designer stories (scraped); designer portrait photography on editorial pages (scraped).
- Icons: rounded 2px-stroke line icons (heart, bag, person, magnifier, camera) in `#111111` (inferred, Skapa iconography).
- ALL-CAPS Swedish product names function as graphic elements on every card (scraped).
- Promo art: flat `#0058A3`/`#FFDB00` color fields with big prices (inferred from brand conventions).

## 7. Motion & Interaction
Retail-pragmatic: fast, purposeful, never showy. Values inferred unless noted.

| Animation | Spec |
|---|---|
| Category/product rails | Horizontal snap-scroll; arrow click slides one viewport, 300ms ease-out; "Skip listing" link for keyboard (scraped) |
| Card hover | Thumbnail crossfades to lifestyle shot, 200ms ease; cursor zoom on PDP gallery |
| Button hover | Background shift 150ms ease-out; pill never changes shape |
| "More options" | Inline expander reveals variant thumbnails, 200ms height ease (behavior scraped) |
| Add to bag | Icon button pulses once (scale 1→1.15→1, 300ms) + toast slides up 250ms; bag count increments (inferred) |
| Search suggest | Dropdown fades in 150ms; recent searches listed instantly |
| Sticky header | Search bar pins on scroll; category row collapses, 200ms (inferred) |
| Skeletons | Grey `#F5F5F5` shimmer blocks while rails hydrate; shimmer 1.2s linear loop (inferred) |
| Modal/drawer | Cart drawer slides from right 300ms `cubic-bezier(0.4,0,0.2,1)`; scrim fades 200ms |
| Image zoom (PDP) | Click-to-zoom overlay, pinch on mobile; 250ms ease |
| Page transitions | None; instant retail navigation, aggressive lazy-load |

- Stagger: none to minimal (≤50ms) — shoppers shouldn't wait for choreography.
- Easing vocabulary: `ease-out` / `cubic-bezier(0.4,0,0.2,1)`; durations 150–300ms cap.
- Reduced motion: disable shimmer and pulse, keep instant state changes (inferred; a11y is a documented IKEA priority — skip-links scraped).

## 8. Voice & Copy
- Tone: cheerful, thrifty, inclusive; puns and rhythm welcomed; always price-forward; Swedishness worn proudly ("Hej!" greeting — scraped meta: "Hej! Welcome to IKEA Global").
- Sentence case headlines with dashes and colloquial hooks; CTAs are single verbs.
- Real examples (scraped):
  - "Back to school – but make it budget-friendly"
  - "College must-haves at must-have prices"
  - "A better everyday life begins at home!"
  - "Sleep, vibe, study, repeat"
  - "Let's get to work"
- Microcopy directive and plain: "See all", "More options", "Skip listing", "Learn more" (scraped).
- Price copy patterns: "New lower price", "IKEA Family price", "% off" savings callouts (conventions; dual pricing scraped).

## 9. Signature Moves
- Blue `#0058A3` + yellow `#FFDB00` brand pair on a white retail ground.
- ALL-CAPS Swedish product names (FÅGELFJÄLLET, MELLGRUND) as instant identifiers.
- Pill-shaped everything: buttons, search field, badges (Skapa roundness) — while inputs stay squarish.
- Superscript-cent price modules; red "new lower price" drama; dual IKEA Family pricing.
- Horizontally scrolling category tile carousel directly under the header.
- Warm, busy, real-home lifestyle photography over sterile studio scenes.
- Utilitarian Noto IKEA at exactly two weights — clarity over flair, kilobytes over glamour.
- "Hej!"-style friendly, budget-first copywriting with accessibility skip-links baked in.

## 10. Emulation Tokens
```css
:root {
  /* color */
  --color-bg: #ffffff;
  --color-surface: #f5f5f5;             /* inferred */
  --color-surface-hover: #efefef;       /* inferred */
  --color-text: #111111;                /* inferred (Skapa) */
  --color-text-secondary: #484848;      /* inferred */
  --color-text-tertiary: #767676;       /* inferred */
  --color-blue: #0058a3;                /* inferred (official brand) */
  --color-blue-hover: #004f93;          /* inferred */
  --color-blue-active: #003e75;         /* inferred */
  --color-yellow: #ffdb00;              /* inferred (official brand) */
  --color-dark-btn: #111111;            /* inferred */
  --color-dark-btn-hover: #333333;      /* inferred */
  --color-sale-red: #cc0008;            /* inferred (Skapa) */
  --color-family-price: #0058a3;        /* inferred */
  --color-border: #dfdfdf;              /* inferred */
  --color-border-input: #929292;        /* inferred */
  --color-positive: #0a8a00;            /* inferred */
  --color-error: #e00751;               /* inferred */
  --color-overlay: rgba(0,0,0,0.6);     /* inferred */

  /* type — stack documented */
  --font-sans: "Noto IKEA", "Noto Sans", sans-serif;
  --font-weight-body: 400;              /* documented: only 400 + 700 shipped */
  --font-weight-bold: 700;
  --text-hero: clamp(1.75rem, 4vw, 3rem);
  --text-h2: 1.5rem;  --text-h3: 1.125rem;
  --text-product: 0.875rem; --text-desc: 0.75rem;
  --text-body: 0.875rem;    --text-button: 0.875rem;
  --text-price: 1.75rem;    --text-fineprint: 0.75rem;
  --leading-body: 1.5;
  --numeric: tabular-nums;              /* documented: tabular figures retained */

  /* radius & shadow */
  --radius-pill: 999px;                 /* buttons, search, count badges */
  --radius-card: 8px;                   /* inferred */
  --radius-input: 4px;                  /* inferred */
  --radius-badge: 2px;                  /* inferred */
  --shadow-toast: 0 2px 12px rgba(0,0,0,0.16);  /* inferred */

  /* spacing (Skapa-style 8px base, inferred) */
  --space-025: 2px; --space-05: 4px; --space-1: 8px;  --space-15: 12px;
  --space-2: 16px;  --space-3: 24px; --space-4: 32px; --space-5: 40px;
  --space-6: 48px;  --space-8: 64px;
  --space-section: 56px;                /* inferred */

  /* layout — breakpoints (inferred, Skapa): 600 / 900 / 1200 */
  --max-width: 1440px;                  /* inferred */
  --gutter: 16px;                       /* 24–40px ≥900px */

  /* z-index */
  --z-header: 100; --z-suggest: 200; --z-overlay: 300; --z-drawer: 400; --z-toast: 500;

  /* motion */
  --ease-retail: ease-out;
  --ease-drawer: cubic-bezier(0.4, 0, 0.2, 1);   /* inferred */
  --duration-fast: 150ms; --duration-med: 200ms;
  --duration-slide: 300ms; --duration-shimmer: 1.2s;
}
```

```css
/* IKEA primary pill button (blue + dark variants), all states */
.btn-ikea {
  display: inline-flex; align-items: center; justify-content: center;
  min-height: 48px; padding: 12px 24px;
  background: var(--color-blue); color: #fff;
  font: var(--font-weight-bold) var(--text-button)/1 var(--font-sans);
  border: none; border-radius: var(--radius-pill); cursor: pointer;
  transition: background var(--duration-fast) var(--ease-retail);
}
.btn-ikea:hover  { background: var(--color-blue-hover); }
.btn-ikea:active { background: var(--color-blue-active); }
.btn-ikea:focus-visible { /* Skapa-style double ring (inferred) */
  outline: none; box-shadow: 0 0 0 1px #fff, 0 0 0 3px var(--color-text); }
.btn-ikea:disabled { background: var(--color-border); color: #929292; cursor: default; }
.btn-ikea--dark { background: var(--color-dark-btn); }
.btn-ikea--dark:hover { background: var(--color-dark-btn-hover); }
.btn-ikea--secondary { background: #fff; color: var(--color-text);
  box-shadow: inset 0 0 0 1px var(--color-text); }
.btn-ikea--secondary:hover { background: var(--color-surface); }
```

```css
/* IKEA product card with superscript-cent price + dual pricing */
.card-ikea { position: relative; font-family: var(--font-sans); }
.card-ikea__media { aspect-ratio: 3/4; background: var(--color-surface);
  border-radius: var(--radius-card); overflow: hidden; }
.card-ikea__media img { width: 100%; height: 100%; object-fit: contain;
  transition: opacity var(--duration-med) var(--ease-retail); }
.card-ikea__badge { position: absolute; top: 8px; left: 8px;
  background: var(--color-sale-red); color: #fff;
  font: 700 0.75rem/1 var(--font-sans); padding: 4px 8px;
  border-radius: var(--radius-badge); }
.card-ikea__name { margin-top: var(--space-15);
  font: 700 var(--text-product)/1.4 var(--font-sans); text-transform: uppercase; }
.card-ikea__desc { color: var(--color-text-secondary); font-size: var(--text-desc); }
.card-ikea__price { font: 700 var(--text-price)/1 var(--font-sans);
  font-variant-numeric: tabular-nums; margin-top: var(--space-05); }
.card-ikea__price .currency { font-size: 55%; vertical-align: super; }
.card-ikea__price .cents    { font-size: 55%; vertical-align: super; }
.card-ikea__price--sale { color: var(--color-sale-red); }
.card-ikea__family { color: var(--color-family-price);
  font: 700 0.875rem/1.3 var(--font-sans); }
.card-ikea__rating { font-size: 0.75rem; color: var(--color-text-tertiary); }
.card-ikea__addtobag { position: absolute; right: 8px; bottom: 64px;
  width: 40px; height: 40px; border-radius: 50%;
  background: var(--color-blue); color: #fff; border: none; }
```

```css
/* Signature effect: blue/yellow commerce banner + brand lockup */
.banner-ikea {
  display: grid; grid-template-columns: 1fr auto; align-items: center;
  gap: var(--space-3); padding: var(--space-4);
  background: var(--color-blue); color: #fff;
  border-radius: var(--radius-card);
}
.banner-ikea__price-flag {
  background: var(--color-yellow); color: var(--color-text);
  padding: var(--space-2) var(--space-3); border-radius: var(--radius-badge);
  font: 700 2rem/1 var(--font-sans); font-variant-numeric: tabular-nums;
  transform: rotate(-2deg);                 /* price-tag energy */
}
.banner-ikea h3 { font: 700 var(--text-h2)/1.2 var(--font-sans); }
.banner-ikea .btn-ikea { background: #fff; color: var(--color-blue); }
.banner-ikea .btn-ikea:hover { background: var(--color-yellow); color: var(--color-text); }
```
