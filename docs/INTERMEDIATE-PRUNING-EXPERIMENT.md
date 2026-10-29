# Removing intermediate declarations: small guest experiment

The current priorities are comparator replay time first, build time no worse,
and export size after those. Memory is recorded as context. This experiment
establishes a size reduction; it does not establish a replay speedup and is not
a rollout recommendation.

The experiment uses guest function 79's actual materialized Word ASTs before
CSE, after CSE and after copy propagation. It copies the values into independent
benchmark modules and leaves the challenge, guest and submission unchanged.
Each case proves the identical equation
`copyProp (wordCommonSubexpElim source) = target`.

The staged control proves the two passes separately and composes their proofs.
The fused cases use a single `kernel_rfl`, removing the explicit CSE result from
the exported proof closure. Further variants group single-use AST definitions.
Multi-use definitions are always retained; substitution is limited to bodies
of at most 512, 2,048 or 8,192 characters. The surrounding declaration can be
larger than that budget. This avoids duplicating shared subterms and bounds
local expansion instead of inlining the entire graph indiscriminately.

Lean also proves that all three grouped AST roots equal their original roots.
Those agreement checks use no axioms. All pass certificates have only
`[propext, Quot.sound]`, and every complete export is independently kernel
replayed. The agreement tests are diagnostic and are not dependencies of the
exported pass certificates.

## Results

Three repetitions, Lean 4.33.1, `-j1`, `Elab.async false`, and a 180-second
timeout per command. Times below are medians. Export sizes include the complete
used dependency closure.

| Case | Proof compile | Export bytes | Parse | Kernel replay | Entire replay process |
| --- | ---: | ---: | ---: | ---: | ---: |
| Two staged passes | 4.437 s | 7,303,709 | 868 ms | 3.597 s | 5.233 s |
| Fused, named AST nodes | 4.499 s | 7,017,440 | 853 ms | 3.667 s | 5.288 s |
| Fused, 512-character groups | 4.494 s | 6,590,061 | 812 ms | 3.620 s | 5.197 s |
| Fused, 2,048-character groups | 4.495 s | 6,568,807 | 817 ms | 3.594 s | 5.172 s |
| Fused, 8,192-character groups | 4.454 s | 6,561,513 | 807 ms | 3.614 s | 5.192 s |

Fusion removes all 1,025 declarations for the intermediate CSE AST. The complete
export shrinks 3.9%, with essentially unchanged replay time. Grouping reduces
all three data ASTs from 3,072 definitions to 238, 96 or 46. Exported declarations
fall from 5,170 to 2,128 in the most grouped variant; its full export is 10.2%
smaller than the staged control. Replay remains near 3.6 seconds. Parsing gains
about 61 ms, while normalization still dominates the total.

Building the data module takes 3.189 seconds for the named control and 1.590
seconds for the largest grouping. These are single setup measurements, separate
from proof timing; they should be counted in a cold build. Its data `.olean`
shrinks from 1,860,696 to 269,528 bytes. Diagnostic agreement checks each take
about 0.8 seconds. Proof compilation peak RSS increases from approximately 2.23
to 2.65 GiB with fusion; this is not a limiting factor for the current objective.

There is no observed exponential slowdown on this function, but this does not
establish that larger pass fusion is cheap. Test several input sizes and keep
checks bounded before increasing the number of fused passes.

## Reproduce

```sh
python3 tools/certificate-bench/intermediates.py
```

Use a new `--work` directory to preserve previous runs. The relevant Flapjack
imports and the verifier exporter must already be built. The script generates
all variants, verifies AST agreement, measures three proof builds and three
independent replay runs, and records source SHA-256 hashes and raw results.

Raw results and metadata are preserved in
[intermediate-results.json](../tools/certificate-bench/intermediate-results.json).

For the current priority, first pursue reused checked equations or a cheap
proved checker that removes repeated normalization. Grouping can follow when
it preserves that reuse and reduces parsing cost. Fewer declarations alone do
not establish a comparator speedup.
