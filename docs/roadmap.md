# Raptor Roadmap

This roadmap turns the research direction into a working issue queue. It is intentionally practical: each item should either make Raptor a better research instrument, expose a real Ractor/Rack compatibility finding, or sharpen the comparison with Puma.

Milestone: [Research Roadmap v0](https://github.com/reeganviljoen/raptor/milestone/1)

## Phase 1: Make The Baseline Measurable

The first phase is about making current behavior explicit enough that future experiments do not produce vague results.

- [#1 Build the Puma parity matrix into executable compatibility tests](https://github.com/reeganviljoen/raptor/issues/1)
- [#2 Harden the offline Rack compatibility harness and result schema](https://github.com/reeganviljoen/raptor/issues/2)
- [#3 Expand HTTP and Rack behavior probes](https://github.com/reeganviljoen/raptor/issues/3)
- [#5 Add per-worker metrics and experiment output](https://github.com/reeganviljoen/raptor/issues/5)

## Phase 2: Start Testing Real Rack Shapes

Once the baseline tells us what failed and why, move from tiny Rack fixtures toward real framework behavior.

- [#4 Add first real framework compatibility fixtures: Roda, then Sinatra](https://github.com/reeganviljoen/raptor/issues/4)
- [#8 Document Ractor compatibility findings and failure taxonomy](https://github.com/reeganviljoen/raptor/issues/8)

## Phase 3: Compare Against Puma More Directly

Raptor mirrors Puma so that the research has a stable control group. This phase creates a direct comparison path instead of relying only on conceptual parity.

- [#7 Build a Puma-vs-Raptor comparison harness](https://github.com/reeganviljoen/raptor/issues/7)

## Phase 4: Improve Long-Running Experiment Behavior

After the basic fixture and comparison loop exists, make longer experiments trustworthy.

- [#6 Monitor and restart crashed Ractor workers](https://github.com/reeganviljoen/raptor/issues/6)

## Working Principles

- Do not hide Ractor failures behind compatibility shims too early.
- Prefer small fixtures that categorize failures cleanly before large app tests.
- Keep Puma compatibility language precise: active, remapped, config-only, warning no-op, explicit raise, missing, or Raptor-only.
- Every new experiment should update the docs with what it proved, disproved, or failed to isolate.
