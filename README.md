# physics-sphere

**Measuring a Planet's Radius with Two Rulers**

*An exact horizon-curvature method*

**[Read the article (PDF)](planet-radius-with-two-rulers.pdf)**

[Markdown source](planet-radius-with-two-rulers.md) | [Prior-work research](notes/prior-work.md)

## Build

Requires Make, Pandoc, and a TeX installation with XeLaTeX, the packages used in
`preamble.tex`, and the TeX Gyre fonts specified in
`planet-radius-with-two-rulers.md`.

```bash
make pdf
```

This updates `planet-radius-with-two-rulers.pdf` in the repository root. Commit
the rebuilt PDF with any changes to the article, figures, or typesetting.
