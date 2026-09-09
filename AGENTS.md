# AGENTS.md

This file records project-specific instructions for future agents working in
`physics-sphere`.

## Scope

This is a new physics project. Until the implementation stack is established,
keep changes small, explicit, and easy to audit.

When adding the first build system, test framework, or runtime dependency,
update this file with the exact commands future agents should use.

## Editing Guidelines

Prioritize clarity and coherence.

Never delete a passage, equation, result, or note merely because it is
surprising or appears to conflict with established knowledge. Preserve the
result and clearly identify the uncertainty, disagreement, or unresolved check.

In Markdown tables, write absolute values as `abs(expr)`, not `|expr|`,
because unescaped vertical bars are interpreted as column delimiters. Use
`norm(expr)` for norms and escape a literal vertical bar as `\|` when it is
semantically required.

## Modeling Policy

Use the smallest model that captures the physical question being asked.

For every model:

- State the coordinate system.
- Define the system boundary.
- List the state variables and parameters.
- Record units for dimensional quantities.
- Identify idealizations and omitted effects.
- Keep analytical assumptions separate from numerical artifacts.
- Preserve reproducibility: inputs, timestep, solver, tolerances, and seeds.

For sphere geometry or motion, state whether quantities are defined in world,
body, surface, tangent-plane, or local radial coordinates. Be explicit about
orientation conventions, angular velocity signs, and normalization of vectors.

## Work and Energy Analysis

Calculate transferred work or energy by integrating signed instantaneous power
over an explicit time interval:

`W(t0, t1) = integral[t0,t1] P(t) dt`

For every calculation:

- Define the system boundary.
- Identify every energy-transfer port.
- State the sign convention for each port.
- Integrate each signed port power before combining the results.
- Account for switching events, discontinuities, and impulsive transfers.
- Compare the initial and final stored-energy states.
- Quantify numerical integration error and model residuals.

Never assume that stored energy is constant, and never use energy constancy as
the premise of an analysis or strategy.

When power is defined as positive into the system, evaluate the energy-balance
residual as:

`r_E = E(t1) - E(t0) - integral[t0,t1] sum_k P_k(t) dt`

Do not reject, conceal, or explain away a suspected work or energy anomaly.
Investigate the power integrals, signs, system boundary, ports, switching
events, initial and final states, numerical residuals, and model assumptions.

If a discrepancy remains unresolved, preserve it explicitly as an open problem.
Report its magnitude, sign, conditions of occurrence, and checks already
performed.

## Parameter Sweeps

The purpose of a parameter sweep is to find and isolate:

- Conditions under which stored energy changes.
- Unexplained energy-balance residuals.
- Sign reversals and zero crossings.
- Switching thresholds and discontinuities.
- Sensitivity to initial conditions.
- Limiting and boundary parameter values.
- Sensitivity to timestep, solver tolerance, and integration method.

Construct sweeps to cover relevant edge cases systematically. Document tested
ranges, resolution, boundary cases, and any regions that remain untested.

For each observed discrepancy, determine whether it is explained by energy
transfer across the system boundary, stored-energy changes, switching,
numerical error, or a model assumption. If it cannot be explained, retain it as
an unresolved result requiring further investigation.

## Repository Hygiene

Do not commit generated build outputs, caches, virtual environments, or local
scratch artifacts unless they are intentionally part of the project record.

If exploratory notes or one-off scripts are added, put them in an explicit
scratch or notes location and keep promoted, reproducible work separate.

## Build Policy

The article source is `article.md`.

Build the PDF with:

```bash
make pdf
```

The generated PDF is written to `build/physics-sphere.pdf` and is not tracked.
