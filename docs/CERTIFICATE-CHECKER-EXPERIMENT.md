# Small certificate and checkpoint experiments

These experiments use the pinned Flapjack copy-propagation pass on synthetic
Word ASTs. They do not change the challenge, guest, initial submission or running
sandbox verifier. All successful certificates have axiom closure
`[propext, Quot.sound]`; independent kernel replay accepts their complete
exported dependency closures.

## Structural checker

[Checker.lean](../tools/certificate-bench/Checker.lean) defines a Boolean
whitelist for `skip`, `tick`, constant instructions, division instructions and
sequences. Its recursive soundness theorem proves the stronger equation
`copyPropProg p emptyEq = (p, emptyEq)`. The final wrapper establishes
`copyProp p = p`. Unsupported constructors, including moves, are rejected.

The benchmark constructs balanced trees of distinct division instructions.
The direct certificate uses the existing `kernel_rfl`; the checked certificate
applies the proved soundness wrapper to a reflexivity proof that the checker
returns `true`. Both prove the same pass equation on the same AST.

Median timings from three runs on 2026-10-06 with Lean 4.33.1, `-j1`,
`Elab.async false` and a 180-second timeout per invocation:

| Instructions | Direct compile | Checker compile | Direct kernel replay | Checker kernel replay |
| --- | ---: | ---: | ---: | ---: |
| 128 | 0.824 s | 0.788 s | not measured | not measured |
| 512 | 1.130 s | 0.905 s | 0.587 s | 0.451 s |
| 2,048 | 3.240 s | 1.410 s | 2.366 s | 0.933 s |

Compilation includes process startup, imported environments and proof checking,
but excludes the separately built data and soundness modules. Replay times are
the kernel replay interval reported by the independent parser/replay program;
they include all exported dependencies, including the checker soundness proof.
For 2,048 instructions the complete export grows from 8,267,705 to 9,303,657
bytes. Export parsing rises from a median 963 to 1,069 ms; total replay-process
wall time falls from 4.096 to 2.769 seconds.

The individual certificate expression shrinks from 26 distinct expression nodes
to 10, but the complete checker closure adds 219 declarations and approximately
1 MB. This is a speed improvement with a shared-proof size cost, rather than a
claim that the total certificate becomes smaller. `.olean` sizes include
metadata: the instance modules are 6,112 bytes direct and 6,568 bytes checked.
Peak RSS for their compilation is approximately 2.06 and 1.87 GiB respectively.
In the saved harness smoke run, compiling the shared checker and soundness
theorem took 1.697 seconds once; that setup cost must be counted for a cold
experiment and amortized only when the helper is reused.

A false claim that a move instruction passes the checker is rejected with a
kernel declaration-type mismatch. The same instruction is successfully proved
to return `false`. No native evaluation or additional axiom is involved.

## Checkpoint equations and avoiding repetition

[Compose.lean](../tools/certificate-bench/Compose.lean) composes two pass
agreements. On the division trees, each 64-instruction subtree is normalized
once and recorded in an opaque theorem; larger equations refer to those
theorems. They do not normalize previously checked chunks again. Data definitions
remain ordinary logical definitions; opaque proof equations provide the useful
barrier here.

Simple splitting provides little benefit on this already balanced input:
2,048-instruction compilation has a median of 3.201 seconds versus 3.240 seconds
direct. Its replay median is 2.189 seconds versus 2.366 seconds, with substantial
variation between runs. At 512 instructions checkpoint compilation and replay
are slower. The 2,048-instruction export grows by 47,078 bytes, and the proof
module grows to 72,016 bytes. These results do not justify broad splitting.

A second experiment contains repeated **state-changing** blocks: a move creates
an alias, a return uses the alias, and a constant assignment resets the copy
state. The output changes the return register. The base block is checked once;
[RepeatCompose.lean](../tools/certificate-bench/RepeatCompose.lean) composes the
result, reusing each previous theorem twice rather than repeating its proof.

| Repeated blocks | Direct compile | Reused equations compile |
| --- | ---: | ---: |
| 256 | 1.260 s | 1.051 s |
| 1,024 | 3.055 s | 1.970 s |

At 1,024 blocks there are 3,072 non-sequence instructions. The proof module grows
from 6,392 to 22,128 bytes, and compilation peak RSS falls from approximately
2.27 to 2.02 GiB. The final theorem is small, but all intermediate theorems must
be counted; its top-level expression size alone is not a total size measure.
This shows a benefit from reusing equations where the input actually repeats
work. Independent replay at 1,024 blocks falls from a median 2.213 to 1.236
seconds, including the shared composition lemma and all chunk proofs. The
complete export grows from 5,718,908 to 5,737,557 bytes (18,649 additional bytes).

## Ordinary decide versus decide +kernel

For a separate theorem `checked : check src = true` on the 2,048-instruction
input, then an application of the soundness theorem:

| Proof of checked | Median compile | Instance module bytes |
| --- | ---: | ---: |
| `decide` | 1.818 s | 8,344 |
| `decide +kernel` | 1.422 s | 8,608 |
| `kernel_rfl` | 1.432 s | 7,552 |

Lean's installed `Lean/Elab/Tactic/Decide.lean` confirms that ordinary `decide`
reduces the instance in the elaborator, while `+kernel` constructs and caches a
kernel-checked auxiliary lemma. The latter avoids the initial elaborator
reduction, but its one-node theorem reference excludes the auxiliary proof.
Both remain kernel checked. See the official
[tactic reference](https://lean-lang.org/doc/reference/latest/Tactic-Proofs/Tactic-Reference).

Our `kernel_rfl` already avoids the elaborator's reflexivity conversion, so
`decide +kernel` is not an additional speedup over it on this Boolean equality.
It may still be useful for other decidable propositions. Prefer a direct checked
Boolean equation when a structural checker is available.

## Reproduce and next steps

From the repository root, with the relevant imports already built:

```sh
python3 tools/certificate-bench/bench.py --replay
```

The harness generates data, compiles the checker and composition lemmas, runs
three repetitions, checks expected rejection, exports complete dependencies,
and independently replays them. It records raw logs, CPU time, peak RSS, wall
time and artifact sizes under `work/lean-perf/certificate-bench`. Use a fresh
`--work` directory for each run. It uses the configured Lean toolchain and the
existing verifier exporter; `--replay` requires that exporter to be built.

A smaller end-to-end smoke run:

```sh
python3 tools/certificate-bench/bench.py \
  --work work/lean-perf/certificate-bench-smoke \
  --sizes 128 --repeat-depth 8 --trials 1 --replay
```

The original exploratory raw measurements are preserved in
[measured-results.json](../tools/certificate-bench/measured-results.json).
The separate smoke run also passed all eight exported certificate replays,
including the repeated-block family, and the expected false claim was rejected.
These are warm, isolated-module experiments performed while the separate full
sandbox run was active. They are not a cold full-guest or full-verifier timing.

Before rollout, extend the checker to a representative small **stateful guest
fragment**, including exact input/output copy states and unsupported-constructor
rejection. Its validation must be cheaper than recomputing the pass; a checker
that simply computes `pass src` and compares it with `tgt` would not establish
this benefit. For checkpoints, identify real repeated prefixes, state lookups or
shared subtrees first. Preserve the fixed pass equations and count helper proofs,
intermediate state literals and full exports when comparing candidates.

## Comparator-first follow-up: reuse versus smaller exports

The current priority is comparator replay time, followed by preserving build
time, with export size after those. The
[intermediate-pruning experiment](INTERMEDIATE-PRUNING-EXPERIMENT.md) reduces
export size by 10.2% on an actual guest function but leaves replay near 3.6
seconds. That alone is not a rollout priority.

A controlled reuse experiment uses guest function 79's actual pre-CSE and
post-copy ASTs. It presents either one or four identical pass obligations. The
control rechecks each with `kernel_rfl`; the reuse variant checks the first and
references that opaque theorem for the others. A conjunction certificate keeps
all four obligations in the export so none are discarded as unused.

Single exploratory runs on the same toolchain and limits:

| Four obligations | Build | Kernel replay | Complete export | Replay process wall time |
| --- | ---: | ---: | ---: | ---: |
| Each evaluated separately | 16.077 s | 14.002 s | 6,569,936 bytes | 15.610 s |
| One proof reused | 4.564 s | 3.621 s | 6,569,936 bytes | 5.201 s |

The one-obligation controls have kernel replay times of 3.692 and 3.682 seconds.
All certificates pass independent replay and have only `[propext, Quot.sound]`.
This demonstrates repeated checking across declarations despite equally compact
proofs and identical export sizes. Reusing checked equations reduces both
replay and build time here. Ordinary kernel checking remains enabled throughout.

This deliberately repeats the same obligation. It does not establish that the
current guest repeats this whole-function equation. Before production changes,
identify actual repeated closed subcomputations or reusable parameterized
relations: shared compiler states, AST subtrees, label lookups, encoding results
or overlapping prefixes. Reuse their checked equations instead of merely giving
each occurrence another compact reflexivity proof. Retain sharing and benchmark
replay with the full used helper closure.

Reproduce the exploratory run with:

```sh
python3 tools/certificate-bench/reuse.py --trials 1
```

The harness defaults to three trials; use a fresh `--work` directory. Raw results
and source hashes are preserved in
[reuse-results.json](../tools/certificate-bench/reuse-results.json).

The subsequent production rollout and real multi-function measurements are
documented in [PROOF-REUSE-EXPERIMENT.md](PROOF-REUSE-EXPERIMENT.md).
