# Prior Work on Measuring Planet Radius from Horizon Curvature

Search date: 2026-09-09.

## Finding

There are published descriptions of comparing the horizon with a straight
ruler and measuring its midpoint rise. There is also an earlier derivation
mathematically equivalent to this project's exact horizon projection.
Consequently, neither the general measurement principle nor the hyperbolic
projection should be presented as a new discovery. The sources and the precise
extent of the matches are documented below.

The search did not locate a source combining all of these features:

- A horizontal ruler crossed by the horizon near both ends.
- A second, vertical ruler at the midpoint, in the same vertical plane.
- Explicit measured lengths $h$, $D$, $L$, and $s$.
- An exact inversion for $R$ with no small-angle approximation.

This is a limited search finding, not evidence that this particular arrangement
has never been published. Different notation, languages, terminology, and
unindexed material limit what a public-web search can establish.

## Closest Physical Setup: Alex R. Howe, 2019

Alex R. Howe, [A Challenge to Flat Earthers](https://sciencemeetsfiction.com/2019/12/22/a-challenge-to-flat-earthers/),
22 December 2019. This is an original explanatory blog post, not a journal paper.

Howe proposes photographing the horizon with a ruler held against an aircraft
window. The horizon meets the ruler near the image edges and rises above it
in the middle. The discussion includes viewing distance, field of view,
altitude, diagrams, and calculation code. This closely matches our physical
measurement idea. However, it predicts the bow using an assumed Earth radius;
it does not specify a midpoint vertical ruler or our exact inverse formula.
Its numerical model has not been adopted or certified here.

## Equivalent Projection: Philip Kinlen, 2017

Philip Kinlen, [Photographing the horizon](https://abitofmaths.blogspot.com/2017/11/photographing-horizon.html),
27 November 2017. This is an original mathematical blog post.

Kinlen intersects the horizon sight cone with a vertical image plane, derives a
hyperbola, and measures the center-to-edge rise. The post concerns photography,
without a physical two-ruler instrument or an explicit solution for unknown
planet radius.

Our comparison of notation is:

| Kinlen | This article |
| --- | --- |
| $\nu$, viewing distance to image plane | $D$ |
| $x_1$, horizontal image coordinate | $x$ |
| $x_2$, vertical image coordinate | $z$ |
| $\epsilon$, center-to-edge rise | $s$ |
| $\nu\tan\theta$, half image width | $a=L/2$ |
| $(h+g)/f$ | $\tan\delta=T$ |

The equivalence can be checked directly from his definitions. In our notation,

$$
g=\frac{hR}{R+h},\qquad
f=\frac{R\sqrt{h(2R+h)}}{R+h},
$$

so

$$
\frac{h+g}{f}=\frac{\sqrt{h(2R+h)}}{R}=\tan\delta.
$$

His projection and rise therefore become exactly

$$
z(x)=-\tan\delta\sqrt{x^2+D^2},\qquad
s=\tan\delta\bigl(\sqrt{D^2+(L/2)^2}-D\bigr).
$$

This identification is our algebraic comparison, not a claim made in his post.
The coefficient and midpoint-rise equivalences were also verified symbolically
with SymPy during this search. No angular approximation is needed.

## Published Instrument Experiment: Ernesto Enrique Cyrulies, 2025

Ernesto Enrique Cyrulies, [The relationship between earth size and horizon
curvature: its determination with a device built for a distance learning
class](https://www.scielo.br/j/rbef/a/DyQQTFPCRzwwJnJNq4K3v4z/?format=html&lang=es),
*Revista Brasileira de Ensino de Fisica* 47 (2025),
[DOI: 10.1590/1806-9126-RBEF-2025-0275](https://doi.org/10.1590/1806-9126-RBEF-2025-0275).
Published 6 October 2025; full text is Spanish.

This journal article relates Earth's size to horizon curvature using a
purpose-built rotating sight, reticle, and camera. It reports measurements
from an adopted elevation of 125 m in Mar del Plata. The apparatus compares
the horizon with a plane of sight as the instrument turns. This is relevant
experimental precedent, but differs from our fixed rulers. Its main result is
a comparison of measured angular departures with model predictions.

The [mathematical supplement](https://minio.scielo.br/documentstore/1806-9126/DyQQTFPCRzwwJnJNq4K3v4z/24f8b9d9e999830e72589b489e3cee18779f30e5.pdf)
was also inspected. It develops the angular departure in terms of radius,
altitude, and sweep angle, rather than our $h,D,L,s$ inversion. This literature
comparison is not a validation of every equation or refraction claim there.

## Photographic Precedent: David K. Lynch, 2008

David K. Lynch, [Visually discerning the curvature of the Earth](https://opg.optica.org/ao/abstract.cfm?uri=ao-47-34-H39),
*Applied Optics* 47(34), H39-H43 (2008),
[DOI: 10.1364/AO.47.000H39](https://doi.org/10.1364/AO.47.000H39).
[Author-hosted full text](https://thulescientific.sanandreasfault.org/Lynch%20Curvature%202008.pdf).

Section 3 and Figure 5 mark three horizon points on a photograph: left,
middle, and right. The midpoint displacement is measured from the straight
line joining the outside points. This is a published measurement of the same
kind of observable. It uses image measurements, not two physical rulers.
The circular-sagitta model and linear-to-angular conversion in Section 4 are
not our exact hyperbolic projection, so this paper should not be cited as a
derivation of our equations.

## Explicit Ruler-to-Radius Proposal: Online Discussion, 2022

User skrutnizer, [comment describing a ruler-based radius estimate](https://www.reddit.com/r/flatearth/comments/xbd2zh/comment/io1jiof/),
in a September 2022 discussion. This is an informal original proposal, not
peer-reviewed evidence of a successful experiment.

The comment describes a ruler intersecting the horizon on both sides, the
angular bow over its center, and an equation intended to recover the sphere's
radius from altitude and those angles. It is especially close to the intended
purpose of this project, but does not provide a vertical ruler, measured
eye-to-plane distance, or an exact derivation. Its stated radius formula is
not identical to ours and should not be substituted for it. The comment is
evidence that this measurement idea has been discussed, not an independent
mathematical verification.

## Earlier Related Work: NASA, 1967

Jacob H. Lichtenstein and William T. Suit, [An experimental investigation of
two visual methods of altitude determination](https://ntrs.nasa.gov/citations/19670017937),
NASA TM X-1392 (1967).
[Full report](https://ntrs.nasa.gov/api/citations/19670017937/downloads/19670017937.pdf).

The horizon-curvature technique compares simulated lunar horizons with
calibrated templates at a fixed eye-to-template distance. The report includes
chord and sagitta geometry. It estimates altitude assuming the body's radius,
which is a related inverse problem rather than our unknown-radius experiment.
It establishes an older instrument-based use of projected horizon curvature.

## Implications for the Manuscript

An appropriate description of our contribution is an explicit two-ruler
implementation and exact derivation of a known horizon-curvature measurement
principle. Avoid claiming to have invented the principle, the projected
hyperbola, or the idea of using the bow to infer planet size.

For related-work citations, Howe is the closest physical ruler comparison,
Kinlen is the closest mathematical match, and Cyrulies supplies a recent
published instrument experiment. Lynch supplies an older photographic
measurement. The informal discussion is useful for tracing the idea, but the
article's correctness should rest on its own derivation.

## Search Scope

The search covered public web pages, journal records and full texts,
author-hosted material, NASA reports, and original online discussions.
Queries combined horizon curvature, ruler, straightedge, midpoint, sagitta,
planet radius, hyperbola, vertical ruler, two rulers, cross-staff, and
spherometer. Additional searches used Spanish, German, and Swedish terms.
Relevant references and supplementary material were followed where accessible.

The dates above come from the sources' publication information, rather than
search-engine crawl dates. The search is not an exhaustive bibliographic or
historical priority assessment. No claim is made that 2019 is the first use of
a ruler, or that 2017 is the first derivation of the hyperbolic projection.
