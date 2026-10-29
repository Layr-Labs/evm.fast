# Build acceleration ideas

These are proposals for reducing Lean build time while retaining compact,
kernel-checked certificates. They are not measured speedups. Preserve the
challenge's fixed values and submission format, and keep the axiom closure
within `propext`, `Classical.choice` and `Quot.sound`.

`kernel_rfl` already emits an `Eq.refl` certificate close to the minimum size.
Further gains should focus on repeated normalization, imported environments,
process startup and executable code generation. A small proof term can still
require substantial computation to check.

## 1. Avoid executable compilation of proof-only data

Benchmark explicit `noncomputable def` for generated AST and intermediate data
that are used only in proofs. This skips executable compilation while retaining
the logical definition for kernel reduction. The integration build's generated
IR directory reached roughly 18 GB, so this is a plausible source of savings.

Keep definitions needed by generators, testing executables or runtime evaluation
computable. Audit those consumers before propagating the change. Use explicit
`noncomputable def`; do not assume a `noncomputable section` suppresses code
generation for every computable definition.

See [Lean's definition modifiers](https://lean-lang.org/doc/reference/latest/Definitions/Modifiers/).

## 2. Separate shared data from proof dependencies

Some generated certificates import earlier proof modules to reuse AST nodes.
Move shared nodes into independent data modules, and have certificates import
only the required data and proof helpers.

This could reduce repeated environment loading and shorten serial import chains
without enlarging proof terms. Preserve sharing between repeated nodes; copying
large literals into every certificate would undermine the benefit. Measure the
import graph and environment size before choosing shard boundaries.

## 3. Add explicit intermediate definitions and equations

For expensive passes, introduce named intermediate states or subterms and prove
bounded chunks separately. Use reduction barriers where appropriate, together
with explicit checked equations, to keep each local computation small. Merely
naming a transparent definition does not ensure that normalization stops there.

Compose the chunk equations using a shared theorem. The final certificate can
then consist of a few theorem applications rather than a fresh normalization of
the entire pass. Include every chunk's proof in size measurements: the total
certificate may grow slightly while remaining much smaller than the old `cbv`
traces.

Start with passes whose compact reflexivity proofs still consume substantial
CPU. Choose boundaries that limit both program size and accumulated compiler
state, and avoid recomputing earlier checkpoints.

## 4. Batch small certificates and retain splits for expensive ones

Thousands of tiny modules repeatedly load imports and start Lean processes.
Benchmark small batches of independent certificates in a single module to
amortize that overhead.

Keep expensive checks separate enough for parallelism, bounded memory and useful
incremental rebuilds. More splitting is not automatically faster; excessively
large batches can also lengthen the critical path. Compare several batch sizes
under the same compiler-slot and memory limits.

## 5. Use a proved certificate checker for the hardest passes

Generate proposed intermediate results and validate them with a simple
structural checker whose soundness is proved once. An individual certificate
would use a short kernel-checked computation and an application of the shared
soundness theorem.

This offers control over checking complexity without additional axioms. The
checker must actually establish the pass equation, including relevant compiler
state. It should avoid repeating the expensive computation it is intended to
replace. Metaprogramming may construct proposed certificates; ordinary kernel
checking remains responsible for validating them.

This is a larger implementation effort than the first four proposals and is
best reserved for persistent bottlenecks.

## Experiment order and measurements

Try explicit noncomputable proof data, narrower imports and small-file batching
first. Then apply checkpoint equations to the remaining expensive checks. Use
small examples large enough to reproduce the slowdown before attempting full
guest propagation.

For each experiment, record:

- CPU and wall time, distinguishing compiler admission waits from proof work;
- peak memory and generated C/IR size;
- proof-expression size and `.olean` size, including shared helpers and data;
- complete dependency export size and independent comparator replay time;
- the exact axiom closure and successful ordinary kernel checking.

Compare cold and incremental builds separately, with identical resource limits.
Artifact size includes definitions and metadata as well as proofs. For example,
`Pass875_5` shrank from 810,526,280 to 28,441,056 `.olean` bytes but still consumed
67.31 CPU seconds in its representative direct check. This illustrates why proof
compression alone does not eliminate checking time.

See [the proof-performance notes](PROOF-PERFORMANCE.md) for existing measurements
and their scope. These experiments should use separate sources and artifacts
while an isolated verifier run is active, so its staged input and acceptance
measurement remain reproducible.
