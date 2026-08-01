# Designing with AI

A reveal.js deck. Native 1920x1080 canvas, hard cuts, spring
entrances, and a WebGL liquid reveal on every image.

Two ways to run it:

- **present.html** — double-click it. Fully self-contained (assets
  inlined), works from file://, no server needed. Use this to present.
- **index.html** — the editable source. Needs a static server
  (`npx serve .`) because browsers block file:// images from WebGL.

`r` replays a slide's animations. `s` opens speaker notes. The cog
(bottom right) tunes the word entrance live.

Built from the Figma Deck file; the design system it follows lives in
the Personal-Brand repo (personal_design_system/DESIGN.md).
