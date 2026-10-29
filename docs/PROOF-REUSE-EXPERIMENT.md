# Reusing checked computations in the guest certificates

Comparator kernel replay is the primary measure. Proof build time must not get
worse; export size is secondary. A smaller outer proof is not sufficient: each
experiment exports and replays the complete dependency closure.

## Backend labels: production rollout

The first target encoding pass already has a checked successful-result equation.
Flapjack's `encLinesAgain_sectionLabels` proves that such a pass preserves section
labels at the same starting position. `TargetChecks/LabelReuse.lean` converts the
accumulator encoder equation to that theorem's simple-encoder premise once, by a
general proof. Each eligible second label certificate then reuses its first-pass
encoding and label certificates, and checks only the short label-list agreement.

There are **537 eligible functions**: identical starting positions and a successful
first encoding pass. The other 295 certificates retain their existing proofs.
Every original theorem statement and all guest/bytecode literals are unchanged.
A position change is not assumed harmless: global `labels0` and `labels1` differ.

Three-trial medians from real functions, with both first-pass prerequisites
included in **both** exported certificates:

| Function | Direct proof build | Reused proof build | Direct kernel replay | Reused kernel replay |
| --- | ---: | ---: | ---: | ---: |
| 79 | 0.839 s | 0.806 s | 301 ms | 294 ms |
| 461 | 1.386 s | 0.801 s | 1,536 ms | 1,462 ms |

Function 79's small replay difference should not be treated as a reliable speedup.
Function 461 gives a modest replay improvement and a substantial build improvement.
The shared helper adds 43 declarations and approximately 378 KB to these isolated
exports; that cost is paid once when multiple functions share an export. A combined export of functions 79, 461, 233, 231 and 240 gives three-trial
median kernel replay **3.632 s → 3.541 s** (about 2.5%). Median total process
time is essentially unchanged: **6.090 s → 6.072 s**. Parsing grows slightly
with the shared theorem closure; export size is 13,621,847 → 14,004,796 bytes.
This is a modest gain, not evidence of a large full-solution speedup. Full
solution replay performance still requires measurement.

Reproduce after building the selected `CorrectData1`, `CorrectLabels0`, and
`CorrectEncode0` modules:

```sh
python3 tools/certificate-bench/labels.py \
  --work work/lean-perf/label-reuse-new --labels 79 461 --trials 3
```

Use `--group` to export/replay the selected functions together and amortize the
shared theorem. The harness reconstructs the direct proof even after rollout,
alternates trial order, rejects nonstandard axiom closures, and kernel-replays
every export. Recorded initial measurements are in
`tools/certificate-bench/label-results.json` and
`tools/certificate-bench/label-group-results.json`.

Regenerate the production proofs with:

```sh
python3 tools/reuse_backend_labels.py
python3 tools/reuse_backend_labels.py --check
```

The corrected target generation queue invokes this automatically after generation.
Eligibility chooses a proof, never grants an assumption: Lean checks the original
statement, the successful encoding premise, and the literal label agreement.
The script is idempotent. All 537 theorem headers were checked against the original
headers before building the rollout. All 537 replaced certificates passed a
16-worker, one-hour-bounded Lake build (3,335 dependency jobs), and every printed
axiom closure was a subset of the standard three.

## Global context: not retained

A proposed cache materialized the common context of 93 global declarations used by
825 frontend certificates. The checked cache did not materially improve builds or
joint replay of functions 0, 15, and 649. Joint replay was approximately 7.75 s
before and 7.79 s after; total process time was approximately 11.7 s in both cases.
The proposal was not propagated to production.

## Further actual reuse candidates

Initial `encSec` encoding processes 168,210 ordinary assembly lines, but there are
only 15,023 distinct instruction terms. The ten most common terms occur 56,307
times; the top fifty occur 90,680 times. Checked instruction-encoding equations
could therefore be shared across functions. A structural certificate must avoid
quadratic conversions of list suffixes; benchmark real chunks before rollout.
The later `encLinesAgain` passes already preserve ordinary assembly bytes, so
those passes do not repeat this initial instruction encoding.

Two pairs of whole guest functions (225/649 and 226/650) also have identical
argument counts and source bodies. Reusing their optimizer certificates requires
handling the outer function number: it affects allocator fallback, but not a
successful oracle result. Such reuse is useful only if complete export replay
improves, not merely if elaboration becomes faster.

## Initial instruction-encoding prototype: not retained

A small test used the first 256 ordinary assembly lines of actual guest function
461, preserving their order and the bytes from `Filtered461`/`Encoded461`. This
is a real subsequence, not a complete function certificate: labels and jumps are
excluded. There are 128 distinct instruction/encoding pairs in this sample.

The prototype checks each distinct encoding once, reuses those equations in a
balanced list-map proof, and checks the agreements with the original flat input
and output. The complete shared proof and data closure is included in export and
independent kernel replay, rather than treating the cache as free.

| Metric (three-trial median) | Direct computation | Shared equations |
| --- | ---: | ---: |
| Proof module build CPU, user + system | 0.880 s | 1.980 s |
| Kernel replay | 164 ms | 301 ms |
| Total replay process wall time | 1.272 s | 1.481 s |
| Export bytes | 3,030,497 | 3,470,501 |

Both variants passed independent kernel replay and used only `propext` and
`Quot.sound`. This design is rejected for production: checking the structural
proofs and their additional definitions costs more than the avoided instruction
encoding at this scale. Reuse across more functions might amortize the cache,
but these measurements do not justify rollout or a claim of faster comparison.

Reproduce with:

```sh
python3 tools/certificate-bench/encoding.py \
  --work work/lean-perf/encoding-reuse-new --function 461 --count 256 --trials 3
```

The harness alternates comparison order, includes cache setup and flattening
bridges, and rejects nonstandard axioms. Inputs are recorded by source hash;
measurements are saved in `tools/certificate-bench/encoding-results.json`.


## Reusing duplicate guest optimizer pipelines

Functions 225/649 have identical source bodies and argument counts; functions
226/650 form a second identical pair. Their colouring oracles and optimized
bodies also agree. The outer function number differs. A successful checked
colouring oracle makes the allocation independent of that function number;
only the allocator fallback uses it.

Each pair now shares one fused certificate for the compiler prefix through the
second dead-code pass, one checked oracle result, and a complete compiler
certificate parameterized by the function number. The public optimizer
certificates reuse that theorem. This replaces repeated computation and avoids
repeating the staged rewrite composition in each consumer. The fused prefixes
are small enough to build quickly; this does not justify fusing the largest
guest functions.

Two alternating replay trials of the actual paired exported closures gave:

| Pair | Original kernel replay | Shared kernel replay | Original / shared export bytes |
| --- | --- | --- | --- |
| 225/649 | 7.980 / 7.964 s | 6.824 / 6.644 s | 52,110,828 / 51,955,615 |
| 226/650 | 8.529 / 8.179 s | 7.009 / 7.081 s | 52,128,706 / 51,958,281 |

These times cover the full exported dependency closure, including shared Lean
and compiler definitions. Parsing took about 6.3 seconds in either version.
The number of exported constants fell from 9,247 to 8,680 and from 9,267 to 8,654.
Both exports replayed successfully with the independent Lean kernel. All public
certificates depend only on `propext`, `Classical.choice`, and `Quot.sound`.
Existing data declarations and theorem statements were checked unchanged.

Direct compilation of the 225 and 226 public proof modules used 2.86 and 3.78
CPU seconds before reuse, versus 1.30 and 1.30 seconds afterwards. CPU here includes
user and system time. Summing the ten affected original module compilations
used 18.15 CPU seconds; the eleven new module compilations, including the new
oracle helper and both shared complete-certificate modules, used
15.60 CPU seconds. Common dependencies were already built. The original source
variants were compiled from the baseline revision; these sums are scoped
direct-compilation measurements, not a timing claim for a cold full build.
The harness below rebuilds the complete affected module sets in separate
environments to provide an independent comparison.

The first implementation reused staged equations separately in each consumer.
Its first timing appeared slower; alternating trials showed that result was
sensitive to concurrent load. The final implementation instead shares the
complete name-parameterized certificate and a fused common prefix. It passed
the alternating measurements above. Production rollout uses that final version.

`tools/reuse-word-functions.py` preserves this organization after generation,
checks that paired source literals still agree, and is idempotent. Both relevant
generators invoke it. It generates proof proposals; subsequent Lean builds and
comparator replay still check them.

To reproduce with already built common dependencies and exporter, supply a git
revision from before this change and an empty output directory:

```sh
python3 tools/certificate-bench/word-reuse.py --base-revision <baseline-revision> \
  --work work/lean-perf/word-function-reuse-reproduction --trials 2
```

The harness builds only the affected modules in separate before/after directories,
exports both paired obligations, and alternates kernel replays. Each command has
a three-minute timeout. Original measurements and frozen exports are in
`work/lean-perf/word-function-reuse/`. Portable CPU, replay, and export measurements
are saved in `tools/certificate-bench/word-reuse-results.json`. The original
word bodies and proofs agree at baseline revisions `b2d063a22` and `7704dcf16`.

## Complete outside integration check

`lake build InitE Submission InitECandidate.Proofs.Audit` passed all **53,269 jobs** with the
retained production changes. The cache-disabled retry took **581.617 seconds
(9 min 42 s)** with 16 Lean admission slots and a one-hour timeout. This reused
existing common artifacts; it is not a cold-build performance comparison. Both
`InitE.Challenge.certificate` and its infinity-termination lemma have exactly
`propext`, `Classical.choice`, and `Quot.sound` in their axiom closures. All
printed dependency closures were within that set. Portable results are in
`tools/certificate-bench/integration-results.json`.

The initial direct invocation failed at the final imports because the host
artifact cache referenced missing `.olean` files. The successful retry disabled
that cache, as the project's `tools/build-lean.sh` already does. No proof-source
repair was needed. The separately running frozen isolated comparator is still
pending; these checks do not claim isolated acceptance of the new code.
