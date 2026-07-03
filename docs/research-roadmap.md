# Raptor Research Roadmap

Raptor is a research project for learning what a proper Ractor-first Rack web server would require. The goal is not to replace Puma today, but to use Puma as a stable comparison point while testing the runtime, Rack, framework, and server-design gaps around Ruby Ractors.

## Core Questions

- What parts of Puma's architecture map cleanly to Ractor workers?
- Which Puma APIs are useful compatibility anchors, and which ones become misleading when workers are Ractors instead of processes or threads?
- Which Rack applications can boot and serve inside isolated Ractors today?
- Which failures come from Raptor's implementation, which come from Rack/framework assumptions, and which come from Ruby's current Ractor model?
- What measurable advantages does this model offer, and what costs does it introduce?

## Research Tracks

### Puma Comparison

Use Puma as the architectural control group. Track config DSL compatibility, listener behavior, worker lifecycle, restart semantics, observability, control APIs, and request handling features.

### OSS Rack Compatibility

Build a staged test matrix that starts with minimal Rack apps and moves through real frameworks. Each app should record whether it boots inside a Ractor, serves requests, handles state safely, and exposes non-shareable global assumptions.

### Ractor Tradeoffs

Measure isolation, memory behavior, request concurrency, boot cost, worker scaling behavior, failure isolation, and integration friction with common Ruby libraries.

## Immediate Next Experiments

- Create an OSS Rack compatibility harness with a repeatable app fixture format.
- Add a comparison document for Puma APIs that are supported, partially mapped, no-oped, or intentionally unsupported.
- Add instrumentation for worker boot time, request counts, errors, and scale-up/scale-down events.
- Run the server against progressively more realistic Rack apps and record failures without hiding them behind compatibility shims.

## Research Artifacts

- [puma-comparison.md](puma-comparison.md) tracks where Raptor mirrors Puma and where Ractor workers force different semantics.
- [oss-app-test-matrix.md](oss-app-test-matrix.md) defines the staged real-world Rack app compatibility plan.
- [ractor-tradeoffs.md](ractor-tradeoffs.md) records the expected benefits, costs, research risks, and next experiments.
