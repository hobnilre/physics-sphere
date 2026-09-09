# AGENTS.md

This repository contains a short physics article about measuring a spherical
planet's radius from horizon curvature seen against a ruler. The primary source
is Markdown, and the PDF is generated from that source.

## Project Structure

- `article.md`: manuscript source.
- `figures/`: source illustrations and their generation prompts.
- `notes/prior-work.md`: literature search and comparison with this method.
- `Makefile`: build commands.
- `build/physics-sphere.pdf`: generated PDF output, ignored by git.
- `.gitignore`: excludes generated build output.

## Article Scope

Keep the article focused on the ruler-and-horizon measurement method:

- The observer knows eye altitude above the local spherical surface.
- The observer measures eye-to-ruler-plane distance.
- The visible horizon crosses a horizontal ruler near its left and right edges.
- A vertical ruler at the midpoint measures the rise from the horizontal ruler
  to the horizon.
- The derivation solves for the planet radius from those measured quantities.

Do not broaden the article into unrelated horizon-distance, surveying, geodesy,
photography, or navigation topics unless the user explicitly asks.

## Geometry Policy

The derivation must remain exact for the stated ideal model.

Do not introduce small-angle approximations or equivalent shortcuts. In
particular, do not use:

- `sin(x) = x`
- `tan(x) = x`
- `cos(x) = 1 - x^2/2`
- circular-arc approximations for the projected horizon curve
- approximations justified by Earth-sized radii, ordinary ruler lengths, or
  small measured sag/rise

Use exact trigonometric identities and algebraic transformations only. If a
numerically stable rearrangement is added, state that it is algebraically
equivalent and not an approximation.

## Required Variables

Keep these measured variables explicit:

- `h`: observer eye altitude above the local spherical surface.
- `D`: perpendicular distance from the eye to the ruler plane.
- `L`: horizontal distance between the two ruler crossings.
- `s`: vertical rise from the horizontal ruler to the horizon at the midpoint.

The distance `D` is required. Do not remove it or imply that `h`, `L`, and `s`
alone determine the radius.

When editing equations, preserve the distinction between:

- the planet radius `R`
- the depression angle `delta`
- the half-width `a = L/2`
- the ruler-plane coordinates `(x, D, z)`
- the midpoint height `z_0`
- the edge height `z_e`

## Coordinate and Sign Conventions

The article uses an eye-centered coordinate system:

- `x`: horizontal left-right direction along the ruler.
- `y`: horizontal forward direction from the eye toward the ruler plane.
- `z`: vertical upward direction.
- the ruler plane is `y = D`.
- the planet center is below the eye at `(0, 0, -(R+h))`.

The visible geometric horizon is below the local horizontal direction. In the
current convention, `z(x)` is negative, while the measured midpoint rise is
positive:

`s = z_0 - z_e`.

Check signs carefully when changing prose or equations.

## Writing Style

Prefer direct, readable explanations. The article should be understandable as a
standalone procedure, not just as a chain of equations.

For each major equation, keep enough surrounding prose to explain what the
symbols mean and why the step is valid. Avoid hiding necessary assumptions in
the notation.

In Markdown tables, write absolute values as `abs(expr)`, not `|expr|`, because
unescaped vertical bars are interpreted as column delimiters. Use `norm(expr)`
for norms and escape a literal vertical bar as `\|` when it is semantically
required.

## Figures

The observation setup is illustrated in `figures/measurement-setup.png`.
Its generation prompt and provenance are recorded alongside it in
`figures/measurement-setup.prompt.md`.

Keep figure labels consistent with the manuscript: `D` is perpendicular to the
vertical ruler plane, `L` spans the horizon crossings rather than the ruler
ends, and `s` rises from the horizontal ruler's measuring edge to the horizon
at the midpoint. Label any exaggerated drawing as schematic. A schematic
does not replace the exact derivation; any plotted horizon curve must use the
exact projection equation.

Keep source illustration assets and prompts in git. Include referenced image
files in the PDF target's dependencies in `Makefile`. Building the PDF uses the
saved assets and does not call an image-generation service.

## References

Use the author-year links and reference list in `article.md`, with shared
Markdown link definitions at the end. Cite sources beside the claims they
support. The detailed comparisons are recorded in `notes/prior-work.md`.

Distinguish equivalent geometry from related instruments and informal
proposals. A search that does not find the complete two-ruler arrangement
does not establish originality. Do not import approximations from cited
sources into this article's exact derivation.

## Build Policy

Build the PDF with:

```bash
make pdf
```

This runs Pandoc with XeLaTeX and writes:

```text
build/physics-sphere.pdf
```

Before finishing manuscript edits, run `make pdf` and confirm the PDF is
created successfully. If the build cannot be run, say so in the final response.

## Repository Hygiene

Track source files and build instructions. Do not track generated PDF output,
LaTeX intermediates, caches, virtual environments, or local scratch artifacts
unless the user explicitly asks for them.

Keep changes scoped to the article and its build path. If adding examples,
figures, scripts, or measurement worksheets later, put them in named project
directories and update this file with the new workflow.
