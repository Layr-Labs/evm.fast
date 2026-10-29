# Challenge specification

Submit RISC-V code and a proof that it matches the fixed Pancake guest on every
covered input, with a claimed execution bound. The score is
`K : InitE.NatE`: either `.finite n` for a natural number `n`, or `.infinity`.
Smaller finite bounds are better; infinity permits an input-dependent finite
execution without a uniform bound.

The authoritative contract is [`InitE.Certificate`](../InitE/Challenge.lean).
The definitions linked below specify the program, environment, observations,
admission conditions and execution bound.

## Required property

A certificate for submission `s` and claimed score `K` proves:

1. `s.K = K`.
2. `s.Admitted`, including a nonempty code image of at most **128 MiB** and valid
   foreign-call dispatch metadata.
3. For every `input : Guest.InputBlob` with
   `Guest.GasLimit.declaredGasLimit input ≤ 200000000`, whenever
   `InitE.sourceBehaviour input = .terminate outcome events` and
   `InitE.coveredOutcome outcome`, there is a natural number `steps` such that:
   - `steps ≤ n` if `K = .finite n`; there is no uniform ceiling if
     `K = .infinity`;
   - `evaluateTargetHOL` starts from `s.initialState input` with the fixed
     oracle and `s.machineConfig`, and returns `.halt targetOutcome` at that
     clock;
   - the source and target results satisfy `InitE.matchingResult`.

A timeout or target evaluator error is not a matching termination. Infinity
still requires a finite halt witness for every covered source termination;
divergence does not satisfy it. The equivalence between target termination and
termination within infinity is proved in
[`InitE/TargetBudget.lean`](../InitE/TargetBudget.lean).

## Fixed source program and semantics

The reference program is the literal **`Guest.Software.guestAst`** in
[`Guest/SoftwareAst.lean`](../Guest/SoftwareAst.lean), generated from
`flamingoponderado/stateless-pancaketh` main at commit
`35569814e3fd569fd98cccdf2a9704683d42d2d9`. Its entry point is `main`. The Pancake
files under `guest/src/` and preprocessed text `Guest/guest-software.pp.pnk` provide
readable provenance. The AST header records its generation command and
permanent provenance links; parser agreement is not a certificate premise.

[`InitE.sourceBehaviour`](../InitE/SourceSemantics.lean) runs the declarations
using `PanSemStateFiniteExact.semanticsDecls`, the source evaluator used by
Flapjack's compiler correctness theorem. Words are 64 bits and byte order is
little-endian. Declaration maps and locals begin empty. Ordinary memory uses
aligned eight-byte cells above `@base`. The shared-memory domain contains
aligned cells in the input and output arenas. The base is `0xa1000000`; the
guest's allocation ceiling is `0xb0000000`. The compiler-managed source-memory
domain extends from `sourceBase` to the stack split minus the 67 global words.
Its first five words contain the startup pointers; the remaining words begin at
zero. The guest's scratch arena starts at its allocation ceiling, so it lies in
this domain (`InitE.scratch_in_ordinaryDomain`).

The fixed oracle is `InitE.sourceOracle`. It uses the shared-memory
specification in [`Guest/Model.lean`](../Guest/Model.lean), with terminal
`halt` and `trap` calls. Other foreign calls fail. Byte-access payloads
retain the exact byte address.
`Guest.runGuestStepped` is an optional executable testing model; it is not the
source evaluator in this contract.

## Inputs and declared gas

`Guest.InputBlob` is a finite list of bytes. The host exposes a **128 MiB**
input arena at `[0x40000000, 0x80000000)`, containing eight zero metadata bytes,
the blob length as an eight-byte little-endian word, then the blob. Remaining
arena bytes are zero. Host accesses outside the input and output arenas fail.
The certificate has no separate input-validity or input-length premise.

The gas condition uses the total reader in
[`Guest/GasLimit.lean`](../Guest/GasLimit.lean). For blob `b`, it reads the
little-endian 64-bit word at:

```text
requestStart = 2 + le32(b, 2)
payloadStart = requestStart + le32(b, requestStart)
gasLimit     = le64(b, payloadStart + 412)
```

Missing bytes are read as zero. This reader does not validate the schema,
offsets or other fields, and does not have a parse-failure result. The
certificate applies to malformed inputs too whenever this value is at most
**200,000,000**. Inputs whose value exceeds that limit impose no behavioral
obligation.

## Covered outcomes and output matching

[`InitE/Observations.lean`](../InitE/Observations.lean) defines the following
classification. A normal halt is `.success`, or a terminal `halt` foreign-call
outcome tagged `.failed`. That tag denotes the host stop signal.

An execution accepts when it halts normally and the byte at **output offset
32** equals **1**. Public output is the full **64 KiB** interval
`[0xa0410000, 0xa0420000)`, initially zero. Observations replay the fixed host
oracle over recorded calls; [`InitE/OracleReplay.lean`](../InitE/OracleReplay.lean)
proves that replay equals the final host state for target executions.

| Source behavior | Required target behavior |
| --- | --- |
| Covered termination that accepts | Finite normal halt that accepts, with all 65,536 output bytes equal to the source output. |
| Covered termination that does not accept | Finite covered termination that does not accept. Rejections and covered traps form one class; their output bytes need not match. |
| Uncovered behavior | No obligation. |

Covered outcomes are `.success` and foreign-call outcomes tagged `.failed`,
except `trap` events whose configuration length is **1, 6 or 7**, the source's
memory-exhaustion diagnostics. `.resourceLimitHit` is excluded. Source
divergence, evaluation failure (`HolBehaviour.fail`) and other uncovered
outcomes impose no obligation. A target resource-limit halt or excluded OOM
trap cannot satisfy the required rejecting result.

## Target machine and execution budget

The target is Flapjack's 64-bit integer RISC-V model, pinned from `riscv-im` to
revision `034bb5a1ed0b757082768d5406206bd2f8e31b7c` in
[`lake-manifest.json`](../lake-manifest.json). Its evaluator is
**`evaluateTargetHOL`**, the target evaluator used by compiler correctness.
The challenge fixes the machine and oracle hooks; participants supply only the
code, score and dispatch metadata described below.

Execution begins at **PC `0x80000000`** with every integer register zero,
no pending fetch or exception, and the remaining state initialized as in
[`Submission.initialState`](../InitE/SubmissionModel.lean). Machine-mode
configuration is explicit: `mstatus.MPRV = 3`, `mstatus.VM = 0`, and
`mcpuid.ArchBase = 2`. Address translation is identity in this model.
Ordinary interference is the identity function; the fixed foreign-call and
cache hooks provide the specified call effects and returns.

The submitted bytes are loaded contiguously at the initial PC. Outside the
loaded bytes, ordinary machine memory starts at zero. Shared input/output
memory is supplied by the host oracle. The program-memory domain is the code
window and RAM, excluding shared memory and the submission's ordinary
dispatch slots; its exact definition is `Submission.programDomain`.

The score bounds the evaluator's clock, not Spike's hardware instruction
count. Each ordinary transition, foreign-call transition and cache transition
consumes a clock step; the final halt also requires a step. Startup and
bootstrap execution are included. The internal work of an accelerator is
specified by the oracle rather than charged as additional target instructions.

## Memory layout

All upper endpoints are exclusive. Available RAM is **29 GiB**. The source
and initial submission use the following layout; a participant's machine code
may use the available ordinary RAM according to the fixed machine domain.

| Region | Start | End |
| --- | --- | --- |
| Shared input, including 16-byte framing | `0x40000000` | `0x80000000` |
| Submitted code window | `0x80000000` | `0x88000000` |
| Available RAM | `0xa0000000` | `0x7e0000000` |
| Shared public output within RAM | `0xa0410000` | `0xa0411000` |
| Source-memory domain (`@base` to globals) | `0xa1000000` | `0x7defffde8` |
| Persistent bump allocation, from `@base` | `0xa1000000` | `0xb0000000` |
| EVM frame memory (up) and scratch (down) | `0xb0000000` | `0xb0bee000` |
| 67 scalar globals (536 bytes) | `0x7defffde8` | `0x7df000000` |
| Machine stack (16 MiB) | `0x7df000000` | `0x7e0000000` |

Scratch is above the bump allocator's ceiling, so persistent allocations cannot
overwrite temporary frame storage, and every scratch cell is in the source
memory domain. The RAM endpoint and heap/stack split are 4 KiB aligned; the
source-memory top is eight-byte aligned and excludes globals.
[`InitE/Parameters.lean`](../InitE/Parameters.lean) fixes these constants and
proves region ordering and alignment.

## Submission and admission

A participant supplies:

- Code as Lean `List (BitVec 8)` literals, including startup code and any
  embedded compiler data.
- A literal score `.finite n` or `.infinity`, matching `claim.json`.
- The `Submission` dispatch fields: `anchorPc`, foreign-call `names`, the
  ordinary-call boundary `first`, and shared-memory metadata `extra`.
- A proof of `InitE.Certificate submission claimedScore`.

[`Submission.Admitted`](../InitE/SubmissionModel.lean) requires nonempty code
of at most **`0x08000000` bytes (128 MiB)**. Every loaded image byte counts
against this limit. It also proves anchor bounds and alignment, the
ordinary/shared-call name boundary, metadata length, loaded ordinary dispatch
slots, valid shared-memory records, distinct and aligned loaded FFI entries,
separation from halt/cache dispatch, valid program-domain shared-call entries,
loaded exits, and a layout bound preventing 64-bit overflow. Participants
cannot replace the evaluator, oracle, machine callbacks or environment.

Only **`propext`, `Classical.choice`, and `Quot.sound`** are permitted axioms.
Proof-producing tactics and metaprograms are allowed when the kernel checks
their results without additional axioms. Native-computation axioms are not
permitted. The proof-package limits are 65,536 filesystem entries, 16 MiB per
file and 4 GiB total, separate from the proved 128 MiB code-size limit.

## Challenge and initial-submission proof boundary

The fixed AST, source semantics, environment, observations, certificate
statement and independent source facts live under `Guest/` and `InitE/`.
The verifier freezes and audits those challenge dependencies independently
of the submitted candidate.

The initial submission in `submission/` has literal score `.infinity`. Its
complete 950,336-byte image includes a bootstrap and compiled accelerated
guest. The compiler configuration, pass certificates, compiled stack analysis,
artifact equality, bootstrap, installation and compiler-correctness application
belong to `submission/InitECandidate/Proofs/`. They prove the submission's
certificate, rather than supplying assumptions to other contestants. A
public theorem namespace does not change that ownership. Participants may use
compiler correctness or any other proof strategy that establishes the same
certificate.

The source's no-OOM behavior under the gas limit, fidelity to Ethereum's rules,
and agreement between the formal RISC-V model and a particular execution
platform are separate questions. See [SOUNDNESS.md](SOUNDNESS.md). Submission
format and verifier operation are documented in [SUBMISSIONS.md](SUBMISSIONS.md).
Optional testing instructions are in [TESTING.md](TESTING.md) and
[EEST-SPIKE.md](EEST-SPIKE.md).
