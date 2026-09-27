# Prior Work on Measuring Planet Radius from Horizon Curvature

Search dates: 2026-09-09, extended 2026-09-10. The Bislin, Kinlen,
Sparavigna, and Young comparisons were checked again on 2026-09-27; this was
a targeted verification, not an additional exhaustive search.

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

## Second Search Pass, 2026-09-10

A follow-up search targeted the gaps in the first pass: the classical dip
literature, navigational instruments, physics-education determinations of the
Earth's radius, and material published since. Five items were found. Three are
now cited in the article; two are recorded here as out of scope.

### Cited: al-Biruni, 11th century

The article's radius inversion

$$
R=\frac{h\cos\delta}{1-\cos\delta}
$$

is al-Biruni's result. The cited account describes measuring hill height and
horizon dip at the fort of Nandana, in present-day Pakistan, and inverting the
dip for the Earth's radius. Sparavigna reports a difference of about 2% from a
reference radius of curvature, using a specified conversion of the historical
length unit. The account does not identify the observed horizon as a sea
horizon; that description has been corrected in the manuscript. The numerical
comparison should be attributed to this historical reconstruction, not used
as evidence that refraction is negligible. The first search pass had omitted
the attribution for the radius-from-dip inversion.

Secondary source used: Amelia Carolina Sparavigna, [The Science of
al-Biruni](https://arxiv.org/abs/1312.7288), *International Journal of Sciences*
2(12), 52-60 (2013), [DOI: 10.18483/ijSci.364](https://doi.org/10.18483/ijSci.364).
Sparavigna describes the method and the numbers but does not print the formula;
the formula itself is standard and follows from the article's own equation for
`cos delta`. That geometric inversion contains no atmospheric correction.

### Cited: E. Moll, 1906 lecture, published 1931

E. Moll, [Measurement of the dip of the
horizon](https://journals.lib.unb.ca/index.php/ihr/article/view/28507),
*The International Hydrographic Review* VIII(1) (1931); translation of a lecture
delivered at the Verein Deutscher Seeschiffer, Hamburg, 3 October 1906.

Establishes that measuring the dip directly was a recognised instrument problem
with dedicated solutions (prism dip meters, the Pulfrich horizon meter). It also
supplies an empirical statement useful for the accuracy section: observed dips
depart from tabulated values by 10 arc-minutes and more under anomalous
refraction. This is a measured, citable magnitude rather than a modelled one.

### Cited: Walter Bislin, curvature simulator

Walter Bislin, [Finding the curvature of the
Earth](https://walter.bislins.ch/bloge/index.asp?page=Finding+the+curvature+of+the+Earth)
and the [Advanced Earth Curvature
Calculator](https://walter.bislins.ch/bloge/index.asp?page=advanced+earth+curvature+calculator),
created 27 August 2019, maintained since. Web resource, not peer reviewed.

This is a related angular observable, with an important difference in its
reported length. His [Calculating left-right Horizon
Drop](https://walter.bislins.ch/bloge/index.asp?page=Calculating+left-right+Horizon+Drop),
created 17 February 2020, defines an angular drop and reports the arc length
$p=v\psi$ at the eye-to-horizon distance $v$ (equation 10; symbols renamed
here to preserve the manuscript's $\delta$). The
[source code](https://walter.bislins.ch/bloge/index.asp?page=Source+Code:+Curvature+App)
confirms this distance-times-angle definition of `horizonLftRgtDrop`.
The derivation distinguishes this arc length from perpendicular lengths.

The earlier comparison incorrectly equated that output with our $s$ and
treated the reporting arc as evidence of a circular projected-horizon model.
For matched endpoint rays in our vertical plane, our own exact conversion is

$$
\psi=\arctan\!\left(T\frac{\sqrt{D^2+a^2}}{D}\right)-\arctan T,
\qquad
s=D\bigl[\tan(\delta+\psi)-\tan\delta\bigr],
\qquad a=L/2.
$$

Here the endpoint chord's midpoint is $(0,D,z_e)$, with depression
$\arctan(-z_e/D)$; subtracting the central depression gives $\psi$.
This explains the relation without equating $p$ with $s$ or $v$ with $D$.
It is not a validation of every field-of-view conversion or refraction
assumption in the simulator. The model includes adjustable refraction and
runs forward from an assumed radius, while our four-length method inverts
for radius under the spherical, straight-ray assumptions.

He also has a page on [measuring the Earth's radius like al-Biruni taking
refraction into account](https://walter.bislins.ch/bloge/index.asp?page=Measuring+Earths+Radius+like+Al-Biruni+taking+Refraction+into+account),
which states that ignoring refraction makes the inferred radius about 17% too
big at standard refraction. This is a model-dependent estimate, not a measured
correction for our proposed assembly or its synthetic 2000 m example.
[Young's discussion](https://aty.sdsu.edu/explain/atmos_refr/dip.html) describes
the assumptions and variability of such refraction models. The manuscript now
uses an exact inversion conditional on the unknown dip displacement and leaves
its independent determination as an open problem. It does not import the
effective-radius approximation into its derivation.

### Not cited: Dietrich Zawischa, perspective page

Dietrich Zawischa, [Perspective and curvature of the earth's
surface](https://www.itp.uni-hannover.de/fileadmin/itp/emeritus/zawischa/static_html/perspex.html),
ITP Hannover, undated. States that the horizon sight cone cuts a flat image
plane in a hyperbola, but gives no derivation, no explicit curve equation, no
midpoint rise, and no inversion for the radius. Strictly weaker than Kinlen,
which the article already cites for the same point. Recorded for completeness.

### Not cited: other radius determinations from a single observation

Two further physics-education results determine the Earth's radius, but from
different observables, and citing them would broaden the article past the scope
set in `AGENTS.md`:

- Pere Roura and Josep Calbo, [Measurement of the Earth's radius based on
  historical evidence of its curvature](https://iopscience.iop.org/article/10.1088/0031-9120/40/5/006),
  *Physics Education* 40(5), 455 (2005). Uses the disappearance of objects
  beyond the horizon and the visible fraction of distant tall objects as a
  function of observer height. Reports R = 6600 +- 600 km at best. This is the
  horizon-distance observable the manuscript deliberately excludes.
- [Earth's radius from a single sunrise image: a classroom-ready
  activity](https://iopscience.iop.org/article/10.1088/1361-6404/ae6427),
  *European Journal of Physics* (2026). Uses a photograph of Mont Blanc's
  shadow from Geneva together with the solar elevation. Unrelated observable.

If the article is ever widened into a survey of ways to measure the radius from
a single station, both belong in it.

### Still not found

No source was located that combines the horizontal ruler, the midpoint vertical
ruler, the measured eye-to-plane distance `D`, and an exact inversion for `R`.
Searches for the chord-and-sagitta straightedge construction return the physical
radius-of-curvature measurement `R = S^2/(8D) + D/2` applied to real arcs, which
is a different problem from the projected horizon. The conclusion of the first
pass is unchanged: the arrangement was not found, and that is not evidence that
it has never been published.

## Implications for the Manuscript

An appropriate description of our contribution is an explicit two-ruler
implementation and exact derivation of a known horizon-curvature measurement
principle. Avoid claiming to have invented the principle, the projected
hyperbola, the radius-from-dip inversion, or the idea of using the bow to infer
planet size. The inversion is al-Biruni's, the projection is at least as old as
Kinlen's post, and a related angular bow with an arc-length output is modelled
by Bislin. What is offered here is the proposed two-ruler instrument and the
exact path from four lengths to `R` for a spherical surface and straight
rays. Achieved instrument uncertainty and the separation of atmospheric
displacement from the physical radius remain open experimental questions.

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
