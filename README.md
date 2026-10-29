# init-e

A proof challenge: submit RISC-V bytecode and prove that it agrees with the
fixed Pancake guest on the cases specified in [docs/CHALLENGE.md](docs/CHALLENGE.md).
The score is a certified execution step bound, either a natural number or infinity.
Code must fit in the 128 MiB program window.

## How to participate

1. Read [the challenge](docs/CHALLENGE.md) for the fixed source program,
   execution environment, covered outcomes, and scoring rules.
2. Create a submission directory containing `Solution.lean`, `claim.json`, and
   optional helper modules under `InitECandidate/`. Supply the complete ROM,
   including any bootstrap, data, and padding, as `List (BitVec 8)` literals;
   large images may concatenate literal chunks.
3. Define `InitE.Challenge.submission` and a literal `claimedScore`, then prove
   `InitE.Challenge.certificate` with the statement below. Set `claim.json` to
   `{"K":12345}` for a finite score, or `{"K":"infinity"}` for infinity,
   matching the Lean score.
4. Run the submission checks and isolated verifier. Follow
   [docs/SUBMISSIONS.md](docs/SUBMISSIONS.md) for the complete format, permitted
   imports, tool installation, and isolation requirements. The initial solution
   in [submission/Solution.lean](submission/Solution.lean) is a worked example.

The required declarations in `Solution.lean` have this form:

```lean
import InitE

namespace InitE.Challenge

noncomputable def submission : InitE.Submission := ...
def claimedScore : InitE.NatE := .finite 12345  -- or .infinity

theorem certificate : InitE.Certificate submission claimedScore := by
  ...

end InitE.Challenge
```

The fixed proposition is [InitE.Certificate](InitE/Challenge.lean). It requires
admission conditions, including the code-size and FFI-layout checks, and a proof
that each covered source termination on an input with declared gas limit at most
200,000,000 has a matching target execution and observable result. A finite score
bounds the target's steps; infinity still requires a finite terminating execution
for each such input. Only `propext`, `Classical.choice`, and `Quot.sound` are
permitted axioms. Passing execution tests does not replace this proof.

From the repository root, check your candidate directory with:

```sh
python3 verifier/check_submission.py path/to/candidate
python3 verifier/verify.py --local path/to/candidate --work verifier/runs/my-candidate
```

Install the pinned verifier tools as documented in
[docs/SUBMISSIONS.md](docs/SUBMISSIONS.md) before the second command, and choose a
work directory that does not already exist. File/import checks and Lean builds
are preliminary checks; isolated verification succeeds only with a `verified`
result after comparator kernel replay.

## Source program and initial submission

The assignment includes `guest/src/`, the authoritative software guest AST in
[Guest/SoftwareAst.lean](Guest/SoftwareAst.lean), and its initial memory and FFI
semantics. The authoritative source evaluator is the compiler theorem's
`PanSemStateFiniteExact.semanticsDecls`, fixed by
[InitE/SourceSemantics.lean](InitE/SourceSemantics.lean). Flapjack is a pinned Lake
dependency from the `riscv-im` branch. The checked-in submission contains the
software guest ROM and its compiler, bytecode, and installation certificates.

The fixed challenge and source semantics live in `InitE/` and `Guest/`.
The submission's compiler, bootstrap and installation certificates live
in [`submission/InitECandidate/Proofs`](submission/InitECandidate/Proofs) and are
checked by the submission verifier after regeneration. See [the proof boundary](docs/CHALLENGE.md#challenge-and-initial-submission-proof-boundary).

The challenge takes `Guest.Software.guestAst` directly. The Pancake text remains readable
provenance; parser agreement is not required.

## Hints for a finite score

One possible strategy is to define a step-count cost model for the fixed Pancake
source evaluator, then prove a step-count preservation or upper-bound theorem
for the Flapjack compiler that relates source execution cost to RISC-V steps.
Bound the source cost for inputs satisfying the declared gas limit, including
input decoding and other work outside gas-charged EVM execution. Combine these
results with bounds for the bootstrap and foreign-call execution to
obtain a literal finite `K` in the challenge's target evaluator.

This is an optional proof strategy. Submissions may use any approach that proves
the required certificate.

## Building and testing

Build the challenge and initial submission with `tools/build-lean.sh`; run the
proof audit with `tools/build-lean.sh InitECandidate.Proofs.Audit`. Build the optional testing
model with `tools/build-lean.sh Guest`. Outside builds use up to 32 Lean processes
at nice level 10 and stop after eight hours;
use `tools/build-lean.sh --quick MODULE` for a 10-minute exploratory check.
A timeout means the check is unfinished, not that the proof passed.

Candidate testing, toolchain setup, Docker instructions, and historical results
are in [docs/TESTING.md](docs/TESTING.md). The full EEST procedure is in
[docs/EEST-SPIKE.md](docs/EEST-SPIKE.md). Tests help develop candidates; submitting
a solution requires proofs.

## Verification status

The challenge definition builds with the current software guest. The initial
submission's guest image and frontend certificates have been regenerated for
this source update. Backend certificate regeneration and the full submission
audit are in progress; the initial submission is not yet verified end to end.

## Soundness and execution platform

This is experimental research code. Equivalence with this guest is not a proof
that the guest implements Ethereum correctly. Evaluate
[docs/SOUNDNESS.md](docs/SOUNDNESS.md) and the
[riscv-im-compare README](https://github.com/flamingoponderado/riscv-im-compare#readme)
as well: its comparison of Flapjack's RISC-V model with riscv-zkvm documents
explicit assumptions and remaining gaps that matter for the intended execution
platform.

## Proof performance

See [proof-performance notes](docs/PROOF-PERFORMANCE.md) for scaled measurements
and the remaining standard-axiom verification work.
[Proof reuse measurements](docs/PROOF-REUSE-EXPERIMENT.md) describe the shared
backend label and duplicate-function certificates, including complete export
replay timings.
