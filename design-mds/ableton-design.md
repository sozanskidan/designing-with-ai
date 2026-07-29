# Ableton — Web Design Language
> Source: https://www.ableton.com, https://www.ableton.com/en/live/, https://learningmusic.ableton.com, fontsinuse.com/uses/2291/ableton-website (Futura PT, Edenspiekermann), lettersfromsweden.se/ableton (Ableton Sans) · Scraped 2026-07-29 · Values marked (inferred) were not directly scraped

## 1. Design Philosophy
Ableton.com (originally designed with Edenspiekermann, Berlin) is radical Bauhaus flatness: one geometric typeface, hard-edged rectangles, and "adventurous" flat color pairings — Fonts In Use documents combinations like **teal on celeste** and **yellow on pale violet**. There are no gradients, no shadows, no rounded corners anywhere; every element is a crisp block on a white page. Color arrives in huge full-bleed slabs that give each section its own mood, exactly like the colored clips in Live's session grid — the website is a visual rhyme with the product. Typography is monolithic: Futura PT for every word, at generous sizes with lots of air (Fonts In Use even flags Futura's small-size legibility as the one risk the brand accepts). The result is Swiss-poster graphic design turned into an interface: playful, rigorous, and instantly recognizable.

## 2. Color
### Core semantic palette
| Role | Value | Notes |
|---|---|---|
| Background (page) | `#ffffff` | Pure white base everywhere |
| Text primary | `#000000` | Pure black, maximum contrast |
| Text secondary | `#666666` | Metadata, captions (inferred) |
| Text tertiary | `#999999` | Fine print (inferred) |
| Accent / link + CTA blue | `#0000ff` | Signature electric pure blue for links and buttons (inferred, long-standing) |
| Link hover | `#0000cc` | Darkened blue (inferred) |
| Border (when used) | `#000000` at 1–2px | Hard black rules; otherwise color edges do the work |
| Footer ground | `#ffffff` or pale gray `#f4f4f4` | Flat, hairline-divided (inferred) |

### Documented color-pair system (slab background × content color)
The site rotates flat two-color pairings per section/campaign — the documented pairs plus recurring campaign pairs (exact hexes inferred; the *pairings* are documented by Fonts In Use):

| Slab background | Foreground/type | Feel |
|---|---|---|
| Celeste `#b3ecec` | Teal `#00838a` | documented pairing "teal on celeste" |
| Pale violet `#d5b3ff` | Yellow `#ffed00` | documented pairing "yellow on pale violet" |
| Yellow `#ffed00` | Black `#000000` | classic poster contrast |
| Coral/salmon `#ff764d` | White `#ffffff` | campaign accent |
| Mint `#b6ffc0` | Forest `#0a5c36` | seasonal variant |
| Lavender `#e3d7ff` | Blue `#0000ff` | Live 12 era light theme echo |

Rules of the system (observed/inferred): both colors are fully saturated-flat (no tints mid-slab), pairs are near-clashing on purpose, and each slab uses exactly two colors plus imagery. No gradient ever bridges a pair.

### Alpha/overlay
Essentially none — the brand avoids scrims; text sits on flat color or on white, never over busy imagery (inferred rule). Video posters use solid color frames instead of dark overlays.

## 3. Typography
- **Website:** **Futura PT** (ParaType) served via Adobe Fonts/Typekit — documented. Stack: `"futura-pt", Futura, "Century Gothic", "Twentieth Century", Helvetica, Arial, sans-serif`.
- **Product/brand UI:** **Ableton Sans** (Letters from Sweden, 2015; art direction A Color Bright) — 7 fonts, drawn with "spiralling round strokes" echoing rotary knobs; introduced on Push 2, then Live 10 (documented). Emulate web with Futura PT; reserve Ableton Sans references for UI mockups.
- Weights in use: 400 (Book) body, 500 (Medium) headings/nav, 700 (Bold/Heavy) rare display moments (inferred distribution).
- No italics, no small caps, no decorative type. Single-family discipline is the identity.
- Figures: Futura's proportional lining figures; prices set in the same weight as labels (inferred).
- Loading: Adobe Fonts (Typekit) JS/CSS embed; brief FOUT to Century Gothic-class fallback (inferred).

### Type scale (inferred from renders; Futura runs large and airy)
| Style | Size | Weight | Line-height | Tracking | Usage |
|---|---|---|---|---|---|
| Display | 48–64px / 3–4rem | 500 | 1.1 | 0 | Campaign heroes ("Find your thing…") |
| H1 page | 40px / 2.5rem | 500 | 1.15 | 0 | Product page titles |
| H2 | 32px / 2rem | 500 | 1.2 | 0 | Feature pillars ("Play freely with ideas") |
| H3 | 24px / 1.5rem | 500 | 1.3 | 0 | Card/teaser titles |
| Body large | 20px / 1.25rem | 400 | 1.5 | 0 | Intro paragraphs |
| Body | 16–18px / 1–1.125rem | 400 | 1.5 | 0 | Standard copy (Futura needs ≥16px) |
| Caption | 13–14px | 400 | 1.4 | +0.01em | Image credits, meta |
| Nav | 16px | 400–500 | 1 | 0 | Top nav links |
| Legal | 12px | 400 | 1.5 | 0 | Footer |

Responsive shifts (inferred): display 64→36px below 768px; body constant; nav collapses to hamburger below ~1024px.
Casing: sentence case everywhere, including buttons ("Try Live 12 for free"). Never all-caps.

## 4. Layout & Grid
- **Containers:** content column max ≈ 1200–1400px; color slabs and media run full-bleed 100vw (inferred).
- **Grid:** strict modular grid — 2-up and 3-up equal tiles; media blocks square or 4:3, butted with thin white gutters (10–20px) or fully flush. Text columns cap at ~700px measure inside slabs.
- **Spacing scale** (inferred, 10-based rather than 8-based): 10, 20, 40, 60, 80, 120px.
- **Section rhythm:** white sections separated by 80–120px; color slabs often stacked flush with zero outer margin, creating a poster-sheet effect.
- **Breakpoints** (inferred): 480px, 768px, 1024px, 1280px; tiles collapse 3→2→1 columns.
- **Header:** white bar ~60px; black Futura links (Live, Push, Move, Note, Link, Shop, Packs, Help) + "More" row that expands a second link row (scraped structure); active link underlined or colored; thin black rule below (inferred detail). Logo: the Ableton framed-lines mark, black on white.
- **Footer:** flat and dense — newsletter signup block, link columns (Education, Community), social row (Facebook, Twitter, YouTube, Instagram, TikTok, Discord — scraped), language/location selector, legal row, "Made in Berlin" sign-off (scraped).
- **Z-index** (inferred): content 0 → sticky header 100 → expanded "More" menu 150 → modal/video lightbox 1000.

## 5. Components
### Primary button
- Anatomy: rectangle, **border-radius 0**, solid `#0000ff` fill, white Futura 400–500 label 16–18px, padding ~14px 28px.
- States: hover `#0000cc` (or inverts to black); active `#000099`; focus 2px black outline offset 2px; disabled `#999999` fill (all inferred).
- Transition: background-color 150ms linear — deliberately snappy, no easing flourish (inferred).

### Secondary link / text CTA
- Plain `#0000ff` text, no underline at rest; hover adds underline (2px, offset 3px) (inferred states). Used constantly ("See what's new", "Learn more").

### Teaser card
- No chrome at all: image block (flush, no radius) → H3 Futura title → 1–2 lines gray copy → blue text link. Whitespace defines the card; hover may swap/dim image ~90% opacity, title stays black (inferred).

### Color-block section (signature)
- Full-bleed flat background from the pair table; contrasting flat headline color; cut-out product imagery (hardware on the slab, no shadow); one CTA. Two colors max per slab plus imagery.

### Header nav
- Two-row pattern: primary products row + expandable "More" row (Blog, Learn, Shop, About…); rows are plain text lists, no dropdown panels with imagery (scraped structure).

### Forms / inputs
- Rectangular, 1px solid black border, 0 radius, white fill, 16px Futura; focus: border thickens to 2px or turns blue; newsletter email + solid blue submit button (inferred).

### Learning Music interactive tiles
- Flat square cells in a step-sequencer grid; off state = pale flat color, on state = saturated fill; click toggles instantly and triggers sound; no borders, no easing — UI as instrument (scraped behavior).

### Badges
- Rare; plain black or blue text labels ("New in 12.4") rather than pill chips (inferred).

## 6. Imagery & Iconography
- Hardware (Push, Move) photographed straight-on or top-down on flat color or neutral gray, frequently cut out onto slabs; true colors, soft even light, no dramatic shadows.
- Live screenshots shown flat and uncropped — no perspective tilt, no browser chrome, no drop shadow; the Live 12 era favors its lavender/light UI theme in captures (scraped observation).
- Artist photography: documentary, natural light, real studios, full-bleed; people mid-work, not posed.
- Icons: minimal geometric line/solid glyphs; the brand's abstract framed-line logo family; illustration rare and strictly geometric (circles, rules) when present.
- Video: central medium — YouTube embeds and inline loops for every feature (scraped: feature demos, "One Thing" series, SoundCloud audio embeds).

## 7. Motion & Interaction
Philosophy: the page itself barely animates — motion lives inside media (video, audio, interactive toys). CSS motion is fast, linear, unornamented. (All timings inferred.)

| Animation | Trigger | Duration | Easing | Description |
|---|---|---|---|---|
| Link hover | hover | 100–150ms | linear | color shift black→blue / underline appears |
| Button hover | hover | 150ms | linear | flat fill swap, no transform |
| Image hover | hover | 150–200ms | ease | opacity 1→0.9 or image swap; no zoom |
| "More" menu expand | click | 200ms | ease-out | second nav row slides/reveals |
| Hero video loop | autoplay | continuous | — | full-bleed muted loop (Live page, scraped) |
| Carousel/teaser advance | click | 300ms | ease-in-out | horizontal slide, hard stop |
| Scroll reveals | — | none | — | content is static; no scroll-triggered animation (observed) |
| Page transitions | route | none | — | plain loads |

### Learning Music micro-interactions (scraped behaviors)
- Step-sequencer cells toggle fill color instantly on click and play audio in sync; a moving playhead bar sweeps the grid at tempo (linear, loop).
- Chapter navigation: "Next: Make beats ›" buttons; collapsible chapter menus (accordion, ~200ms).
- Feedback is audio-first: the animation *is* the sound plus a flat color state change — no easing curves, which itself is the brand's motion signature.
- Reduced motion: because CSS motion is near-zero, `prefers-reduced-motion` handling is trivial; videos remain click-to-play in embeds (inferred).

## 8. Voice & Copy
- Sentence case, short, maker-directed, encouraging; speaks to "you" the music maker; avoids spec-sheet talk until deep pages.
- Verbs of play and discovery: play, find, surprise, explore. German-English directness; no exclamation marks.
- Microcopy imperative and plain: "Buy now", "Try Live 12 for free", "See what's new".
- Real examples (scraped):
  - "Creative tools for music makers"
  - "Play freely with ideas" / "Surprise yourself with the sounds you create" / "Work more intuitively" (Live 12 page)
  - "Get started making music" — "No prior experience or equipment is required; you'll do everything right here in your browser." (learningmusic.ableton.com)

## 9. Signature Moves
- One typeface only: Futura PT for every single word on the site.
- Absolute flatness: 0 radius, 0 shadows, 0 gradients — rectangles all the way down.
- Full-bleed flat color slabs in daring near-clash pairs (teal on celeste, yellow on pale violet).
- Pure electric `#0000ff`-class blue as the lone functional accent.
- Modular tile grid that visually rhymes with Live's session/clip grid.
- Motion abstinence: static pages whose "animation" is embedded video and sound.
- Uncropped, unadorned software screenshots.
- "Made in Berlin" footer sign-off; Learning Music's playable flat-color sequencer grids.

## 10. Emulation Tokens
```css
:root {
  /* color — pairings documented, exact hexes inferred */
  --color-bg: #ffffff;
  --color-ink: #000000;
  --color-text-secondary: #666666;
  --color-text-tertiary: #999999;
  --color-accent: #0000ff;
  --color-accent-hover: #0000cc;
  --color-accent-active: #000099;
  --color-border: #000000;
  --color-footer-bg: #f4f4f4;

  /* slab pair system */
  --slab-celeste: #b3ecec;   --slab-celeste-fg: #00838a;
  --slab-violet: #d5b3ff;    --slab-violet-fg: #ffed00;
  --slab-yellow: #ffed00;    --slab-yellow-fg: #000000;
  --slab-coral: #ff764d;     --slab-coral-fg: #ffffff;
  --slab-mint: #b6ffc0;      --slab-mint-fg: #0a5c36;
  --slab-lavender: #e3d7ff;  --slab-lavender-fg: #0000ff;

  /* type — Futura PT via Adobe Fonts (documented) */
  --font-sans: "futura-pt", Futura, "Century Gothic", Helvetica, Arial, sans-serif;
  --text-display: clamp(2.25rem, 5vw, 4rem);
  --text-h1: 2.5rem;
  --text-h2: 2rem;
  --text-h3: 1.5rem;
  --text-body-lg: 1.25rem;
  --text-body: 1.125rem;
  --text-caption: 0.875rem;
  --text-legal: 0.75rem;
  --lh-display: 1.1;
  --lh-body: 1.5;

  /* radius — the brand rule */
  --radius-none: 0;

  /* spacing (10-based, inferred) */
  --space-1: 10px; --space-2: 20px; --space-3: 40px;
  --space-4: 60px; --space-5: 80px; --space-6: 120px;

  /* layout — breakpoints (inferred): 480 / 768 / 1024 / 1280px */
  --max-width: 1400px;
  --max-width-text: 700px;
  --gutter: 20px;

  /* elevation: none */
  --shadow-none: none;

  /* z-index (inferred) */
  --z-header: 100; --z-menu: 150; --z-lightbox: 1000;

  /* motion — fast and flat (inferred) */
  --ease-flat: linear;
  --ease-menu: ease-out;
  --duration-tap: 100ms;
  --duration-base: 150ms;
  --duration-slide: 300ms;
}
@media (prefers-reduced-motion: reduce) {
  * { transition-duration: 1ms !important; }
}
```

### Primary button (with states)
```css
.btn-primary {
  font: 500 1.125rem/1 var(--font-sans);
  color: #fff;
  background: var(--color-accent);
  padding: 14px 28px;
  border: 0;
  border-radius: var(--radius-none);   /* never round */
  cursor: pointer;
  transition: background-color var(--duration-base) var(--ease-flat);
}
.btn-primary:hover  { background: var(--color-accent-hover); }
.btn-primary:active { background: var(--color-accent-active); }
.btn-primary:focus-visible { outline: 2px solid var(--color-ink); outline-offset: 2px; }
.btn-primary:disabled { background: var(--color-text-tertiary); cursor: default; }
```

### Chromeless teaser card
```css
.teaser { max-width: 400px; }             /* no border, no shadow, no radius */
.teaser img { display: block; width: 100%; transition: opacity var(--duration-base) var(--ease-flat); }
.teaser:hover img { opacity: 0.9; }
.teaser h3 { font: 500 var(--text-h3)/1.3 var(--font-sans); color: var(--color-ink); margin: var(--space-1) 0 6px; }
.teaser p  { font: 400 1rem/var(--lh-body) var(--font-sans); color: var(--color-text-secondary); margin: 0 0 8px; }
.teaser a  { color: var(--color-accent); text-decoration: none; }
.teaser a:hover { text-decoration: underline; text-underline-offset: 3px; }
```

### Signature effect — Bauhaus color-block section
```css
.slab {
  background: var(--slab-celeste);
  color: var(--slab-celeste-fg);
  width: 100vw; margin-inline: calc(50% - 50vw);  /* full bleed */
  padding: var(--space-5) var(--space-2);
}
.slab h2 {
  font: 500 var(--text-display)/var(--lh-display) var(--font-sans);
  max-width: 16ch; margin: 0 auto var(--space-2);
}
.slab--violet { background: var(--slab-violet); color: var(--slab-violet-fg); }
.slab--yellow { background: var(--slab-yellow); color: var(--slab-yellow-fg); }
.slab .cta {
  color: inherit; border: 2px solid currentColor;
  padding: 12px 24px; text-decoration: none; display: inline-block;
}
.slab .cta:hover { background: currentColor; }  /* pair-inverting hover; set label via mix-blend or explicit color */
```
