---
title: "Measuring a Planet's Radius from Horizon Curvature"
author: "physics-sphere"
date: "2026-09-09"
geometry: margin=1in
header-includes:
  - \usepackage{placeins}
---

# Measuring a Planet's Radius from Horizon Curvature

This note gives an exact geometric procedure for estimating the radius of a
spherical planet from a horizon observation. The observer knows the altitude of
the eye above the spherical surface, holds a straight horizontal ruler between the
eye and the horizon, and measures how much the visible horizon bows above the
ruler at the midpoint.

No small-angle approximations are used. In particular, no step uses
$\sin x \approx x$, $\tan x \approx x$, or any equivalent shortcut.

## Required Measurements

The method needs four measured quantities:

- $h$: altitude of the observer's eye above the local spherical surface.
- $D$: perpendicular distance from the eye to the ruler plane.
- $L$: horizontal distance between the two points where the horizon crosses the
  horizontal ruler.
- $s$: vertical distance from the horizontal ruler to the horizon at the
  midpoint of the horizontal ruler.

The altitude $h$ must be measured above the same spherical surface that forms
the horizon. For a sea horizon viewed from a hill, it includes the hill's
elevation above sea level as well as the eye's height above the ground.

Assume $R>0$, $h>0$, $D>0$, and $L>0$. The stated setup then gives $s>0$.

The distance $D$ is essential. Without it, $L$ and $s$ describe only a shape on
the ruler, not the angular size of that shape as seen from the eye. Different
eye-to-ruler distances can produce the same $L$ and $s$ while corresponding to
different planet radii.

## Observation Setup

Hold the horizontal ruler in a vertical plane in front of the eye. The ruler
plane should be perpendicular to the central horizontal line of sight. Place the
horizontal ruler so that the visible horizon crosses it near the ruler's left
and right edges.

[Howe (2019)][howe] describes a closely related ruler comparison using a
photograph. Here, a second ruler reads the midpoint rise directly.

Use one fixed eye, and place both rulers in the same vertical plane. The
vertical ruler must lie at the midpoint of the two horizon crossings, directly
in front of the eye in the left-right direction. Measure $D$ horizontally and
perpendicularly to that plane, rather than along the downward sightline to the
horizon.

At the center of the horizontal ruler, use the vertical ruler to measure the
distance from the horizontal ruler to the visible horizon. In the coordinate
convention below, $s$ is positive when the horizon at the midpoint is above the
horizontal ruler. This is the expected arrangement when the horizontal ruler is
placed through two symmetric horizon points.

The measurement is best made with the head and ruler fixed, and with the
horizontal ruler leveled relative to the local horizontal direction. The
procedure assumes that the visible horizon is the true geometric horizon of a
spherical planet, not a horizon displaced by hills, waves, buildings, haze, or
atmospheric refraction.

![Observation setup. Left: eye altitude $h$ and perpendicular eye-to-ruler-plane
distance $D$. Right: the observer's view, with crossing separation $L$ and
midpoint rise $s$ measured from the horizontal ruler's top edge. The drawing is
schematic; curvature and distances are exaggerated.](figures/measurement-setup.png){width=100%}

\FloatBarrier

## Coordinate System

Put the observer's eye at the origin $O=(0,0,0)$.

Use these axes:

- $x$: horizontal left-right direction along the ruler.
- $y$: horizontal forward direction from the eye toward the ruler plane.
- $z$: vertical upward direction.

The planet center is directly below the observer:

$$
C = (0,0,-(R+h)),
$$

where $R$ is the unknown planet radius.

The ruler plane is

$$
y = D.
$$

Let

$$
a = \frac{L}{2}.
$$

The two measured horizon crossings are located on the ruler plane at

$$
(x,y,z) = (-a,D,z_e)
$$

and

$$
(x,y,z) = (a,D,z_e).
$$

The horizon point at the midpoint of the ruler plane is

$$
(x,y,z) = (0,D,z_0).
$$

The measured midpoint rise is

$$
s = z_0 - z_e.
$$

## Exact Horizon Geometry

A ray from the eye in direction $\mathbf{u}$ reaches the geometric horizon when
it is tangent to the spherical planet. The unit direction vector
$\mathbf{u}$ satisfies

$$
|\mathbf{u}| = 1.
$$

The distance from the planet center $C$ to the line through the eye in direction
$\mathbf{u}$ must equal the planet radius $R$. The perpendicular distance from
$C$ to that line is

$$
\sqrt{|C|^2 - (C \cdot \mathbf{u})^2}.
$$

The tangency condition is therefore

$$
|C|^2 - (C \cdot \mathbf{u})^2 = R^2.
$$

Since

$$
|C| = R+h
$$

and

$$
C \cdot \mathbf{u} = -(R+h)u_z,
$$

the condition becomes

$$
(R+h)^2 - (R+h)^2 u_z^2 = R^2.
$$

Divide by $(R+h)^2$:

$$
1-u_z^2 = \left(\frac{R}{R+h}\right)^2.
$$

For the visible horizon below eye level, $u_z$ is negative, so

$$
u_z = -\sqrt{1-\left(\frac{R}{R+h}\right)^2}.
$$

For this negative root, $C\cdot\mathbf{u}=-(R+h)u_z>0$. Thus the tangent
point lies on the forward ray from the eye, not on its backward extension.

Define the exact depression angle $\delta$ of the horizon below the local
horizontal plane, with $0<\delta<\pi/2$, by

$$
u_z = -\sin \delta.
$$

Then

$$
\sin \delta =
\sqrt{1-\left(\frac{R}{R+h}\right)^2}
$$

and therefore

$$
\cos \delta = \frac{R}{R+h}.
$$

This equation is exact for a spherical planet with straight light rays; the
same unrefracted dip relation is given by [Young (n.d.)][young].

## Projection onto the Ruler Plane

A point $(x,D,z)$ on the ruler plane is seen from the eye along the direction
of the vector

$$
\mathbf{v} = (x,D,z).
$$

The corresponding unit direction is

$$
\mathbf{u}
= \frac{(x,D,z)}{\sqrt{x^2+D^2+z^2}}.
$$

Thus

$$
u_z = \frac{z}{\sqrt{x^2+D^2+z^2}}.
$$

The point lies on the projected horizon when

$$
\frac{z}{\sqrt{x^2+D^2+z^2}} = -\sin \delta.
$$

Squaring both sides gives

$$
z^2 = \sin^2 \delta \,(x^2+D^2+z^2).
$$

Move the $z^2$ term on the right to the left:

$$
z^2(1-\sin^2\delta) = \sin^2\delta\,(x^2+D^2).
$$

Use the exact identity $1-\sin^2\delta=\cos^2\delta$:

$$
z^2\cos^2\delta = \sin^2\delta\,(x^2+D^2).
$$

Divide by $\cos^2\delta$:

$$
z^2 = \tan^2\delta\,(x^2+D^2).
$$

The visible horizon is below the local horizontal direction, so $z$ is negative:

$$
z(x) = -\tan\delta\,\sqrt{x^2+D^2}.
$$

This is the negative branch of a hyperbola, the exact projected horizon curve
on the vertical ruler plane. It is not replaced by a circular arc approximation.

[Kinlen (2017)][kinlen] derives the equivalent projection for a vertical image
plane. His viewing distance $\nu$ corresponds to $D$, and his midpoint rise
$\epsilon$ corresponds to $s$. Our rulers provide a physical measurement in
that plane.

At the midpoint $x=0$,

$$
z_0 = -D\tan\delta.
$$

At either measured edge point $x=\pm a$,

$$
z_e = -\tan\delta\,\sqrt{a^2+D^2}.
$$

The measured midpoint rise is therefore

$$
s = z_0 - z_e
$$

so

$$
s
= -D\tan\delta
  + \tan\delta\,\sqrt{a^2+D^2}.
$$

Factor out $\tan\delta$:

$$
s = \tan\delta\,(\sqrt{a^2+D^2}-D).
$$

[Lynch (2008, Section 3 and Figure 5)][lynch] measures the analogous displacement
from three horizon points in a photograph. His later circular-sagitta model is
not the exact hyperbolic projection derived here.

Therefore the exact tangent of the horizon depression angle is

$$
\tan\delta =
\frac{s}{\sqrt{a^2+D^2}-D}.
$$

Since $a=L/2$,

$$
\tan\delta =
\frac{s}{\sqrt{D^2+(L/2)^2}-D}.
$$

For numerical evaluation, the denominator can be rationalized exactly. Since

$$
(\sqrt{D^2+a^2}-D)(\sqrt{D^2+a^2}+D)
= (D^2+a^2)-D^2 = a^2,
$$

multiplying numerator and denominator by $\sqrt{D^2+a^2}+D$ gives

$$
\tan\delta
= \frac{s(\sqrt{D^2+a^2}+D)}{a^2}
= \frac{4s(\sqrt{D^2+(L/2)^2}+D)}{L^2}.
$$

This form avoids subtracting nearly equal numbers when $L$ is small relative
to $D$. It is algebraically identical to the preceding expression, without an
approximation.

## Solving for the Planet Radius

From the exact horizon geometry,

$$
\cos\delta = \frac{R}{R+h}.
$$

Solve for $R$:

$$
\cos\delta\,(R+h)=R.
$$

Expand:

$$
R\cos\delta + h\cos\delta = R.
$$

Move the $R\cos\delta$ term to the right:

$$
h\cos\delta = R(1-\cos\delta).
$$

Divide by $1-\cos\delta$:

$$
R = \frac{h\cos\delta}{1-\cos\delta}.
$$

Let

$$
T =
\frac{s}{\sqrt{D^2+(L/2)^2}-D}.
$$

Then

$$
T=\tan\delta.
$$

Since $0<\delta<\pi/2$, its cosine is positive. Using the exact identity

$$
\cos\delta = \frac{1}{\sqrt{1+\tan^2\delta}},
$$

we get

$$
\cos\delta = \frac{1}{\sqrt{1+T^2}}.
$$

Substitute this into the radius equation:

$$
R =
\frac{h / \sqrt{1+T^2}}
{1 - 1/\sqrt{1+T^2}}.
$$

Multiply numerator and denominator by $\sqrt{1+T^2}$:

$$
R =
\frac{h}{\sqrt{1+T^2}-1}.
$$

An algebraically equivalent exact form is often better for numerical
calculation:

$$
R =
\frac{h(\sqrt{1+T^2}+1)}{T^2}.
$$

This last form avoids subtracting two nearly equal numbers when $T$ is small.
It is not an approximation.

## Final Formula

Measure $h$, $D$, $L$, and $s$. Compute $T$ using the exact, rationalized expression

$$
\boxed{
T =
\frac{4s(\sqrt{D^2+(L/2)^2}+D)}{L^2}
}.
$$

Then the planet radius is

$$
\boxed{
R =
\frac{h(\sqrt{1+T^2}+1)}{T^2}
}
$$

All quantities $h$, $D$, $L$, and $s$ must be expressed in the same unit.

At $h=0$, the geometric horizon has $s=0$ for every radius, so this method
cannot determine $R$. With $h>0$, a measured $s\leq0$ is incompatible with a
finite positive radius in the stated setup; do not insert it into the radius
formula, where squaring $T$ would conceal a wrong sign.

## Practical Procedure

1. Measure the eye altitude $h$ above the spherical surface forming the horizon.
2. Fix both rulers in one vertical plane at the measured horizontal,
   perpendicular distance $D$ from the observing eye.
3. Level the horizontal ruler.
4. Align the horizontal ruler so the visible horizon crosses it at two
   symmetric points near the ruler's edges, with their midpoint directly in
   front of the eye in the left-right direction.
5. Measure the distance $L$ between those two crossings.
6. At the midpoint of those crossings, measure the vertical rise $s$ from the
   horizontal ruler to the horizon.
7. Compute
   $T=4s(\sqrt{D^2+(L/2)^2}+D)/L^2$.
8. Compute
   $R=h(\sqrt{1+T^2}+1)/T^2$.

## Notes on Accuracy

The measured value $s$ is usually small. For an Earth-sized planet and a ruler
held at ordinary arm's length, the midpoint rise can be fractions of a
millimeter unless the observer is at a large altitude. This makes the method
sensitive to ruler alignment, eye position, terrain, sea state, and atmospheric
refraction.

The exact formula above describes an ideal spherical planet with a sharp
geometric horizon. Real measurements should record the uncertainty in $h$, $D$,
$L$, and $s$, and should repeat the observation with different ruler widths and
eye-to-ruler distances. A valid result should give the same $R$ within the
measured uncertainty.

Agreement between repeated measurements is a consistency check; it does not
establish that atmospheric refraction is absent. A refracted horizon can shift
the inferred radius systematically even when different ruler settings agree.
For the physical distinction between geometric and refracted horizon dip, see
[Young (n.d.)][young].

## Relationship to Earlier Work

[Cyrulies (2025)][cyrulies] reports a horizon-curvature experiment from a known
altitude using a rotating sight, reticle, and camera. Its instrument and
angular measurements differ from the fixed rulers used here. Earlier,
[Lichtenstein and Suit (1967)][nasa] tested calibrated horizon templates to
estimate altitude above a body of known radius, a related inverse problem.

An informal proposal by [skrutnizer (2022)][ruler-comment] also suggests
estimating radius from altitude and the angular bow over a ruler. It is
evidence of an earlier discussion of the idea, not a source for our exact
equations.

These precedents establish the measurement principle and projected geometry.
This article presents an explicit two-ruler implementation and an exact
inversion in terms of $h$, $D$, $L$, and $s$. Our search did not locate that
complete combination, but this does not establish its historical originality.

## References

1. Cyrulies, E. E. (2025). [The relationship between earth size and horizon
   curvature: its determination with a device built for a distance learning
   class][cyrulies]. *Revista Brasileira de Ensino de Fisica*, **47**.
   Published 6 October 2025. doi:10.1590/1806-9126-RBEF-2025-0275.
   Spanish-language article; English title supplied by the journal.
2. Howe, A. R. (2019, December 22). [A Challenge to Flat Earthers][howe].
   *Science Meets Fiction*. Blog post.
3. Kinlen, P. (2017, November 27). [Photographing the horizon][kinlen].
   *A bit of maths*. Blog post.
4. Lichtenstein, J. H., and Suit, W. T. (1967). [An experimental investigation
   of two visual methods of altitude determination][nasa]. NASA TM X-1392,
   Langley Research Center.
5. Lynch, D. K. (2008). [Visually discerning the curvature of the Earth][lynch].
   *Applied Optics*, **47**(34), H39-H43. doi:10.1364/AO.47.000H39.
6. skrutnizer (2022, September). [Comment on estimating radius with a ruler
   and horizon curvature][ruler-comment]. Reddit, r/flatearth. Informal
   online discussion.
7. Young, A. T. (n.d.). [Dip of the Horizon][young]. San Diego State University
   astronomy website.

Web sources accessed 9 September 2026.

[cyrulies]: https://www.scielo.br/j/rbef/a/DyQQTFPCRzwwJnJNq4K3v4z/?format=html&lang=es
[howe]: https://sciencemeetsfiction.com/2019/12/22/a-challenge-to-flat-earthers/
[kinlen]: https://abitofmaths.blogspot.com/2017/11/photographing-horizon.html
[nasa]: https://ntrs.nasa.gov/citations/19670017937
[lynch]: https://opg.optica.org/ao/abstract.cfm?uri=ao-47-34-H39
[ruler-comment]: https://www.reddit.com/r/flatearth/comments/xbd2zh/comment/io1jiof/
[young]: https://aty.sdsu.edu/explain/atmos_refr/dip.html
