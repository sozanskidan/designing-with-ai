# Frame.io — Web Design Language
> Source: https://frame.io, https://frame.io/pricing, https://blog.frame.io/2022/10/14/frame-io-rebrand-2022/, adobe.design/stories/process/rebranding-frameio (rebrand process story) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Frame.io is a cinema-dark website: the meta theme-color is pure black (`rgba(0,0,0,1)`, scraped) and the documented brand foundation is "the play of light and shadow," with the symbol designed to capture "the ambience of a windowless edit bay or darkened soundstage" (Adobe Design, documented). The rebrand mandate was explicit — "cinematic, premium, and professional" — executed through a custom Monotype-built variable grotesque (Frame Gothic), a vibrant named palette (Cobalt, Electric, Iris, Coral, White) set deliberately "in contrast to the dark aesthetic of a filmic workspace," and gradients constructed as "an elegant play between warm and cool." Depth comes from cast light and glow, not drop shadows: spotlight shapes derived from the palette sweep across black grounds, and the play-button mark doubles as "rays of light emanating from a single source." Product UI screenshots glow like reference monitors in a grading suite. The site behaves like a title sequence — big statements ending in periods, italic swings mid-headline, carousels gliding laterally.

## 2. Color
Documented palette names from the rebrand (Adobe Design): **Cobalt, White, Electric (teal blue), Iris (purple), Coral**, plus a greyscale/accessibility palette, on black grounds. Hex values were not published — all hexes below are (inferred) matches to renders unless noted.

| Role | Value | Notes |
|---|---|---|
| Background (page) | `#000000` | Scraped via theme-color rgba(0,0,0,1); true black, not near-black |
| Surface 1 (cards) | `#101114` | Elevated charcoal (inferred) |
| Surface 2 (raised) | `#16181d` | Hover/raised panels (inferred) |
| Text primary | `#ffffff` | Documented "White" palette member |
| Text secondary | `#9ba0a8` | Cool gray (inferred; documented greyscale palette exists) |
| Text tertiary | `#6b7078` | Fine print on dark (inferred) |
| Accent — Cobalt | `#2d43ff` | Primary brand blue, CTAs (documented name, inferred hex) |
| Accent — Electric | `#00e0e0` | Teal-blue highlight (documented name, inferred hex) |
| Accent — Iris | `#8b5cf6`–`#a78bfa` range | Purple (documented name, inferred hex) |
| Accent — Coral | `#ff6a5e` | Warm accent (documented name, inferred hex) |
| Border on dark | `rgba(255,255,255,0.12)` | Hairline card strokes (inferred) |
| Border hover | `rgba(255,255,255,0.24)` | Intensified stroke (inferred) |

### Gradient system (documented construction: "warm and cool" interplay; palette derived from the product UI; stops inferred)
| Gradient | Definition | Use |
|---|---|---|
| Iridescent hero | `linear-gradient(120deg, #ff6a5e 0%, #8b5cf6 45%, #2d43ff 75%, #00e0e0 100%)` | Coral→Iris→Cobalt→Electric warm-to-cool sweep; text fills, hero glows |
| Spotlight | `radial-gradient(60% 80% at 50% 0%, rgba(139,92,246,0.35) 0%, rgba(45,67,255,0.15) 45%, transparent 75%)` | Documented "spotlight shapes derived from palette" — cast-light backdrops |
| Cool wash | `linear-gradient(180deg, #16181d 0%, #000000 100%)` | Section base fade |
| Edge glow | `0 0 80px rgba(45, 67, 255, 0.25)` (as shadow) | Screenshot "reference monitor" luminance |

Rules (documented logic): gradients always bridge one warm + one cool member; black stays dominant "for contrast and attention"; the vibrant palette is rationed like practical lights on a dark set.

### State variants (inferred)
| Token | Default | Hover | Active |
|---|---|---|---|
| Primary button (white) | `#ffffff` fill, black label | `#e8e9ec` | `#d5d7db` |
| Primary button (cobalt) | `#2d43ff` fill, white label | `#4b5eff` (lighten on dark) | `#1f32d9` |
| Outline button | 1px `rgba(255,255,255,0.3)` | border → 0.6 alpha + white text | fill `rgba(255,255,255,0.08)` |
| Card | surface-1 + 0.12 border | surface-2 + 0.24 border + glow | — |
| Text link | white or gray | gains Electric/Cobalt tint or underline | — |

## 3. Typography
- **Frame Gothic** — custom modernist variable sans, built with **Monotype** (documented). Variable weight axis with **four preset weights**; specimen range shown Thin → Ultra Light → Light → Regular → Medium → SemiBold → Bold → Ultra Bold; italics "in development" at time of writing, and italic display usage is live on frame.io heroes (scraped: italicized hero subhead and some H2s). Design filter: "Bezier curve shifts… stem length… negative space, taper widths, and ink traps"; character "quirky without trying too hard" (documented quotes).
- Stack: `"Frame Gothic", "Helvetica Neue", Helvetica, Arial, sans-serif`; variable font-weight via `font-variation-settings` (inferred implementation).
- Loading: self-hosted variable WOFF2, swap behavior (inferred).
- Numerals: lining, tabular in pricing tables ($15/$25 per member columns) (inferred).

### Type scale (inferred from renders; hero/pricing copy scraped)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display XL | 64–80px | 600–700 | 1.0–1.05 | -0.02em | "One platform for all your creative work." |
| Display italic accent | matches parent | 500–600 italic | — | — | Mid-headline emphasis swings |
| H2 | 40–48px | 600 | 1.1 | -0.015em | Section titles |
| H3 | 26–30px | 600 | 1.2 | -0.01em | Card titles, pricing tier names |
| Body lg | 18–20px | 400 | 1.5 | 0 | Subheads, tier descriptions |
| Body | 16px | 400 | 1.5 | 0 | Feature lists |
| Eyebrow | 12–13px | 500–600 | 1.2 | +0.08em UPPERCASE | Section kickers |
| Price | 40–48px | 600 | 1 | -0.01em | "$15", "$25" + small "/member/mo" |
| Caption/legal | 12–13px | 400 | 1.4 | 0 | Plan footnotes |

Responsive: display 80→44px below 768px; pricing cards stack (inferred). Casing: sentence case with terminal periods on headlines; uppercase only for eyebrows.

## 4. Layout & Grid
- **Containers:** max-width ≈ 1320px, gutters 24px/48px; hero media and gradient fields run full-bleed (inferred).
- **Grid:** 12-column; 4-up feature cards and 4-up pricing tiers (scraped counts); split feature sections ~5/7 copy/screenshot; comparison table full-width.
- **Spacing scale** (inferred 8-based): 8, 16, 24, 32, 48, 64, 96, 120, 160px.
- **Section rhythm (scraped order):** nav → hero (full-bleed image) → 4 feature cards → Workflow Management (carousel) → File Management (screenshots) → Review & Approval (split) → Sharing & Presenting (carousel) → customer logos → pricing (4 tiers + toggle) → FAQ → testimonial → CTA/meeting-scheduler footer.
- Vertical padding 96–140px per section (inferred).
- **Header:** black translucent sticky bar; logo left (play-button mark + wordmark); dropdowns Features / Enterprise / Resources + Pricing; right: "Talk to sales" phone link (scraped) + free-trial CTA.
- **Footer:** dark multi-column sitemap (Features, Resources, Enterprise, Use Cases, Company — scraped), social row (Instagram, YouTube, Facebook, Twitter — scraped), legal + Adobe copyright (scraped).
- **Z-index** (inferred): gradient/glow layers -1 → content 0 → sticky nav 100 → dropdown 200 → video modal 1000.

## 5. Components
### Primary button
- Anatomy: Frame Gothic 500–600, 15–16px label; padding 12px 24px; radius 8px (rounded-rect) or pill 999px in hero contexts (inferred); white fill/black text on dark, or Cobalt fill/white text.
- States: white → `#e8e9ec` hover → `#d5d7db` active; cobalt lightens on hover (dark-UI convention); focus 2px Electric ring; disabled `rgba(255,255,255,0.24)` fill, 0.4 text (inferred).
- Transition: background + slight glow 200ms ease-out.

### Outline / ghost button
- Transparent, 1px `rgba(255,255,255,0.3)` border, white label; hover raises border alpha and adds faint fill; used for "Take a Product Tour" pairing (scraped CTA copy).

### Feature card (4-up)
- Surface-1 charcoal, 1px 0.12-alpha border, radius 12–16px, padding 32px; icon or mini-screenshot → H3 → one-liner gray.
- Hover: surface-2, border 0.24, cobalt/iris edge glow, optional −2px lift (inferred).

### Pricing card
- Scraped anatomy: tier name (Free / Pro / Team / Enterprise), price ($0, $15, $25/member/mo, Custom), member + storage caps, feature checklist, tier CTA ("Start Free Trial" / "Book a Meeting"); Team flagged "Most popular"; monthly/annual toggle above (annual −13%, scraped).
- Highlighted tier: gradient or Cobalt border + tag pill; other tiers hairline-bordered (inferred styling).

### Carousels
- Slide galleries with dot/arrow pagination for Workflow and Sharing sections (scraped structure); slides are large screenshots on dark.

### Comparison table
- Full-width dark table, hairline row separators, check icons in Electric/white, sticky first column on mobile (structure scraped; styling inferred).

### Inputs / forms
- Dark fields: `#101114` fill, 0.12 border, radius 8px, white text; focus border Cobalt + glow; used in demo-booking flows (inferred).

### Badges
- "Most popular" pill: small uppercase, Cobalt fill or gradient border (inferred).

## 6. Imagery & Iconography
- Cinematic photography: film sets, cameras, colorists' suites, color-graded stills; full-bleed behind hero type (scraped: large hero background image).
- Product UI screenshots of the dark Frame.io app, edge-lit with glow so they read as monitors in a dark room; play-button logo recurs as a cast-light motif — "rays of light emanating from a single source" (documented).
- Spotlight/gradient shapes as section backdrops (documented application in decks/ads, mirrored on web).
- Icons: precise 1.5px line icons in white/gray; tier checkmarks; customer logos knocked out to monochrome white (scraped logo section).
- Video-first: keynote footage, product tours, autoplay UI loops (scraped: v4 keynote, product tour CTA).

## 7. Motion & Interaction
Priority register: lateral glides, light sweeps, and video — motion as cinematography. (Timings inferred; motion concepts documented via the "color and lighting spans every part of this rebrand" principle.)

| Animation | Trigger | Duration | Easing | Description |
|---|---|---|---|---|
| Hero reveal | load | 600–800ms | cubic-bezier(0.4, 0, 0.2, 1) | headline fades/rises over full-bleed still |
| Gradient/spotlight drift | continuous | 8–20s loop | linear / ease-in-out | iridescent field slowly shifts hue position behind sections |
| Carousel slide | click/auto | 400–600ms | cubic-bezier(0.4, 0, 0.2, 1) | horizontal glide, momentum stop |
| Section reveal | scroll | 400ms | ease-out | fade + 20px rise; screenshots may scale 0.98→1 |
| Stagger | scroll | 80ms/item | ease-out | 4-up cards cascade |
| Card hover | hover | 200ms | ease-out | border brighten + glow bloom + −2px lift |
| Button hover | hover | 200ms | ease-out | fill shift + faint outer glow |
| Billing toggle | click | 250ms | ease-in-out | pill thumb slides; prices crossfade |
| UI demo loops | in view | 5–20s | — | autoplay muted screen captures |
| Nav dropdown | hover | 200ms | ease-out | fade + drop on black glass panel |
| Page transitions | route | none–200ms | ease | plain or brief fade |

- Stagger patterns short and directional; large motion reserved for media, not chrome.
- Reduced motion: gradient drift and carousels pause; reveals collapse to fades (inferred best practice for a motion-heavy dark site).

## 8. Voice & Copy
- Sentence case with terminal periods on headlines; confident, velocity-obsessed, pro-audience ("collaboration velocity" — scraped quote from Princess Cruises testimonial).
- Benefit-led over feature-led: "Remove blockers to create and deliver high-quality content faster" (Team tier, scraped).
- Documented tagline: "Empowering the world's storytellers."
- Real examples (scraped):
  - "One platform for all your creative work."
  - "Whatever you create, Frame.io helps you deliver it faster."
  - "Plans designed for how you work"

## 9. Signature Moves
- True-black `#000000` canvas (scraped theme-color) — darker than typical dark mode; "windowless edit bay" ambience (documented).
- Custom Monotype variable grotesque (Frame Gothic) with expressive italic swings mid-headline and ink-trap crafted details.
- Named warm/cool palette (Cobalt, Electric, Iris, Coral) rationed like practical lights; gradients always bridge warm→cool.
- Cast-light/spotlight shapes and edge glows instead of drop shadows.
- Headlines that end in periods.
- Carousel galleries as the default way to show feature breadth.
- Screenshots lit like reference monitors.
- Play-button mark that doubles as rays of light; Adobe-era enterprise proof (DRM, forensic watermarking) wrapped in filmmaker cool.

## 10. Emulation Tokens
```css
:root {
  /* color — names documented, hexes inferred unless noted */
  --color-bg: #000000;                 /* scraped theme-color */
  --color-surface-1: #101114;
  --color-surface-2: #16181d;
  --color-ink: #ffffff;                /* documented "White" */
  --color-text-secondary: #9ba0a8;
  --color-text-tertiary: #6b7078;
  --color-cobalt: #2d43ff;
  --color-cobalt-hover: #4b5eff;
  --color-cobalt-active: #1f32d9;
  --color-electric: #00e0e0;
  --color-iris: #8b5cf6;
  --color-coral: #ff6a5e;
  --color-border: rgba(255, 255, 255, 0.12);
  --color-border-hover: rgba(255, 255, 255, 0.24);
  --color-white-hover: #e8e9ec;
  --color-white-active: #d5d7db;

  /* gradient system — warm↔cool construction documented, stops inferred */
  --gradient-iridescent: linear-gradient(120deg, #ff6a5e 0%, #8b5cf6 45%, #2d43ff 75%, #00e0e0 100%);
  --gradient-spotlight: radial-gradient(60% 80% at 50% 0%,
      rgba(139, 92, 246, 0.35) 0%, rgba(45, 67, 255, 0.15) 45%, transparent 75%);
  --gradient-section: linear-gradient(180deg, #16181d 0%, #000000 100%);
  --glow-cobalt: 0 0 80px rgba(45, 67, 255, 0.25);
  --glow-card: 0 0 40px rgba(139, 92, 246, 0.18);

  /* type — Frame Gothic documented (Monotype, variable, 4 preset weights) */
  --font-sans: "Frame Gothic", "Helvetica Neue", Helvetica, Arial, sans-serif;
  --text-display: clamp(2.75rem, 6vw, 5rem);
  --text-h2: clamp(2rem, 4vw, 3rem);
  --text-h3: 1.75rem;
  --text-price: 2.75rem;
  --text-body-lg: 1.1875rem;
  --text-body: 1rem;
  --text-eyebrow: 0.8125rem;   /* uppercase, ls 0.08em */
  --text-caption: 0.75rem;
  --lh-display: 1.05;
  --lh-body: 1.5;
  --ls-display: -0.02em;

  /* radius (inferred) */
  --radius-sm: 8px; --radius-md: 12px; --radius-lg: 16px; --radius-pill: 999px;

  /* spacing (inferred 8-based) */
  --space-1: 8px;  --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-5: 48px; --space-6: 64px; --space-7: 96px; --space-8: 120px;

  /* layout — breakpoints (inferred): 768 / 1024 / 1440px */
  --max-width: 1320px;
  --gutter: 24px;

  /* z-index (inferred) */
  --z-glow: -1; --z-nav: 100; --z-dropdown: 200; --z-modal: 1000;

  /* motion (inferred) */
  --ease-standard: cubic-bezier(0.4, 0, 0.2, 1);
  --ease-out: cubic-bezier(0.16, 1, 0.3, 1);
  --duration-fast: 200ms;
  --duration-slide: 500ms;
  --duration-reveal: 400ms;
  --duration-drift: 16s;
  --stagger: 80ms;
}
@media (prefers-reduced-motion: reduce) {
  * { animation-play-state: paused !important; transition-duration: 1ms !important; }
}
```

### Primary buttons (with states)
```css
.btn-white {
  font: 600 0.9375rem/1 var(--font-sans);
  color: #000; background: var(--color-ink);
  padding: 12px 24px; border: 0; border-radius: var(--radius-pill);
  cursor: pointer;
  transition: background-color var(--duration-fast) var(--ease-standard),
              box-shadow var(--duration-fast) var(--ease-standard);
}
.btn-white:hover  { background: var(--color-white-hover); box-shadow: var(--glow-cobalt); }
.btn-white:active { background: var(--color-white-active); }
.btn-white:focus-visible { outline: 2px solid var(--color-electric); outline-offset: 2px; }

.btn-outline {
  font: 500 0.9375rem/1 var(--font-sans);
  color: var(--color-ink); background: transparent;
  border: 1px solid rgba(255, 255, 255, 0.3);
  padding: 12px 24px; border-radius: var(--radius-pill);
  transition: border-color var(--duration-fast), background-color var(--duration-fast);
}
.btn-outline:hover { border-color: rgba(255, 255, 255, 0.6); background: rgba(255, 255, 255, 0.08); }
```

### Dark feature card with glow hover
```css
.card {
  background: var(--color-surface-1);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-md);
  padding: var(--space-4);
  transition: border-color var(--duration-fast) var(--ease-standard),
              box-shadow var(--duration-fast) var(--ease-standard),
              transform var(--duration-fast) var(--ease-standard);
}
.card:hover {
  background: var(--color-surface-2);
  border-color: var(--color-border-hover);
  box-shadow: var(--glow-card);
  transform: translateY(-2px);
}
.card h3 { font: 600 1.375rem/1.2 var(--font-sans); color: var(--color-ink); }
.card p  { font: 400 var(--text-body)/var(--lh-body) var(--font-sans); color: var(--color-text-secondary); }
```

### Signature effect — iridescent warm-cool gradient on black
```css
.hero {
  position: relative; background: var(--color-bg);
  padding: var(--space-8) var(--gutter); overflow: hidden;
}
.hero::before {                     /* drifting spotlight cast-light */
  content: ""; position: absolute; inset: -20%;
  background: var(--gradient-spotlight);
  animation: drift var(--duration-drift) ease-in-out infinite alternate;
  z-index: var(--z-glow);
}
@keyframes drift { from { transform: translate(-4%, 0) scale(1); }
                   to   { transform: translate(4%, 6%) scale(1.1); } }
.hero h1 {
  font: 650 var(--text-display)/var(--lh-display) var(--font-sans);
  letter-spacing: var(--ls-display); color: var(--color-ink);
}
.hero h1 em {                       /* italic swing + gradient fill */
  font-style: italic;
  background: var(--gradient-iridescent);
  -webkit-background-clip: text; background-clip: text; color: transparent;
}
```
