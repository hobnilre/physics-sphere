---
title: "Measuring a Planet's Radius with Two Rulers"
subtitle: "An exact horizon-curvature method"
author: "Hob Nilre"
date: "9 September 2026"
abstract: |
  The visible horizon of a spherical planet is depressed below the observer's
  local horizontal plane and, projected onto a plane held in front of the eye,
  is curved. Both effects depend on the planet's radius. This note gives an
  exact geometric inversion of that dependence using two ordinary rulers fixed
  in a single vertical plane. The measured quantities are the eye altitude $h$
  above the spherical surface, the perpendicular distance $D$ from the eye to
  the ruler plane, the separation $L$ of the two points at which the horizon
  crosses a horizontal ruler, and the rise $s$ of the horizon above that ruler
  at the midpoint of the crossings, read from a second, vertical ruler. The
  projected horizon is shown to be one branch of a hyperbola, from which the
  exact horizon depression angle and then the planet radius
  $R=h(\sqrt{1+T^{2}}+1)/T^{2}$ follow in closed form. No small-angle
  expansion, circular-arc substitution, or other approximation is used at any
  step; where a numerically stable rearrangement is given, it is algebraically
  identical to the form it replaces. The sensitivity of the method and its
  systematic limitations are discussed, and the result is compared with
  earlier horizon-curvature measurements.
keywords:
  - horizon dip
  - horizon curvature
  - planetary radius
  - spherical geometry
  - physics education
documentclass: article
classoption:
  - 11pt
geometry:
  - margin=1.1in
mainfont: "TeX Gyre Termes"
sansfont: "TeX Gyre Heros"
monofont: "TeX Gyre Cursor"
mathfont: "TeX Gyre Termes Math"
numbersections: true
secnumdepth: 3
indent: true
linestretch: 1.05
colorlinks: true
linkcolor: MidnightBlue
urlcolor: MidnightBlue
citecolor: MidnightBlue
---

# Introduction

The horizon seen from a spherical planet lies below the observer's local
horizontal plane, and its image on a plane held in front of the eye is curved
rather than straight. Both the depression and the curvature depend on the
planet's radius and on the observer's altitude, so a sufficiently careful
observation of the horizon determines the radius. The depression, or dip, is
classical and is used in celestial navigation; its unrefracted and refracted
forms are reviewed by [Young (n.d.)][young]. The curvature is the harder of the
two effects to see, because from ordinary altitudes the horizon departs from a
straight line by far less than the width of a normal field of view, which is
why photographic tests of it demand care, as [Lynch (2008)][lynch] discusses.

This note treats the inverse problem in its simplest instrumented form. Two
ordinary rulers, held in one fixed vertical plane in front of a single eye, are
enough to determine the planet radius $R$, provided the observer also knows the
eye altitude above the spherical surface and the distance from the eye to the
ruler plane. A horizontal ruler is placed so that the visible horizon crosses
it near its two ends; a vertical ruler at the midpoint of those crossings reads
the amount by which the horizon bows above the horizontal ruler. Four lengths
are then in hand, and the radius follows in closed form.

Inferring a radius from the horizon is an old idea. In the eleventh century
al-Bīrūnī measured the dip of the sea horizon from a hill of known height at
Nandana, in present-day Pakistan, and inverted it for the Earth's radius,
arriving at a figure within about two percent of the modern one
[(Sparavigna 2013)][sparavigna]; the inversion he used is
equation \eqref{eq:Rcos} below. Measuring the dip directly then became an
instrument problem for navigators, who built dedicated dip meters and horizon
meters for it, and who found the observed dip departing from tabulated values by
ten minutes of arc and more under anomalous refraction
[(Moll 1931)][moll]. The present method reaches the same dip angle through two
ruler readings instead of an angle-measuring instrument.

Measurements of the horizon's curvature have been reported more recently.
[Lynch (2008)][lynch] extracted
the analogous displacement from three horizon points in a photograph;
[Kinlen (2017)][kinlen] derived the projection of the horizon onto a vertical
image plane; [Howe (2019)][howe] described a closely related comparison of the
horizon against a straight edge in a photograph; and
[Cyrulies (2025)][cyrulies] built a dedicated instrument with a rotating sight,
reticle, and camera; and [Bislin (n.d.)][bislin] models the same midpoint
displacement numerically, with refraction, in a widely used curvature
simulator. Earlier still, [Lichtenstein and Suit (1967)][nasa] tested
calibrated horizon templates for the inverse problem of estimating altitude
above a body of known radius. Section 8 compares these with the arrangement
used here.

The emphasis throughout is on exactness. No step uses $\sin x\approx x$,
$\tan x\approx x$, $\cos x\approx 1-x^{2}/2$, a circular arc in place of the
true projected curve, or any approximation justified by the size of the planet
or the smallness of the measured rise. Where an algebraically equivalent
rearrangement is introduced for numerical stability, it is identified as such.
Section 2 defines the four measured quantities and the observing arrangement,
Section 3 derives the exact geometry, Section 4 inverts it for the radius,
Section 5 states the procedure as a checklist, Section 6 works a numerical
example, and Sections 7 and 8 discuss accuracy and prior work.

# The Measurement

## Measured quantities

The method needs four measured lengths:

$h$

:   altitude of the observer's eye above the local spherical surface;

$D$

:   perpendicular distance from the eye to the ruler plane;

$L$

:   horizontal distance between the two points where the horizon crosses the
    horizontal ruler;

$s$

:   vertical distance from the horizontal ruler to the horizon at the midpoint
    of the two crossings.

The altitude $h$ must be measured above the same spherical surface that forms
the horizon. For a sea horizon viewed from a hill, it therefore includes the
hill's elevation above sea level as well as the eye's height above the ground.
All four lengths must be expressed in the same unit.

Throughout, assume $R>0$, $h>0$, $D>0$, and $L>0$. The arrangement described
below then gives $s>0$, as confirmed in Section 3.3.

The distance $D$ is essential and cannot be dispensed with. Without it, $L$ and
$s$ describe only a shape drawn on the ruler, not the angular size of that
shape as seen from the eye. Different eye-to-ruler distances can produce the
same $L$ and $s$ while corresponding to different planet radii.

## Observation setup

Hold the horizontal ruler in a vertical plane in front of the eye, with the
plane perpendicular to the central horizontal line of sight, and position the
ruler so that the visible horizon crosses it near its left and right edges. Use
one fixed eye, and place both rulers in the same vertical plane. The vertical
ruler must lie at the midpoint of the two horizon crossings, directly in front
of the eye in the left-right direction. Measure $D$ horizontally and
perpendicularly to that plane, not along the downward sightline to the horizon.

At the centre of the horizontal ruler, use the vertical ruler to measure the
distance from the horizontal ruler to the visible horizon. In the coordinate
convention of Section 3.1, $s$ is positive when the horizon at the midpoint
stands above the horizontal ruler, which is the expected arrangement whenever
the horizontal ruler passes through two symmetric horizon points. The
arrangement is shown in Figure 1.

[Howe (2019)][howe] describes a closely related ruler comparison carried out on
a photograph. Here the second ruler reads the midpoint rise directly, in the
same plane and at the same moment as the crossings.

The measurement is best made with the head and rulers fixed, and with the
horizontal ruler levelled relative to the local horizontal direction. The
derivation assumes that the visible horizon is the true geometric horizon of a
spherical planet, and not a horizon displaced by hills, waves, buildings, haze,
or atmospheric refraction.

![Observation setup. Left: eye altitude $h$ and perpendicular
eye-to-ruler-plane distance $D$. Right: the observer's view, with crossing
separation $L$ and midpoint rise $s$ measured from the horizontal ruler's top
edge. The drawing is schematic; curvature and distances are
exaggerated.](figures/measurement-setup.png){width=100%}

\FloatBarrier

# Exact Horizon Geometry

## Coordinates and conventions

Place the observer's eye at the origin $O=(0,0,0)$ of a Cartesian frame with
$x$ the horizontal left-right direction along the ruler, $y$ the horizontal
forward direction from the eye toward the ruler plane, and $z$ the vertical
upward direction. The planet centre then lies directly below the eye at

$$
C = (0,0,-(R+h)),
$$

where $R$ is the unknown planet radius, and the ruler plane is the plane
$y=D$. Write $a=L/2$ for the half-width of the crossings.

In this frame the two measured horizon crossings lie at $(\pm a, D, z_{e})$ and
the horizon point directly in front of the eye lies at $(0,D,z_{0})$. Both
heights are negative, because the visible horizon is below eye level, while the
measured midpoint rise

\begin{equation}\label{eq:sdef}
s = z_{0} - z_{e}
\end{equation}

is positive. Signs should be checked against \eqref{eq:sdef} whenever the
prose or the equations are changed.

## Depression angle of the geometric horizon

A ray leaving the eye in the unit direction $\mathbf{u}$, with
$|\mathbf{u}|=1$, reaches the geometric horizon when the line it defines is
tangent to the planet, that is, when the perpendicular distance from the planet
centre $C$ to that line equals $R$. That distance is
$\sqrt{|C|^{2}-(C\cdot\mathbf{u})^{2}}$, so the tangency condition is

$$
|C|^{2} - (C\cdot\mathbf{u})^{2} = R^{2}.
$$

Since $|C| = R+h$ and $C\cdot\mathbf{u} = -(R+h)u_{z}$, this becomes
$(R+h)^{2}\bigl(1-u_{z}^{2}\bigr) = R^{2}$, and dividing by $(R+h)^{2}$,

$$
1-u_{z}^{2} = \left(\frac{R}{R+h}\right)^{2}.
$$

For the visible horizon, which lies below eye level, $u_{z}$ is negative, so

$$
u_{z} = -\sqrt{1-\left(\frac{R}{R+h}\right)^{2}}.
$$

For this root $C\cdot\mathbf{u} = -(R+h)u_{z} > 0$, so the tangent point lies on
the forward ray from the eye and not on its backward extension.

Define the exact depression angle $\delta$ of the horizon below the local
horizontal plane, with $0<\delta<\pi/2$, by $u_{z}=-\sin\delta$. Then
$\sin\delta = \sqrt{1-\bigl(R/(R+h)\bigr)^{2}}$, and therefore

\begin{equation}\label{eq:dip}
\cos\delta = \frac{R}{R+h}.
\end{equation}

Equation \eqref{eq:dip} is exact for a spherical planet with straight light
rays. It is the standard unrefracted dip relation, given in the same form by
[Young (n.d.)][young].

## Projection onto the ruler plane

A point $(x,D,z)$ of the ruler plane is seen from the eye along the vector
$\mathbf{v}=(x,D,z)$, whose unit direction
$\mathbf{u} = (x,D,z)/\sqrt{x^{2}+D^{2}+z^{2}}$ has vertical component
$u_{z} = z/\sqrt{x^{2}+D^{2}+z^{2}}$. The point lies on the projected horizon
exactly when this component equals $-\sin\delta$:

\begin{equation}\label{eq:proj}
\frac{z}{\sqrt{x^{2}+D^{2}+z^{2}}} = -\sin\delta.
\end{equation}

Squaring \eqref{eq:proj} gives $z^{2} = \sin^{2}\delta\,(x^{2}+D^{2}+z^{2})$,
that is, $z^{2}\bigl(1-\sin^{2}\delta\bigr) = \sin^{2}\delta\,(x^{2}+D^{2})$.
The exact identity $1-\sin^{2}\delta = \cos^{2}\delta$ and division by
$\cos^{2}\delta>0$ turn this into $z^{2} = \tan^{2}\delta\,(x^{2}+D^{2})$. The
visible horizon is below the local horizontal direction, so $z<0$ and

\begin{equation}\label{eq:curve}
z(x) = -\tan\delta\,\sqrt{x^{2}+D^{2}}.
\end{equation}

The positive root discarded here is the mirror image of the horizon above eye
level, which does not satisfy \eqref{eq:proj} and is excluded by the sign of
$u_{z}$. Equation \eqref{eq:curve} is the lower branch of the hyperbola
$z^{2}-x^{2}\tan^{2}\delta = D^{2}\tan^{2}\delta$, and it is the exact
projected horizon curve on the vertical ruler plane. It is not replaced here by
a circular arc. [Kinlen (2017)][kinlen] derives the equivalent projection for a
vertical image plane, his viewing distance $\nu$ corresponding to $D$ and his
midpoint rise $\epsilon$ to $s$; the two rulers supply a physical measurement in
that plane.

Evaluating \eqref{eq:curve} at the midpoint $x=0$ gives $z_{0} = -D\tan\delta$,
and at either crossing $x=\pm a$ it gives
$z_{e} = -\tan\delta\,\sqrt{a^{2}+D^{2}}$. Substituting both into
\eqref{eq:sdef} and factoring out $\tan\delta$,

\begin{equation}\label{eq:sag}
s = \tan\delta\,\Bigl(\sqrt{a^{2}+D^{2}}-D\Bigr).
\end{equation}

Because $\sqrt{a^{2}+D^{2}}>D$ for $a>0$, equation \eqref{eq:sag} confirms that
$s>0$ under the stated assumptions. [Lynch (2008, Section 3 and Figure 5)][lynch]
measures the analogous displacement from three horizon points in a photograph;
the circular-sagitta model he introduces later is not the exact hyperbolic
projection derived here.

# Inversion for the Planet Radius

## The depression angle from the ruler readings

Solving \eqref{eq:sag} for the tangent of the depression angle and using
$a=L/2$,

\begin{equation}\label{eq:tandelta}
\tan\delta = \frac{s}{\sqrt{a^{2}+D^{2}}-D}
           = \frac{s}{\sqrt{D^{2}+(L/2)^{2}}-D}.
\end{equation}

For numerical evaluation the denominator of \eqref{eq:tandelta} can be
rationalized exactly. Since

$$
\Bigl(\sqrt{D^{2}+a^{2}}-D\Bigr)\Bigl(\sqrt{D^{2}+a^{2}}+D\Bigr)
= \bigl(D^{2}+a^{2}\bigr)-D^{2} = a^{2},
$$

multiplying numerator and denominator by $\sqrt{D^{2}+a^{2}}+D$ gives the
quantity

\begin{equation}\label{eq:T}
T \equiv \tan\delta
  = \frac{s\bigl(\sqrt{D^{2}+a^{2}}+D\bigr)}{a^{2}}
  = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}}.
\end{equation}

Equation \eqref{eq:T} avoids subtracting two nearly equal numbers when $L$ is
small relative to $D$, which is the usual case. It is algebraically identical
to \eqref{eq:tandelta} and is not an approximation.

## The radius

The dip relation \eqref{eq:dip} inverts directly. Multiplying out
$\cos\delta\,(R+h)=R$ gives $R\cos\delta + h\cos\delta = R$, hence
$h\cos\delta = R\,(1-\cos\delta)$, and dividing by $1-\cos\delta$,

\begin{equation}\label{eq:Rcos}
R = \frac{h\cos\delta}{1-\cos\delta}.
\end{equation}

Equation \eqref{eq:Rcos} is al-Bīrūnī's result: it turns a dip angle observed
from a known height into the planet radius, and everything before it in this
article exists only to supply $\delta$ from two ruler readings.

Since $0<\delta<\pi/2$, the cosine is positive and the exact identity
$\cos\delta = 1/\sqrt{1+\tan^{2}\delta}$ applies, so
$\cos\delta = 1/\sqrt{1+T^{2}}$ with $T$ from \eqref{eq:T}. Substituting into
\eqref{eq:Rcos} and multiplying numerator and denominator by $\sqrt{1+T^{2}}$,

\begin{equation}\label{eq:Rminus}
R = \frac{h/\sqrt{1+T^{2}}}{1-1/\sqrt{1+T^{2}}}
  = \frac{h}{\sqrt{1+T^{2}}-1}.
\end{equation}

Rationalizing \eqref{eq:Rminus} in the same way as before gives the form that
should be used in practice,

\begin{equation}\label{eq:R}
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}},
\end{equation}

which avoids subtracting two nearly equal numbers when $T$ is small. Like
\eqref{eq:T}, it is an exact rearrangement and not an approximation.

## Result

Measuring $h$, $D$, $L$, and $s$ in a common unit and combining \eqref{eq:T}
with \eqref{eq:R} gives the planet radius as

$$
\boxed{\;
T = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}},
\qquad
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}}.
\;}
$$

Two degenerate cases bound the method's applicability. At $h=0$ the geometric
horizon gives $s=0$ for every radius, so no observation at eye level on the
surface can determine $R$. For $h>0$, a measured $s\le 0$ is incompatible with
a finite positive radius in the stated arrangement and must not be inserted
into \eqref{eq:R}, where squaring $T$ would conceal the wrong sign.

# Procedure

1. Measure the eye altitude $h$ above the spherical surface that forms the
   horizon.
2. Fix both rulers in one vertical plane at the measured horizontal,
   perpendicular distance $D$ from the observing eye.
3. Level the horizontal ruler against the local horizontal direction.
4. Align the horizontal ruler so that the visible horizon crosses it at two
   symmetric points near its edges, with their midpoint directly in front of
   the eye in the left-right direction.
5. Measure the distance $L$ between those two crossings.
6. At the midpoint of the crossings, measure the vertical rise $s$ from the
   horizontal ruler to the horizon.
7. Compute $T = 4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)/L^{2}$.
8. Compute $R = h\bigl(\sqrt{1+T^{2}}+1\bigr)/T^{2}$.

# Worked Example

The numbers in this section are synthetic. The rise $s$ was computed from the
forward relation \eqref{eq:sag} for an assumed radius $R=6371.0$ km, the mean
radius of the Earth, and then rounded to the nearest $0.001$ mm to imitate a
ruler reading. The example therefore checks the inversion and exhibits its
sensitivity; it is not the report of an observation, and by construction it
contains no refraction, no wave or terrain displacement of the horizon, and no
alignment error.

Take an observer on a coastal summit looking out at the sea horizon, with a
metre rule held at arm's length and a second rule standing at its midpoint:

| Quantity                             | Symbol | Value                                      |
|:-------------------------------------|:-------|:-------------------------------------------|
| Eye altitude above the sea surface   | $h$    | $2000.0$ m                                 |
| Eye to ruler plane                   | $D$    | $0.6000$ m                                 |
| Separation of the horizon crossings  | $L$    | $0.6000$ m                                 |
| Midpoint rise                        | $s$    | $1.775$ mm $= 1.775\times10^{-3}$ m        |

All four are already in metres, as \eqref{eq:T} and \eqref{eq:R} require.
Evaluating the bracket in \eqref{eq:T} first,

$$
\sqrt{D^{2}+(L/2)^{2}} = 0.6708204\ \text{m},
\qquad
\sqrt{D^{2}+(L/2)^{2}}+D = 1.2708204\ \text{m},
\qquad
L^{2} = 0.360000\ \text{m}^{2},
$$

so that

$$
T = \frac{4\,(1.775\times10^{-3})\,(1.2708204)}{0.360000}
  = 2.506340\times10^{-2},
$$

which corresponds to a horizon depression of
$\delta=\arctan T=1.4357^{\circ}$. Then $T^{2}=6.281741\times10^{-4}$ and
$\sqrt{1+T^{2}}=1.0003140$, so \eqref{eq:R} gives

$$
R = \frac{2000.0\,(2.0003140)}{6.281741\times10^{-4}}
  = 6.368661\times10^{6}\ \text{m}
  = 6368.7\ \text{km}.
$$

This is $0.037\%$ below the assumed $6371.0$ km, and the entire discrepancy
comes from rounding $s$ to the nearest $0.001$ mm. The example also shows why
\eqref{eq:T} and \eqref{eq:R} are preferred over their unrationalized
equivalents: here $\sqrt{1+T^{2}}-1 = 3.1404\times10^{-4}$, so the denominator
of \eqref{eq:Rminus} is the difference of two numbers that agree to three
decimal places, and the agreement tightens as $T$ falls.

The sensitivity of the result to the ruler reading can be stated exactly.
Differentiating \eqref{eq:Rminus} and using $R=h/(\sqrt{1+T^{2}}-1)$ to
eliminate $h$,

\begin{equation}\label{eq:sens}
\frac{\partial \ln R}{\partial \ln T}
= -\,\frac{T^{2}}{\sqrt{1+T^{2}}\,\bigl(\sqrt{1+T^{2}}-1\bigr)},
\end{equation}

and $T$ is exactly proportional to $s$ at fixed $D$ and $L$, so
$\partial \ln R/\partial \ln s$ takes the same value. At the $T$ of this
example \eqref{eq:sens} equals $-1.99969$: the inferred radius responds twice
as strongly as the reading, and in the opposite direction. The tendency of
\eqref{eq:sens} to $-2$ as $T\to0$ is a limit, not an approximation. Its
practical weight is easiest to see by recomputing the radius exactly from
neighbouring readings. A rule read to $\pm0.05$ mm, which is $2.8\%$ of $s$
here, admits

$$
s = 1.725\ \text{mm} \;\Rightarrow\; R = 6743\ \text{km},
\qquad
s = 1.825\ \text{mm} \;\Rightarrow\; R = 6025\ \text{km},
$$

a spread of about $\pm6\%$. By contrast $\partial \ln R/\partial \ln h = 1$
exactly, so the altitude enters only in proportion. Since $s$ grows with $L$ at
fixed $D$ and $\delta$, widening the horizontal ruler relative to the
eye-to-ruler distance is the most direct way to reduce the relative error, and
it is why this example uses $L=D$.


# Accuracy and Systematic Effects

The measured value of $s$ is usually small. For an Earth-sized planet and a
ruler held at ordinary arm's length, the midpoint rise can be a fraction of a
millimetre unless the observer is at a large altitude. The method is therefore
sensitive to ruler alignment, eye position, terrain, sea state, and atmospheric
refraction.

Equations \eqref{eq:T} and \eqref{eq:R} describe an ideal spherical planet with
a sharp geometric horizon. Real measurements should record the uncertainty in
$h$, $D$, $L$, and $s$, and should repeat the observation with different ruler
widths and eye-to-ruler distances. A valid result gives the same $R$ within the
combined uncertainty. Equation \eqref{eq:sens} fixes how an error in the ruler
reading propagates, and Section 6 shows what that amounts to for a plausible
arrangement.

Refraction is the dominant systematic effect, and it is not small. With the
standard refraction coefficient $k\approx1/7$ near sea level
[(Young, n.d.)][young], a horizon seen through the real atmosphere behaves like
the horizon of a larger sphere, and a radius inferred from the geometric
relations above is too large by roughly a factor $1/(1-k)$, which is some
seventeen per cent for $k=1/7$. The bias is not stable either:
[Moll (1931)][moll] reports observed dips departing from tabulated values by ten
minutes of arc and more, which at the altitudes available to this method is a
large fraction of $\delta$ itself. That al-Bīrūnī's own result nevertheless came
out within a few percent of the modern radius should not be read as evidence
that the bias is small; agreement with a known answer is not a check on
refraction.

Agreement between repeated measurements is a consistency check, not a proof
that refraction is absent. A refracted horizon can shift the inferred radius
systematically even when different ruler settings agree with one another. For
the physical distinction between the geometric and the refracted horizon dip,
see [Young (n.d.)][young].

# Relation to Earlier Work

[Cyrulies (2025)][cyrulies] reports a horizon-curvature experiment from a known
altitude using a rotating sight, a reticle, and a camera; its instrument and its
angular measurements differ from the fixed rulers used here. Earlier,
[Lichtenstein and Suit (1967)][nasa] tested calibrated horizon templates to
estimate altitude above a body of known radius, which is the related inverse
problem. An informal proposal by [skrutnizer (2022)][ruler-comment] also
suggests estimating the radius from altitude and the angular bow of the horizon
over a ruler; it is evidence of an earlier discussion of the idea, not a source
for the equations above.

The method also sits in the older line of dip measurements. Al-Bīrūnī's
inversion \eqref{eq:Rcos} is unchanged here; what differs is how $\delta$ is
obtained. Navigational dip meters read it directly with a prism and a sextant
scale [(Moll 1931)][moll], whereas the two rulers infer it from lengths, which
removes the need for a calibrated angular scale at the cost of requiring $D$.
Closest in observable is [Bislin (n.d.)][bislin], whose curvature simulator
computes the drop of the horizon relative to the chord joining two horizon
points near the edges of a frame -- the quantity called $s$ here -- including
refraction. That model runs forward from an assumed radius and treats the
horizon arc as circular, rather than inverting the exact projection
\eqref{eq:curve} for $R$.

These precedents establish both the measurement principle and the projected
geometry. What is presented here is an explicit two-ruler implementation
together with an exact inversion in terms of $h$, $D$, $L$, and $s$. A search
of the literature did not locate that complete combination, but a search that
fails to find an arrangement does not establish its historical originality.
Detailed comparisons are recorded in `notes/prior-work.md`.

# Conclusion

Two rulers in a fixed vertical plane, a known eye altitude, and a known
eye-to-ruler distance determine the radius of a spherical planet exactly,
through equations \eqref{eq:T} and \eqref{eq:R}. The projected horizon is a
hyperbola rather than a circular arc, and the inversion requires no small-angle
expansion at any stage. The practical difficulty lies entirely in the
measurement: the midpoint rise $s$ is small at accessible altitudes, and
atmospheric refraction, which is outside the ideal model, biases the result in
a way that repeated measurements alone cannot reveal.

# References {-}

\begingroup\small

1. Cyrulies, E. E. (2025). [The relationship between earth size and horizon
   curvature: its determination with a device built for a distance learning
   class][cyrulies]. *Revista Brasileira de Ensino de Física*, **47**.
   Published 6 October 2025. doi:10.1590/1806-9126-RBEF-2025-0275.
   Spanish-language article; English title supplied by the journal.
2. Bislin, W. (n.d.). [Finding the curvature of the Earth][bislin] and the
   accompanying Advanced Earth Curvature Calculator. *walter.bislins.ch*.
   Web resource, created 27 August 2019.
3. Howe, A. R. (2019, December 22). [A Challenge to Flat Earthers][howe].
   *Science Meets Fiction*. Blog post.
4. Kinlen, P. (2017, November 27). [Photographing the horizon][kinlen].
   *A bit of maths*. Blog post.
5. Lichtenstein, J. H., and Suit, W. T. (1967). [An experimental investigation
   of two visual methods of altitude determination][nasa]. NASA TM X-1392,
   Langley Research Center.
6. Lynch, D. K. (2008). [Visually discerning the curvature of the
   Earth][lynch]. *Applied Optics*, **47**(34), H39--H43.
   doi:10.1364/AO.47.000H39.
7. Moll, E. (1931). [Measurement of the dip of the horizon][moll].
   *The International Hydrographic Review*, **VIII**(1). Translation of a
   lecture delivered at the Verein Deutscher Seeschiffer, Hamburg,
   3 October 1906.
8. skrutnizer (2022, September). [Comment on estimating radius with a ruler and
   horizon curvature][ruler-comment]. Reddit, r/flatearth. Informal online
   discussion.
9. Sparavigna, A. C. (2013). [The Science of al-Bīrūnī][sparavigna].
   *International Journal of Sciences*, **2**(12), 52--60.
   doi:10.18483/ijSci.364. arXiv:1312.7288.
10. Young, A. T. (n.d.). [Dip of the Horizon][young]. San Diego State University
   astronomy website.

\noindent Web sources accessed 9--10 September 2026.

\endgroup

[bislin]: https://walter.bislins.ch/bloge/index.asp?page=Finding+the+curvature+of+the+Earth
[moll]: https://journals.lib.unb.ca/index.php/ihr/article/view/28507
[sparavigna]: https://arxiv.org/abs/1312.7288
[cyrulies]: https://www.scielo.br/j/rbef/a/DyQQTFPCRzwwJnJNq4K3v4z/?format=html&lang=es
[howe]: https://sciencemeetsfiction.com/2019/12/22/a-challenge-to-flat-earthers/
[kinlen]: https://abitofmaths.blogspot.com/2017/11/photographing-horizon.html
[nasa]: https://ntrs.nasa.gov/citations/19670017937
[lynch]: https://opg.optica.org/ao/abstract.cfm?uri=ao-47-34-H39
[ruler-comment]: https://www.reddit.com/r/flatearth/comments/xbd2zh/comment/io1jiof/
[young]: https://aty.sdsu.edu/explain/atmos_refr/dip.html
