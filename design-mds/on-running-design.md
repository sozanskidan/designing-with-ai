# On (On Running) — Web Design Language
> Source: https://www.on.com/en-us/ (scraped: full structure, copy, theme-color) · abcdinamo.com/custom/on (typeface documentation, fetched — On Diatype details, weights, design rationale) · Product/listing subpages are JS-rendered and returned only metadata (two attempts) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
On.com is Swiss-engineered performance retail: white canvas (scraped meta theme-color `#fff`), near-black type in the custom **On Diatype**, and huge product photography kept afloat by disciplined grid work. The typeface *is* the design thesis — Dinamo customized Diatype to be "ultra smooth, airy, and extra round" to reflect On's mission of making running feel effortless, with O's redrawn as perfect geometric circles echoing the stacked-O-N logo (all documented). Commerce sections are clean and functional; storytelling goes full-bleed and cinematic through a scroll-driven narrative ("Inspired by athletes", "Swiss engineering" — scraped slide sequence). Everything scrolls sideways: categories, products, and stories are carousels. It feels like a sports-science lab that hired a Zurich design studio — because that's literally what it is.

## 2. Color
| Role | Value | Notes |
|---|---|---|
| Background | `#FFFFFF` | **scraped** meta theme-color `#fff` |
| Surface / product wells | `#F5F5F4` | light warm grey behind carousels/cards (inferred) |
| Editorial ivory | `#F2EFE9` | warm band color in brand storytelling (inferred, matches brand palette) |
| Text primary | `#121212` | near-black (inferred) |
| Text secondary | `#6B6B6B` | category lines, meta (inferred) |
| Text tertiary | `#9E9E9E` | placeholders, disabled (inferred) |
| Accent / action | `#000000` | black is the CTA color — no brand accent in UI (inferred) |
| Border | `#E0E0E0` | 1px hairlines on cards, inputs, footer rules (inferred) |
| Border strong | `#121212` | secondary button outline (inferred) |
| Sale / error | `#D0342C`-class red | price cuts, form errors only (inferred) |
| Success | `#1E7B34` | form feedback (inferred) |

### States & overlays (inferred)
| Role | Value |
|---|---|
| Primary button hover | `#2B2B2B` (black lifts one step) |
| Primary button active | `#000000` |
| Secondary hover | fill `#121212`, text `#FFF` (inversion) |
| Link hover | underline; color unchanged |
| Card hover | image swap (product → on-foot) + name underline |
| Overlay scrim | `rgba(0,0,0,.35)` behind drawers/menus |
| Focus ring | `2px solid #121212`, offset 2px |
| Disabled | `#9E9E9E` text on `#F5F5F4` |
- No gradients in UI; dark sections use photography, not flat black bands (inferred). No dark mode (theme-color fixed `#fff`, scraped).

## 3. Typography
- **Families (documented, from Dinamo):**
  - **On Diatype** — bespoke Diatype customization: "ultra smooth, airy, and extra round"; circular letterforms matched to the logo; simplified punctuation; contextual alternate that renders the On logo. **Cuts: Regular, Mono, Semi Mono + extended Black weight.** Designed by Renan Rosatti & Fabian Harb at Dinamo.
  - **ABC Arizona** (Dinamo serif) — editorial pairing used in OFF Magazine contexts (documented).
  - CJK/Hangul companion faces advised by Dinamo for global consistency (documented).
- **(inferred) stacks:** `'On Diatype','Diatype',Helvetica,Arial,sans-serif`; data labels `'On Diatype Mono',ui-monospace,monospace`.
- **Weights:** 400 Regular (body/UI), 500 medium UI (inferred), Black ~900 for campaign display (documented cut).
- **Case (scraped):** Title Case for campaign/collection names ("The Cloudmonster Collection", "Stories that move"); sentence case for descriptive copy ("Engineered for responsive runs. Finished in new colorways."); CTAs "Shop Now", "Explore the collection", "Read more", "Subscribe".

### Type scale (inferred sizes; roles scraped)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | clamp 40→80px | Black 900 | 1.0–1.05 | -0.01em | hero, mission statement |
| H1 | 40–48px | 900/500 | 1.1 | -0.005em | collection headers |
| H2 | 28–32px | 500 | 1.2 | 0 | section heads ("Stories that move") |
| H3 / story title | 20–22px | 500 | 1.3 | 0 | tiles |
| Product name | 16px | 500 | 1.4 | 0 | cards |
| Body | 14–16px | 400 | 1.5–1.6 | 0 | descriptions |
| UI | 14px | 500 | 1.4 | 0 | nav, buttons |
| Meta / caption | 12px | 400 | 1.5 | +0.01em | color counts, legal |
| Data / spec label | 11–12px | Mono 400 | 1.4 | +0.03em | tech callouts (Mono cut) |
- Mission statement set huge and bare: "Ignite the human spirit through movement" (scraped) — display size, max ~14ch measure.
- Font loading: self-hosted woff2, preload + swap (inferred). Mono/Semi-Mono cuts exist specifically for technical labeling (documented).

## 4. Layout & Grid
- **Homepage structure (scraped order):** hero (Cloudmonster Collection + CTA) → shop nav (Shoes / Apparel / Accessories) → activity category carousel (Running, Road, Marathon, Trail, Lifestyle, Hiking, Tennis, Training) → shoe model carousel → "Stories that move" tiles → mission statement + Read more → multi-slide brand narrative ("Inspired by athletes", "Swiss engineering") → newsletter form → footer.
- **Header:** slim white sticky bar ~60–64px; logo left; category links; search/account/cart right (arrangement inferred; categories scraped).
- **Grid:** 12-col fluid, gutter 16–24px; content max ~1440–1536px; heroes and narrative slides full-bleed (inferred).
- **Carousel geometry:** slides peek at viewport edge to signal scrollability; gap 16–24px; product cards ~4 across desktop, 2 mobile (inferred).
- **Spacing scale (inferred):** 8-based — 8 / 16 / 24 / 32 / 48 / 64 / 96px; section rhythm 64–120px; narrative slides 100vh.
- **Breakpoints:** ~640 / 1024 / 1440px (inferred).
- **Footer (scraped):** newsletter block (email + Subscribe + privacy-acceptance language) → columns: Support (Help & support, Chat, Become a member, Refer a friend, Gift cards, Stores) · Company (About On, Careers, Investors, Press & media, Affiliates) · Legal (Terms, Privacy policy, Accessibility, Imprint) → 7 social links → "© On 2026". Accessibility statement present.
- **z-index (inferred):** header 100 · flyout 90 · search overlay 110 · cart drawer 200 · scrim 190.

## 5. Components
### Buttons
| Property | Primary | Secondary | Text link |
|---|---|---|---|
| Fill | `#000` | `#FFF` | none |
| Text | `#FFF`, 14px, 500, Title Case ("Shop Now" — scraped label) | `#121212` | 14px + underline or arrow |
| Border | none | 1px `#121212` | — |
| Radius | 4px (inferred; near-square pill-less) | 4px | — |
| Padding | 14px 28px | 14px 28px | — |
| Hover | `#2B2B2B`, 200ms ease-out | inversion to black/white | underline slides |
| Active | `#000` pressed | held | — |
| Focus | 2px solid `#121212`, offset 2px | same | same |
| Disabled | `#9E9E9E` on `#F5F5F4` | 40% opacity | — |
(labels scraped: "Shop Now", "Explore the collection", "Read more", "Subscribe", "Try Again"; metrics inferred)

### Product cards (context scraped, anatomy inferred)
Light-grey well `#F5F5F4`, shoe at 3/4 angle with soft contact shadow → name (Diatype 500 16px) → activity/category line 12px grey → price → colorway count ("6 colors"). Hover: image swaps to on-foot shot, subtle 1.02 scale.

### Category tiles (scraped)
Activity-labeled image tiles in a swipeable row (Running, Road, Marathon, Trail, Lifestyle, Hiking, Tennis, Training); label overlaid bottom-left in white 500 with scrim, or below tile (inferred rendering).

### Story tiles (scraped)
Editorial photo, headline, "Read more" link; 2–3-up rows.

### Carousel controls (scraped)
Explicit Previous/Next steppers on every carousel — circular ghost buttons with chevrons (inferred shape), plus swipe.

### Newsletter (scraped)
Email input + Subscribe button + privacy acceptance line; input 1px `#E0E0E0` border, radius 4px, focus border `#121212` (styling inferred).

### Nav flyouts
Wide white panels with category thumbnail links, hairline top border, 250ms fade-slide (inferred).

## 6. Imagery & Iconography
- **Product:** crisp studio shots on white/light grey, shoes floating with soft contact shadows; obsessive macro detail of CloudTec sole cavities and Speedboard (register inferred; carousel context scraped).
- **Campaign:** cinematic athlete photography — Alpine passes, dawn light, motion blur; Swiss mountains recur (narrative slide "Swiss engineering" scraped).
- **Editorial:** OFF Magazine pairs Diatype headlines with ABC Arizona serif (documented).
- **Icons:** minimal geometric line set (search, account, cart, chevrons); rounded terminals matching Diatype's circles (inferred); carousel chevrons scraped as Previous/Next controls.
- The logo's stacked O/N mark can be typed via Diatype's contextual alternate `[logo]` (documented) — used as a graphic sign-off.
- No illustration; technical stories told with photography + Mono-cut labels.

## 7. Motion & Interaction
- **Carousels (scraped presence):** momentum swipe + stepper controls; slide ease ~350–450ms `cubic-bezier(.25,.1,.25,1)` (timing inferred).
- **Scroll-driven brand narrative (scraped):** sequential full-viewport slides ("Inspired by athletes" → "Swiss engineering" → …) — scroll-snap or pinned sections with crossfading media and staggered text (implementation inferred).
- **Hero:** autoplay video/imagery with headline rising 20–30px + fade, ~600ms, delayed CTA (inferred).
- **Hover inventory (inferred):** product image swap (crossfade 250ms); card scale 1.02; button lift `#2B2B2B`; link underline reveal; nav flyout fade-slide 250ms.
- **Reveals:** tiles fade + translate-up 400–500ms, staggered 60–90ms, triggered ~15% into viewport (inferred).
- **Cart drawer:** 350ms slide-in right with scrim fade (inferred).
- **Loading:** skeleton shimmer on product grids (inferred, standard for their stack).
- **Reduced motion:** scroll-narrative degrades to stacked static sections, reveals to opacity (inferred best practice).

## 8. Voice & Copy
- Tone: energetic but engineered — performance claims stated cleanly; mission language elevated.
- Scraped examples: **"The Cloudmonster Collection"**, **"Engineered for responsive runs. Finished in new colorways."**, **"Stories that move"**, **"Ignite the human spirit through movement"**, slides **"Inspired by athletes"**, **"Swiss engineering"**.
- Pattern: two-beat copy — engineering fact + emotional payoff ("Engineered for X. Finished in Y.").
- CTAs (scraped): "Shop Now", "Explore the collection", "Read more", "Subscribe".
- Swissness invoked explicitly; athletes credited by name in stories; membership language ("Become a member", "Refer a friend" — scraped footer).
- Newsletter privacy language present and plain (scraped).

## 9. Signature Moves
- Custom round-geometry grotesque (On Diatype) with perfectly circular O's echoing the logo — documented, and visible in every headline.
- White-on-white staging: shoes floating over white/pale grey with soft contact shadows.
- Everything is a carousel — categories, products, and stories all scroll horizontally with edge-peek + steppers.
- Scroll-driven full-viewport brand narrative mid-homepage.
- "Engineered for X. Finished in Y." two-beat copy rhythm.
- Black rectangular CTAs as the only high-contrast UI element.
- Mono/Semi-Mono Diatype cuts for technical labels and data.
- Mission statement set huge and bare on an empty band.
- Logo as a typed contextual alternate — the mark lives inside the font.

## 10. Emulation Tokens
```css
:root {
  /* ---- color (bg scraped; rest inferred) ---- */
  --color-bg: #ffffff;                 /* scraped theme-color */
  --color-surface: #f5f5f4;
  --color-ivory: #f2efe9;
  --color-text: #121212;
  --color-text-secondary: #6b6b6b;
  --color-text-tertiary: #9e9e9e;
  --color-accent: #000000;
  --color-accent-hover: #2b2b2b;
  --color-border: #e0e0e0;
  --color-border-strong: #121212;
  --color-sale: #d0342c;
  --color-success: #1e7b34;
  --overlay-scrim: rgba(0,0,0,.35);
  --shadow-product: 0 20px 30px -18px rgba(0,0,0,.25);  /* floating-shoe contact shadow */
  --shadow-card: 0 4px 16px rgba(0,0,0,.06);
  /* ---- typography (family documented; sizes inferred) ---- */
  --font-sans: 'On Diatype','Diatype',Helvetica,Arial,sans-serif;
  --font-mono: 'On Diatype Mono',ui-monospace,SFMono-Regular,monospace;
  --font-weight-body: 400; --font-weight-ui: 500; --font-weight-display: 900; /* Diatype Black */
  --text-display: clamp(2.5rem, 5vw + 1rem, 5rem);
  --text-h1: clamp(2.25rem, 3vw + 1rem, 3rem);
  --text-h2: clamp(1.625rem, 1.5vw + 1rem, 2rem);
  --text-h3: 1.3125rem;
  --text-product: 1rem;
  --text-body: .9375rem;
  --text-ui: .875rem;
  --text-caption: .75rem;
  --text-data: .71875rem;               /* mono labels */
  --leading-display: 1.02; --leading-body: 1.55;
  --tracking-display: -0.01em; --tracking-data: .03em;
  /* ---- layout ---- */
  --radius-sm: 4px; --radius-md: 8px; --radius-round: 999px; /* stepper buttons */
  --space-1: 8px; --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-5: 48px; --space-6: 64px; --space-section: 104px;
  --max-width: 1440px;                  /* (inferred) */
  --gutter: 24px; --carousel-gap: 20px;
  --header-height: 62px;
  /* breakpoints (inferred): 640 / 1024 / 1440 */
  --z-flyout: 90; --z-header: 100; --z-search: 110; --z-scrim: 190; --z-drawer: 200;
  /* ---- motion (inferred) ---- */
  --ease-out: cubic-bezier(.25,.1,.25,1);
  --ease-soft: cubic-bezier(.33,1,.68,1);
  --duration-hover: .2s; --duration-swap: .25s;
  --duration-slide: .4s; --duration-reveal: .5s; --duration-hero: .6s;
}
```

```css
/* On primary + secondary button, all states (labels scraped, metrics inferred) */
.btn-primary {
  font: var(--font-weight-ui) var(--text-ui)/1 var(--font-sans);
  color: #fff; background: var(--color-accent);
  border: none; border-radius: var(--radius-sm);
  padding: 14px 28px; cursor: pointer;
  transition: background var(--duration-hover) var(--ease-out),
              transform var(--duration-hover) var(--ease-out);
}
.btn-primary:hover  { background: var(--color-accent-hover); }
.btn-primary:active { background: #000; transform: scale(.99); }
.btn-primary:focus-visible { outline: 2px solid var(--color-border-strong); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-surface); color: var(--color-text-tertiary); }
.btn-secondary {
  background: #fff; color: var(--color-text);
  border: 1px solid var(--color-border-strong); border-radius: var(--radius-sm);
  padding: 13px 27px;
  transition: background var(--duration-hover) var(--ease-out),
              color var(--duration-hover) var(--ease-out);
}
.btn-secondary:hover { background: var(--color-text); color: #fff; }
```

```css
/* Product card with floating shoe + hover image swap */
.shoe-card { display: grid; gap: 10px; }
.shoe-card .media { position: relative; aspect-ratio: 1; border-radius: var(--radius-md);
  background: var(--color-surface); overflow: hidden; }
.shoe-card .media img { position: absolute; inset: 10%;
  width: 80%; height: 80%; object-fit: contain;
  filter: drop-shadow(var(--shadow-product));
  transition: opacity var(--duration-swap) var(--ease-out),
              transform var(--duration-swap) var(--ease-out); }
.shoe-card .media img.alt { opacity: 0; }
.shoe-card:hover .media img.alt { opacity: 1; }
.shoe-card:hover .media img { transform: scale(1.02); }
.shoe-card h3 { font: var(--font-weight-ui) var(--text-product)/1.4 var(--font-sans); margin: 0; }
.shoe-card .meta { font-size: var(--text-caption); color: var(--color-text-secondary); }
```

```css
/* Signature effect: editorial split hero + mission statement band */
.split-hero { display: grid; grid-template-columns: 1fr 1fr; min-height: 88svh; }
.split-hero .media img { width: 100%; height: 100%; object-fit: cover; }
.split-hero .copy { display: grid; align-content: center; gap: var(--space-3);
  padding: var(--space-6); background: var(--color-ivory); }
.split-hero h1 { font: var(--font-weight-display) var(--text-display)/var(--leading-display) var(--font-sans);
  letter-spacing: var(--tracking-display); margin: 0; max-width: 12ch; }
.split-hero p { font: var(--font-weight-body) var(--text-body)/var(--leading-body) var(--font-sans);
  color: var(--color-text-secondary); max-width: 40ch; }
@media (max-width: 1024px) { .split-hero { grid-template-columns: 1fr; } }
.mission { min-height: 70vh; display: grid; place-content: center; text-align: center; }
.mission h2 { font: var(--font-weight-display) var(--text-display)/1.05 var(--font-sans);
  max-width: 14ch; margin: 0; }
@media (prefers-reduced-motion: reduce) {
  * { transition-duration: .01ms !important; animation-duration: .01ms !important; }
  .scroll-narrative { scroll-snap-type: none; }
}
```
