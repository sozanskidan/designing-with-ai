# Greater Philly AI — front & back slides for Aug 6

Eleven house slides that top and tail the night. Five open it (Alex welcomes the room and hands
over), six close it (Q&A, the next two events, thanks). Everything between them is the speaker's.

`index.html` is the whole set, runnable on its own — open it to see what you're splicing.

## Light, not dark

These are light — paper cream, dark ink, the same coral. Root Down projects onto a wall in a
brightly lit room, and the speaker's deck is light, so dark house slides would be both harder to
read and a flash on every handoff.

That's a change from Jul 9, where the house slides were black to match greaterphillyai.com. The
brand tie-in loses to legibility in that room.

Dark is still one word away: add `gpai-dark` next to `gpai-slide` on any section. It's per-slide, so
the cover and thanks can go dark while the rest stays light. Shadows and the QR card border are
tokens, so they retune themselves.

## What to copy

Three things, into the speaker's deck:

1. **`<style id="gpai-frame">`** — the whole block from `<head>`. Paste it **last** in the host
   `<head>`, after the host's own styles. **Not** `<style id="gpai-preview-only">`, which sets a
   page background and exists only so this file looks finished on its own.
2. **The 5 FRONT `<section>`s** — before the host's first slide.
3. **The 6 BACK `<section>`s** — after the host's last slide.

Plus **`assets/`** (six files, 500 KB) alongside the deck. The `<img src="assets/…">` paths are
relative, so either drop the folder next to the host HTML or rewrite the six `src` attributes.

**Delete the `s-seam` slide** between FRONT and BACK — it's a marker saying "the talk runs here",
useful only when previewing this file standalone. Its CSS rule can go too.

## What won't break

Every selector is scoped to `.gpai-slide`, and the design tokens are `--gpai-` prefixed. Nothing
here reads or writes the host's `:root`, its `--bg`/`--ink`/`--coral`, or `.reveal .slides section`
in general. A host slide with its own `.mark`, `footer`, or `.section-title` keeps its own styling —
verified by splicing these into deliberately opposite decks (one white/serif/centred, one
navy/serif/green) and confirming both sides survived untouched in each.

All three QR codes are decoded and confirmed (re-decoded 2026-08-06, not taken on trust):

- `qr-meetup-315849944.png` → `https://www.meetup.com/greater-philly-ai/events/315849944/`
- `qr-event-2026-09-10.png` → `https://greaterphillyai.com/events/2026-09-10`
- `qr-newsletter.png` → `https://greaterphillyai.com/?src=ss02#newsletter`

## Two requirements

**Canvas is 1920×1080.** Every slide positions absolutely against it. If the host deck initializes
Reveal at a different `width`/`height`, tell Alex and he'll re-render at yours — don't rescale these
by hand.

**Fonts are Fira Code and Inter.** They're in `vendor/fonts.css` (self-hosted, no network call). If
the host deck already loads both, skip it; otherwise add that stylesheet too. Without them the
slides fall back to system mono/sans and the type gets noticeably wider.

## The slides

| | Slide | Notes |
|---|---|---|
| **Front 1** | Cover | Brand lockup. |
| **Front 2** | Tonight | The agenda. Times need a sanity check against the real run-of-show. |
| **Front 3** | Why we exist | Standing copy. |
| **Front 4** | What we do | The four formats. Points at Aug 20 as next up. |
| **Front 5** | Speaker handoff | Stays up while the speaker walks to the front. |
| **Back 1** | Q&A | |
| **Back 2** | Next talk | Kateri Waltermeyer, Aug 20, with a live RSVP QR. |
| **Back 3** | The one after | Joe Comly, Sep 10. QR goes to the site event page, not Meetup — that event is not created yet. |
| **Back 4** | Want to speak? | |
| **Back 5** | Stay in touch | Newsletter signup, with a QR. |
| **Back 6** | Thanks | |
