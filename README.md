# Designing with AI

A reference library for designing websites with AI: 25 of the best-designed brand websites, each distilled into a comprehensive `design.md` — design philosophy, full color tables, complete type scales, layout/grid systems, component state matrices, motion inventories with real durations and easing curves, voice & copy patterns, and a paste-ready `:root` CSS token sheet with example component snippets.

Drop a brand's `design.md` into an AI coding session ("build this page in the style of `stripe-design.md`") and it has everything it needs to emulate the design language.

## The library

| Brand | design.md | Logo |
|---|---|---|
| Apple | [design-mds/apple-design.md](design-mds/apple-design.md) | [logos/apple.svg](logos/apple.svg) |
| Teenage Engineering | [design-mds/teenage-engineering-design.md](design-mds/teenage-engineering-design.md) | — see [logos/README.md](logos/README.md) |
| Stripe | [design-mds/stripe-design.md](design-mds/stripe-design.md) | [logos/stripe.svg](logos/stripe.svg) |
| Linear | [design-mds/linear-design.md](design-mds/linear-design.md) | [logos/linear.svg](logos/linear.svg) |
| Nothing | [design-mds/nothing-design.md](design-mds/nothing-design.md) | — see [logos/README.md](logos/README.md) |
| Aesop | [design-mds/aesop-design.md](design-mds/aesop-design.md) | [logos/aesop.svg](logos/aesop.svg) |
| Vercel | [design-mds/vercel-design.md](design-mds/vercel-design.md) | [logos/vercel.svg](logos/vercel.svg) |
| Bang & Olufsen | [design-mds/bang-olufsen-design.md](design-mds/bang-olufsen-design.md) | [logos/bang-olufsen.svg](logos/bang-olufsen.svg) |
| Polestar | [design-mds/polestar-design.md](design-mds/polestar-design.md) | [logos/polestar.svg](logos/polestar.svg) |
| The Browser Company | [design-mds/browser-company-design.md](design-mds/browser-company-design.md) | [logos/browser-company-arc.svg](logos/browser-company-arc.svg) (Arc mark) |
| Rimowa | [design-mds/rimowa-design.md](design-mds/rimowa-design.md) | — see [logos/README.md](logos/README.md) |
| Freitag | [design-mds/freitag-design.md](design-mds/freitag-design.md) | — see [logos/README.md](logos/README.md) |
| Figma | [design-mds/figma-design.md](design-mds/figma-design.md) | [logos/figma.svg](logos/figma.svg) |
| Palantir | [design-mds/palantir-design.md](design-mds/palantir-design.md) | [logos/palantir.svg](logos/palantir.svg) |
| IKEA | [design-mds/ikea-design.md](design-mds/ikea-design.md) | [logos/ikea.svg](logos/ikea.svg) |
| Porsche | [design-mds/porsche-design.md](design-mds/porsche-design.md) | [logos/porsche.svg](logos/porsche.svg) |
| Leica | [design-mds/leica-design.md](design-mds/leica-design.md) | [logos/leica.svg](logos/leica.svg) |
| Byredo | [design-mds/byredo-design.md](design-mds/byredo-design.md) | — see [logos/README.md](logos/README.md) |
| On | [design-mds/on-running-design.md](design-mds/on-running-design.md) | — see [logos/README.md](logos/README.md) |
| Arc'teryx | [design-mds/arcteryx-design.md](design-mds/arcteryx-design.md) | [logos/arcteryx.svg](logos/arcteryx.svg) (wordmark) |
| Anthropic | [design-mds/anthropic-design.md](design-mds/anthropic-design.md) | [logos/anthropic.svg](logos/anthropic.svg) |
| Ableton | [design-mds/ableton-design.md](design-mds/ableton-design.md) | [logos/ableton.svg](logos/ableton.svg) |
| Notion | [design-mds/notion-design.md](design-mds/notion-design.md) | [logos/notion.svg](logos/notion.svg) |
| Frame.io | [design-mds/frameio-design.md](design-mds/frameio-design.md) | [logos/frameio.svg](logos/frameio.svg) |
| MUJI | [design-mds/muji-design.md](design-mds/muji-design.md) | [logos/muji.svg](logos/muji.svg) |

## How the files were made

Each site was scraped 2026-07-29 via web fetch of its homepage and key subpages, supplemented by design-token captures, official design-system packages (Porsche's tokens come straight from `@porsche-design-system`), foundry documentation, and design case studies. Every value that was not directly scraped or officially documented is flagged `(inferred)` inline.

Each file follows the same 10-section template: 1. Design Philosophy · 2. Color · 3. Typography · 4. Layout & Grid · 5. Components · 6. Imagery & Iconography · 7. Motion & Interaction · 8. Voice & Copy · 9. Signature Moves · 10. Emulation Tokens (a full `:root` sheet plus example CSS for the brand's button, card, and one signature effect).

Best-sourced files (mostly real scraped/official tokens): Porsche, Stripe, Linear, Anthropic, Notion, Apple, Vercel. Most inferred (JS-rendered or scrape-blocked sites): Byredo, Palantir, MUJI, Nothing.

## Legal note

The `design.md` files are original analysis for study and inspiration. Logos remain trademarks of their respective owners and are included solely for identification/reference — see [logos/README.md](logos/README.md) for per-file sources. This repo is not affiliated with or endorsed by any of the brands.
