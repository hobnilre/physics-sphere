# Measuring a Planet's Radius with Two Rulers

An exact horizon-curvature method.

The open experimental questions are the precision achievable with the fixed
two-ruler assembly, how to separate atmospheric displacement from geometric
radius, and whether signed discrepancies persist after independent checks.
The article establishes an exact inversion for a spherical surface and straight
light rays. Its example is synthetic; instrument validation and field
measurements remain to be performed.

## What this article adds, and why it matters

The article derives the radius from horizon curvature against two rulers under
that ideal model and specifies an experimental procedure to test the method.
Horizon dip, photographic curvature measurements, and equivalent projected
horizon geometry all have prior work; the article does not claim that the
general principle is new. Its contribution is to put the following elements
together in a directly measurable arrangement:

- **Four explicit length measurements.** The observer measures eye altitude
  $h$, perpendicular eye-to-ruler-plane distance $D$, crossing separation $L$,
  and midpoint rise $s$. The result makes clear why $D$ is necessary: the
  drawing on a ruler has no angular scale without the distance to it.

- **An exact ruler-to-radius inversion.** The projected horizon is derived as
  a branch of a hyperbola, and the four measured lengths give the horizon dip
  and radius in closed form. The derivation uses neither a small-angle
  expansion nor a circular-arc replacement for the projected horizon.

- **A fixed, single-observer observation setup.** A horizontal ruler records
  the two crossings and a vertical ruler at their midpoint records the rise in
  the same vertical plane. This provides a concrete alternative to requiring a
  camera, a dedicated angle-measuring instrument, or a separately calibrated
  image plane.

- **Exact uncertainty bounds and reporting unresolved results.** Sensitivities to all
  four lengths, finite interval bounds, and signed residuals support tests of
  the instrument. Repeated ruler settings cannot by themselves separate
  refraction from radius. The procedure requires reporting discrepancies that
  remain unresolved, including their signs, magnitudes, conditions, and checks.

## Article and build

[Read the article (PDF)](planet-radius-with-two-rulers.pdf) · [Manuscript source](planet-radius-with-two-rulers.md)

Install GNU Make, Pandoc, XeLaTeX and the TeX Gyre fonts, including the LaTeX
packages used by `preamble.tex`. Run `make pdf`
from this repository. The build uses only files in this checkout; no sibling
repository or private working files are needed.

The first page gives the PDF creation time in UTC, followed by this repository's
GitHub link. An up-to-date PDF keeps its timestamp; `make -B pdf` forces a rebuild.
Intermediates go to ignored `build/` by default; `BUILD_DIR=/absolute/path`
selects another location. `make clean` removes that build directory and keeps
the published PDF and figure assets.
