# physics-sphere

An exact two-ruler method for measuring a spherical planet's radius from
horizon curvature.

**[Read the article (PDF)](physics-sphere.pdf)**

[Markdown source](article.md) | [Prior-work research](notes/prior-work.md)

## Build

Requires Make, Pandoc, and a TeX installation with XeLaTeX, the packages used in
`preamble.tex`, and the TeX Gyre fonts specified in `article.md`.

```bash
make pdf
```

This updates `physics-sphere.pdf` in the repository root. Commit the rebuilt
PDF with any changes to the article, figures, or typesetting.
