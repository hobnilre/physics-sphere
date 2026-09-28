---
title: "Measuring a Planet's Radius with Two Rulers"
subtitle: "An exact horizon-curvature method"
author: "Hob Nilre & Bo C. Herlin"
date: "27 September 2026"
abstract: |
  The open experimental problem is whether two fixed rulers can recover a
  planetary radius with quantified reading, alignment, and atmospheric
  uncertainties. This note establishes an exact inversion for a spherical
  surface and straight light rays; separating the geometric radius from
  atmospheric displacement remains unresolved by the four measured lengths
  alone. The measured quantities are the eye altitude $h$
  above the spherical surface, the perpendicular distance $D$ from the eye to
  the ruler plane, the separation $L$ of the two points at which the horizon
  crosses a horizontal ruler, and the rise $s$ of the horizon above that ruler
  at the midpoint of the crossings, read from a second, vertical ruler. The
  projected geometric horizon is one branch of a hyperbola. Its midpoint rise
  determines $T=\tan\delta$, where $\delta$ is the geometric horizon
  depression, and hence $R=h(\sqrt{1+T^{2}}+1)/T^{2}$. The derivation uses
  exact identities and algebraically equivalent stable rearrangements, with
  no small-angle expansion or circular-arc substitution. Exact sensitivities,
  finite measurement bounds, and a protocol for investigating signed
  discrepancies specify what must be tested. The worked example is synthetic;
  no field observation or achieved instrument uncertainty is reported.
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

\begingroup\scriptsize\noindent PDF created: \pdfbuildtimestamp\par\noindent Latest on GitHub: \url{https://github.com/hobnilre/physics-sphere}\par\endgroup

# Introduction

The open problem is to establish whether a fixed two-ruler arrangement can
recover a consistent planetary radius with measured uncertainty. Three
questions remain: what precision the assembly achieves, how atmospheric
displacement can be separated from the geometric horizon, and whether signed
discrepancies persist after independent checks. This article supplies an exact
geometric inversion and a procedure for investigating those questions. The
worked example is synthetic; instrument validation and field measurements
remain to be performed.

With straight light rays, the horizon of a spherical planet lies below the
observer's local horizontal plane, and its image on a plane held in front of the eye is curved
rather than straight. Both the depression and the curvature depend on the
planet's radius and on the observer's altitude. Within this model the four
lengths defined below determine the radius. The depression, or dip, is
classical and is used in celestial navigation; its unrefracted and refracted
forms are reviewed by [Young (n.d.)][young]. The curvature is the harder of the
two effects to see, because from ordinary altitudes the horizon departs from a
straight line by far less than the width of a normal field of view, which is
why photographic tests of it demand care, as [Lynch (2008)][lynch] discusses.

This note treats the inverse problem in its simplest instrumented form. Two
ordinary rulers, fixed in one vertical plane in front of a single eye, supply
the required geometric measurements, provided the observer also knows the
eye altitude above the spherical surface and the distance from the eye to the
ruler plane. A horizontal ruler is placed so that the visible horizon crosses
it near its two ends; a vertical ruler at the midpoint of those crossings reads
the amount by which the horizon bows above the horizontal ruler. Four lengths
are then in hand, and the radius follows in closed form under the stated
assumptions. For an atmospheric horizon the same calculation gives a radius
inferred under the straight-ray model; an independent atmospheric constraint
is needed to identify it with the physical radius.

Inferring a radius from the horizon is an old idea. In the eleventh century
al-Bīrūnī measured horizon dip from a hill of known height at
Nandana, in present-day Pakistan, and inverted it for the Earth's radius.
[Sparavigna (2013)][sparavigna] reports a difference of about two percent from
a reference radius of curvature, using a specified conversion of the
historical length unit. The dip inversion is equation \eqref{eq:Rcos} below.
Measuring the dip directly then became an
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
horizon against a straight edge in a photograph;
[Cyrulies (2025)][cyrulies] built a dedicated instrument with a rotating sight,
reticle, and camera; and [Bislin (n.d.)][bislin] models a related angular bow
and reports a corresponding arc length, with adjustable refraction.
Earlier still, [Lichtenstein and Suit (1967)][nasa] tested
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

Mount the horizontal ruler in a vertical plane in front of the eye, with the
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

Use a rigid support for the rulers and a headrest or sighting stop to make the
monocular observing point repeatable. Measure $D$ from that point and record
its placement uncertainty. Check the horizontal ruler with a level and the
ruler plane and vertical scale against a plumb reference, independently of the
horizon. The top measuring edge and the vertical scale's reference marks must
lie in the same plane: simply stacking one ruler over another need not satisfy
this condition. Record straightness, flexure, and any departure from that plane.

The midpoint horizon must remain visible at the vertical scale. A transparent
scale or a fine reference mark can permit the reading, but its optical
displacement, thickness, and interpolation error must be calibrated. An
off-midpoint reading is not $s$ in the derivation. Record graduation spacing,
interpolation, repeated-reading spread, and calibration uncertainty separately;
a fine printed scale alone does not establish the uncertainty of a horizon
reading. Section 7 describes the proposed instrument validation.

The derivation assumes that the visible horizon is the geometric horizon of a
spherical planet. Hills, waves, buildings, haze, and atmospheric refraction
require investigation when applying the method to an observed horizon.

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

is positive. This definition fixes the sign of a recorded reading even when
the observed horizon departs from the assumed model.

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
surface can determine $R$. For $h>0$, a measured $s\le 0$ lies outside the
positive-radius inversion's domain and must not be inserted into
\eqref{eq:R}, where squaring $T$ would conceal its sign. Retain such readings,
their uncertainties, and observing conditions for the discrepancy analysis in
Section 7. A positive reading whose allowed interval reaches $s=0$ gives no
finite upper radius bound from these measurements alone.

# Procedure

1. Set a target uncertainty for the inferred radius and calibrate the assembly
   as described in Section 7. Measure the eye altitude $h$ above the spherical
   surface that forms the horizon, with its uncertainty.
2. Fix the observing eye and both rulers. Check that their measuring
   references share one vertical plane and measure the horizontal,
   perpendicular distance $D$ from the observing point to that plane.
3. Check the ruler's level and the plane's vertical orientation independently
   of the horizon; record alignment and placement uncertainty.
4. Align the horizontal ruler so that the visible horizon crosses it at two
   symmetric points near its edges, with their midpoint directly in front of
   the eye in the left-right direction.
5. Measure the distance $L$ between those two crossings, retaining the
   crossing positions and their uncertainties.
6. At their midpoint, measure the signed vertical rise $s$ from the horizontal
   ruler's measuring edge to the horizon. Record its uncertainty, timestamp,
   and horizon conditions, including zero or negative readings.
7. For positive $h,D,L,s$, compute
   $T = 4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)/L^{2}$ and
   $R = h\bigl(\sqrt{1+T^{2}}+1\bigr)/T^{2}$. Evaluate finite uncertainty
   bounds as in Section 7; retain out-of-domain data without assigning a radius.
8. Repeat over recorded ruler settings under comparable conditions. Report
   the signed residuals, atmospheric constraints, checks performed, and any
   discrepancy that remains unresolved.

# Worked Example

The numbers in this section are synthetic. The rise $s$ was computed from the
forward relation \eqref{eq:sag} for an assumed radius $R=6371.0$ km, the mean
radius of the Earth. The unrounded rise is $1.774674087576960\ldots$ mm; it was
rounded to the nearest $0.001$ mm to imitate a ruler reading. This numerical
rounding does not establish a reading capability. The example checks the
inversion and exhibits its sensitivity; it is not the report of an observation, and by construction it
contains no refraction, no wave or terrain displacement of the horizon, and no
alignment error.

Take a hypothetical observer on a coastal summit looking out at the sea
horizon, with a metre rule fixed at $D=0.6000$ m and a second rule at its midpoint:

| Quantity                             | Symbol | Value                                      |
|:-------------------------------------|:-------|:-------------------------------------------|
| Eye altitude above the sea surface   | $h$    | $2000.0$ m                                 |
| Eye to ruler plane                   | $D$    | $0.6000$ m                                 |
| Separation of the horizon crossings  | $L$    | $0.6000$ m                                 |
| Midpoint rise                        | $s$    | $1.775$ mm $= 1.775\times10^{-3}$ m        |

All four values are expressed in metres for this calculation.
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
eliminate $h$, then cancelling
$T^2=(\sqrt{1+T^2}-1)(\sqrt{1+T^2}+1)$, gives

\begin{equation}\label{eq:sens}
\frac{\partial \ln R}{\partial \ln T}
= -\left(1+\frac{1}{\sqrt{1+T^{2}}}\right).
\end{equation}

This algebraically equivalent form avoids subtraction of nearly equal
numbers; no approximation is involved. Since $T$ is exactly proportional to
$s$ at fixed $D$ and $L$,
$\partial \ln R/\partial \ln s$ takes the same value. At the $T$ of this
example \eqref{eq:sens} equals $-1.99969$. The tendency of
\eqref{eq:sens} to $-2$ as $T\to0$ is a limit, not an approximation. Its
practical weight is easiest to see by recomputing the radius exactly from
neighbouring readings. Suppose, illustratively, that the achieved reading
uncertainty is $\pm0.05$ mm, or $2.8\%$ of $s$ here, with the other inputs
fixed. This assumed capability has not been demonstrated for the assembly.
The endpoints give

$$
s = 1.725\ \text{mm} \;\Rightarrow\; R = 6743\ \text{km},
\qquad
s = 1.825\ \text{mm} \;\Rightarrow\; R = 6025\ \text{km},
$$

a change of $+5.8802\%$ and $-5.4035\%$, respectively, relative to the central
inferred radius, or about $\pm6\%$. These percentages use unrounded endpoint
radii; an experimental report should retain the asymmetric bounds.
The altitude enters in proportion, since
$\partial \ln R/\partial \ln h = 1$ exactly. At fixed $D$ and $\delta$, $s$
grows with the actual crossing separation $L$. Increasing $L$ reduces the
relative reading uncertainty if the absolute uncertainty in $s$ is held fixed;
the other contributions still require assessment. This is the reason for the
choice $L=D$ in the example.


# Accuracy and Systematic Effects

## Instrument validation remains open

The achieved reading and alignment uncertainties of this assembly have not
been measured. Exact evaluation of \eqref{eq:sag}, with $R=6371.0$ km and
$D=L=0.6000$ m, gives the following synthetic signals:

| Eye altitude $h$ | Predicted rise $s$ |
|:----------------|-------------------:|
| $1.7$ m         | $0.0517361$ mm     |
| $10$ m          | $0.125479$ mm      |
| $100$ m         | $0.396800$ mm      |
| $2000$ m        | $1.7746741$ mm     |

At $h=1.7$ m the predicted signal is comparable to the illustrative
$0.05$ mm reading uncertainty in Section 6. The useful altitude range must
therefore be established from achieved uncertainty, together with the effects
of ruler flexure, eye motion, levelling, scale placement, and horizon visibility.

A proposed first check uses a sphere of independently measured radius,
retaining the same definitions of $h,D,L,s$ and the exact forward relation.
Choose a target radius interval, measure the assembly's calibration and
repeatability, and vary $D$ and the actual crossing separation $L$ over the
intended operating range. Record ranges, spacing, repetitions, boundary cases,
and untested settings. Agreement in this controlled check would validate the
assembly only over the tested conditions. It would leave atmospheric effects
on a planetary horizon unresolved. No such validation is reported here.

## Exact sensitivities and finite bounds

All four measured lengths contribute to the result. Write
$q=\sqrt{D^2+(L/2)^2}$ and
$\gamma=1+1/\sqrt{1+T^2}$. Differentiating \eqref{eq:T} and using
\eqref{eq:sens} gives the exact local sensitivities

\begin{equation}\label{eq:all-sens}
\begin{aligned}
\frac{\partial\ln R}{\partial\ln h}&=1,
&\frac{\partial\ln R}{\partial\ln s}&=-\gamma,\\
\frac{\partial\ln R}{\partial\ln D}&=-\gamma\frac{D}{q},
&\frac{\partial\ln R}{\partial\ln L}&=\gamma\left(1+\frac{D}{q}\right).
\end{aligned}
\end{equation}

For example, logarithmic differentiation of
$T=4s(q+D)/L^2$ gives
$\partial\ln T/\partial\ln D=D/q$ and
$\partial\ln T/\partial\ln L=-1-D/q$; multiplying by
$\partial\ln R/\partial\ln T=-\gamma$ yields the last row.
At the rounded reading in Section 6 the coefficients for $(h,D,L,s)$ are
$(1,-1.78857,3.78826,-1.99969)$. These derivatives describe local response;
finite uncertainties should be evaluated with the exact inversion itself.

Denote the combined mapping \eqref{eq:T}--\eqref{eq:R} by $F(h,D,L,s)$.
For positive rectangular input intervals, subscripts $-$ and $+$ denoting
their lower and upper endpoints, the signs in \eqref{eq:all-sens} hold
throughout the domain. The exact extrema are therefore

\begin{equation}\label{eq:interval}
\begin{aligned}
R_{\min}&=F(h_-,D_+,L_-,s_+),\\
R_{\max}&=F(h_+,D_-,L_+,s_-).
\end{aligned}
\end{equation}

Correlations may restrict the feasible combinations; the enclosing box then
gives conservative bounds. In particular, $L$ and $s$ share the same reference
edge and crossing measurements. Retain those dependencies when known. If the
allowed positive $s$ approaches zero at fixed positive $h,D,L$, the upper
radius bound diverges. Preserve any negative part of the recorded interval as
well. These bounds account for input uncertainty within the stated model;
they do not by themselves bound departures from that model.

## Separating refraction from radius remains open

An atmosphere can change the apparent depression of the horizon, including
the sign of that change. Its effect depends on the atmospheric conditions;
an adopted near-surface refraction coefficient does not establish a correction
for a particular observation [(Young, n.d.)][young]. Which effect dominates
the uncertainty of this assembly remains to be measured.

To see why repeated ruler settings do not settle this question, let
$\delta_{\rm app}$ be the apparent depression. If propagation between the eye
and rulers is straight and the apparent depression is constant across the
observed azimuths, the projection argument of Section 3 gives

\begin{equation}\label{eq:apparent}
B_i=\frac{(L_i/2)^2}{\sqrt{D_i^2+(L_i/2)^2}+D_i},
\qquad
s_i=B_i\tan\delta_{\rm app}.
\end{equation}

Here $i$ labels a ruler setting, and $B_i$ is the rationalized geometric rise
factor. At fixed altitude and atmospheric conditions, all ratios $s_i/B_i$
estimate the same scalar. Agreement tests the projection and reading
consistency, but supplies no independent separation of geometric depression
from atmospheric displacement.

Define $\rho=\delta-\delta_{\rm app}$, positive when the atmosphere raises
the apparent horizon. Substitution into the exact dip inversion gives

\begin{equation}\label{eq:refraction-conditional}
R=\frac{h\cos(\delta_{\rm app}+\rho)}
        {1-\cos(\delta_{\rm app}+\rho)},
\qquad
0<\delta_{\rm app}+\rho<\pi/2.
\end{equation}

This identity is conditional on $\rho$; it neither determines that quantity
nor supplies an atmospheric model. An independent constraint on $\rho$ is
needed to bound the physical radius. Evaluate the expression using
\eqref{eq:R} with $T=\tan(\delta_{\rm app}+\rho)$ to avoid cancellation.

The sensitivity can be illustrated without adopting a refraction model.
Starting from the exact geometric dip for $R=6371.0$ km and $h=2000$ m,
decreasing the apparent dip by exactly $10$ arcminutes gives a straight-ray
inferred radius of $8155.16$ km; increasing it by the same angle gives
$5114.09$ km. These are synthetic angle perturbations, not observations or
atmospheric uncertainty bounds. [Moll (1931)][moll] reports departures from
tabulated dips of ten arcminutes and more, but that report does not establish
the displacement for this proposed experiment. Agreement with a known radius,
including the historical comparison for al-Bīrūnī, does not independently
measure refraction.

## Signed residuals and unresolved results

For a sphere with independently known radius $R_\star$, the exact tangent of
the geometric depression at recorded altitude $h_i$ is
$T_{\star,i}=\sqrt{h_i(2R_\star+h_i)}/R_\star$. Using $B_i$ from
\eqref{eq:apparent}, define the signed rise residual

\begin{equation}\label{eq:rise-residual}
r_{s,i}=s_i-B_iT_{\star,i}.
\end{equation}

A positive residual means a greater rise than predicted and, for positive
readings with the other inputs fixed, a smaller inferred radius. When the
radius is unknown, observations at the same altitude can instead test the
consistency of $T_i=s_i/B_i$ against a common fitted $T$. Report the fitted
parameter, its uncertainty, and the number of independent observations. A
single reading inverted to a radius and reproduced using that same radius
does not independently test the model.

Keep the original signed readings, timestamps, eye position, alignment
checks, horizon conditions, and measurement dependencies. Report residuals
in length units and inferred radius differences with their signs. Investigate
changes with $D$, $L$, alignment, and observing conditions, including zero
crossings and intervals that reach $s=0$. Record the tested ranges and
resolution, repeat counts, and untested regions. Check calibration, signs,
rounding, numerical precision, and the physical assumptions before attributing
a residual to a cause. A proposed explanation must account for its magnitude,
sign, and conditions. Any discrepancy left unresolved is an open result and
belongs with the principal findings, together with the checks already made.

No work or energy change is measured or calculated in this article; an energy
balance has not been evaluated. If an experiment reports an unexpected energy
change, state it among the principal open results and define the system
boundary, every energy-transfer port, and a measured interval $[t_0,t_1]$.
With each port power positive into the system, integrate each separately:

\begin{equation}\label{eq:energy-audit}
W_k=\int_{t_0}^{t_1}P_k(t)\,dt,
\qquad
r_E=E(t_1)-E(t_0)-\sum_k W_k.
\end{equation}

Account for switching, discontinuities, and impulses exactly once, evaluate
both stored-energy states independently, and quantify integration error and
model residuals. Do not assume constant stored energy from a static setup.
Report stored-energy changes and any unexplained balance residual separately,
with magnitude, sign, conditions, and completed checks. Equation
\eqref{eq:energy-audit} specifies a protocol for such a result; no energy data
are supplied here.

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
[Bislin (n.d.)][bislin] computes a related angular bow and a corresponding
arc length, with adjustable refraction. His [definition of the reported
drop][bislin-drop] is $p=v\psi$, where $v$ is the eye-to-horizon distance and
$\psi$ is the angular drop; it is not directly the ruler-plane length $s$.
The arc is an angular-to-length reporting convention and does not establish a
circular substitution for the projected horizon.

For matched endpoint rays in the present vertical plane, $\psi$ is the angle
between the central horizon ray and the ray to the midpoint of the endpoint
chord. That midpoint has coordinates $(0,D,z_e)$, so its depression is
$\arctan(-z_e/D)$. The exact conversion, derived here from
\eqref{eq:curve}, is

\begin{equation}\label{eq:angular-bow}
\begin{aligned}
\psi&=\arctan\!\left(T\frac{\sqrt{D^2+a^2}}{D}\right)-\arctan T,\\
s&=D\bigl[\tan(\delta+\psi)-\tan\delta\bigr].
\end{aligned}
\end{equation}

This identifies the related observable without equating $p$ with $s$ or $v$
with $D$. Bislin's model runs forward from an assumed radius; the present
method inverts the four measured lengths for $R$ under its stated assumptions.

These precedents establish both the measurement principle and the projected
geometry. What is presented here is an explicit two-ruler implementation
together with an exact inversion in terms of $h$, $D$, $L$, and $s$. A search
of the literature did not locate that complete combination, but a search that
fails to find an arrangement does not establish its historical originality.
Detailed comparisons are recorded in `notes/prior-work.md`.

# Conclusion

Instrument precision, separation of atmospheric displacement from geometric
radius, and the investigation of persistent signed discrepancies remain the
open experimental questions. No field observation or achieved instrument
uncertainty has been established here. A controlled sphere experiment can test
the assembly; a planetary observation also needs an independent atmospheric
constraint. Repeated ruler settings alone do not supply that constraint.

For a spherical surface and straight rays, the measured lengths $h,D,L,s$
determine $R$ exactly through \eqref{eq:T} and \eqref{eq:R}. The projected
horizon is a hyperbola, the algebra requires no small-angle expansion, and
the synthetic example checks the inversion. The finite bounds and residual
protocol make the next experimental tests explicit. Report any discrepancy
that survives those checks as an open result, with its sign, magnitude,
conditions, and remaining uncertainties.

# References {-}

\begingroup\small

1. Cyrulies, E. E. (2025). [The relationship between earth size and horizon
   curvature: its determination with a device built for a distance learning
   class][cyrulies]. *Revista Brasileira de Ensino de Física*, **47**.
   Published 6 October 2025. doi:10.1590/1806-9126-RBEF-2025-0275.
   Spanish-language article; English title supplied by the journal.
2. Bislin, W. (n.d.). [Finding the curvature of the Earth][bislin] and the
   accompanying Advanced Earth Curvature Calculator. *walter.bislins.ch*.
   Web resource, created 27 August 2019. See also [Calculating left-right
   Horizon Drop][bislin-drop] (17 February 2020), especially equation (10).
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

\noindent Web sources accessed 9--10 September 2026; the Bislin, Kinlen,
Sparavigna, and Young comparisons were checked again on 27 September 2026.

\endgroup

[bislin]: https://walter.bislins.ch/bloge/index.asp?page=Finding+the+curvature+of+the+Earth
[bislin-drop]: https://walter.bislins.ch/bloge/index.asp?page=Calculating+left-right+Horizon+Drop
[moll]: https://journals.lib.unb.ca/index.php/ihr/article/view/28507
[sparavigna]: https://arxiv.org/abs/1312.7288
[cyrulies]: https://www.scielo.br/j/rbef/a/DyQQTFPCRzwwJnJNq4K3v4z/?format=html&lang=es
[howe]: https://sciencemeetsfiction.com/2019/12/22/a-challenge-to-flat-earthers/
[kinlen]: https://abitofmaths.blogspot.com/2017/11/photographing-horizon.html
[nasa]: https://ntrs.nasa.gov/citations/19670017937
[lynch]: https://opg.optica.org/ao/abstract.cfm?uri=ao-47-34-H39
[ruler-comment]: https://www.reddit.com/r/flatearth/comments/xbd2zh/comment/io1jiof/
[young]: https://aty.sdsu.edu/explain/atmos_refr/dip.html
