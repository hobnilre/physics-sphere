---
title: "Measuring a Planet's Radius from Horizon Curvature"
author: "physics-sphere"
date: "2026-09-09"
geometry: margin=1in
---

# Measuring a Planet's Radius from Horizon Curvature

This note gives an exact geometric procedure for estimating the radius of a
spherical planet from a horizon observation. The observer knows the altitude of
the eye above the local ground, holds a straight horizontal ruler between the
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

The distance $D$ is essential. Without it, $L$ and $s$ describe only a shape on
the ruler, not the angular size of that shape as seen from the eye. Different
eye-to-ruler distances can produce the same $L$ and $s$ while corresponding to
different planet radii.

## Observation Setup

Hold the horizontal ruler in a vertical plane in front of the eye. The ruler
plane should be perpendicular to the central horizontal line of sight. Place the
horizontal ruler so that the visible horizon crosses it near the ruler's left
and right edges.

At the center of the horizontal ruler, use a vertical ruler to measure the
distance from the horizontal ruler to the visible horizon. In the coordinate
convention below, $s$ is positive when the horizon at the midpoint is above the
horizontal ruler. This is the expected arrangement when the horizontal ruler is
placed through two symmetric horizon points.

The measurement is best made with the head and ruler fixed, and with the
horizontal ruler leveled relative to the local horizontal direction. The
procedure assumes that the visible horizon is the true geometric horizon of a
spherical planet, not a horizon displaced by hills, waves, buildings, haze, or
atmospheric refraction.

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

Define the exact depression angle $\delta$ of the horizon below the local
horizontal plane by

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

This equation is exact for a spherical planet.

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

This is the exact projected horizon curve on the vertical ruler plane. It is
not replaced by a circular arc approximation.

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

Using the exact identity

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

Measure $h$, $D$, $L$, and $s$. Define

$$
T =
\frac{s}{\sqrt{D^2+(L/2)^2}-D}.
$$

Then the planet radius is

$$
\boxed{
R =
\frac{h(\sqrt{1+T^2}+1)}{T^2}
}
$$

with

$$
\boxed{
T =
\frac{s}{\sqrt{D^2+(L/2)^2}-D}
}.
$$

All quantities $h$, $D$, $L$, and $s$ must be expressed in the same unit.

## Practical Procedure

1. Measure the eye altitude $h$ above the local ground or water surface.
2. Hold a flat ruler plane at a measured perpendicular distance $D$ from the
   eye.
3. Level the horizontal ruler.
4. Align the horizontal ruler so the visible horizon crosses it at two
   symmetric points near the ruler's edges.
5. Measure the distance $L$ between those two crossings.
6. At the midpoint of those crossings, measure the vertical rise $s$ from the
   horizontal ruler to the horizon.
7. Compute
   $T=s/(\sqrt{D^2+(L/2)^2}-D)$.
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
