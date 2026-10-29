# Submitting a solution

Submit a directory containing `Solution.lean`, `claim.json`, and optional Lean
helper modules beneath `InitECandidate/`. Supply RISC-V bytes as `List (BitVec 8)`
literals; large images can concatenate literal chunks. The checked submission
includes the complete ROM image, bootstrap, data and padding.

`claim.json` contains exactly one field:

```json
{"K":"infinity"}
```

For a finite score, use a nonnegative JSON integer, such as `{"K":12345}`.
Infinity requires an actual finite execution for each covered input; it does
not allow target divergence. The certificate also proves the hard code-size
limit and the dispatch-layout admission conditions.

`Solution.lean` must define these declarations:

```lean
import InitE

namespace InitE.Challenge

-- Fill in all fields, including the submitted literal ROM and FFI layout.
noncomputable def submission : InitE.Submission := ...

-- Use exactly .infinity or .finite N, matching claim.json.
def claimedScore : InitE.NatE := .infinity

theorem certificate : InitE.Certificate submission claimedScore := by
  ...

end InitE.Challenge
```

The original submission in `submission/` uses `InitE.baselineSubmission` and
reuses the proved bootstrap and pinned Flapjack compiler-correctness theorem.
Its underlying ROM is assembled from committed literal modules. New solutions
can define their own submission and prove the same fixed certificate.

Tests are optional development aids, documented in [TESTING.md](TESTING.md)
and [EEST-SPIKE.md](EEST-SPIKE.md). Passing them does not replace the certificate.

## Local checks

From the `init-e` directory:

```sh
python3 verifier/check_submission.py submission
python3 verifier/verify.py --local submission --structural-only
python3 -m unittest discover -s verifier/tests -v
```

These validate the file tree, imports and claim. The result `structural_pass`
means that no proof verification was performed. Files must be ordinary UTF-8
Lean sources; symlinks, special files and alternate module headers are refused.
The source/proof package limits are 65,536 entries (including directories), 16 MiB per file and 4 GiB
in total. Shard large literal images across modules. These transport limits are
separate from the challenge's 128 MiB ROM limit. Only trusted
`InitE`/`Guest` modules, the pinned proof libraries, and submitted helper modules
may be imported.

## Isolated proof verification

Install the pinned tools, then run the isolated checker:

```sh
verifier/setup_tools.sh
python3 verifier/verify.py --local submission --work verifier/runs/baseline
```

Add `--progress` to print stage changes and stream build and comparator output
to the terminal as it arrives. Redirect stderr to a file if you want a live log
to follow with `tail -f`. This option applies only to a newly started run.

The work directory must not exist. The checker freezes the submission before
compilation and reports the trusted contract's SHA-256 fingerprint, exact
permitted axioms and log paths. It uses the sig.golf verifier pattern and the
[pinned Lean comparator](https://github.com/leanprover/comparator/tree/c0c5a52d2aff92b457c3e5ed4a68c1ebc5795809):
it compares the certificate against an independently built trusted challenge,
checks the submission definition's type and safety, audits axiom dependencies,
and replays the exported solution in Lean's kernel.
The verifier uses up to 30 available processors and has no wall-clock deadline.
The comparator's nanoda pass is enabled. A hash-pinned
[transport patch](../verifier/patches/README.md) supports the optional
nanoda-disabled mode; nanoda-enabled verification uses the comparator's
original buffered export path. Declaration comparison, both theorem and
definition axiom checks, primitive checks, and full kernel replay still run.

The trusted workspace contains the fixed challenge, AST, source semantics and
source facts. It does not copy any initial-submission proofs or bytecode into
a privileged namespace. All compiler certificates, installation and bootstrap
proofs for the initial submission live under `submission/InitECandidate/Proofs`
and are checked as part of that submission, just like another contestant's
proofs. Changing these files does not change the trusted contract fingerprint.

The challenge-only axiom audit is built before any candidate Lean is compiled. Its exact
axiom names are collected directly from Lean's environment; pretty-printed
names are not parsed. The allowlist contains exactly the three standard axioms
`propext`, `Quot.sound`, and `Classical.choice`. Comparator also compares each
permitted axiom's proposition and referenced declarations against the trusted
export. The audit must exactly match the checked-in
`verifier/trusted-axioms.json`; the verifier also enforces this three-name set.
Native-computation axioms are rejected, including those introduced by
`native_decide` or native `bv_decide`. Proof-producing metaprograms and tactics
remain available when Lean's kernel checks their results without additional
axioms.

Proof verification requires unprivileged Linux, Landlock ABI 3 or newer, a
working systemd user bus, and systemd support for the mandatory unit properties,
including `PrivatePIDs`. Each build/comparison unit has a 112 GiB memory cap,
no swap and up to 30 visible logical CPUs. The verifier stages and hashes the
trusted Lean limiter sources before running them inside isolation. Both the
trusted audit and comparator use at most 30 active Lean processes, with a
16,384-task allowance for waiting launchers and Lake reader threads. Generated
limiter binaries and locks stay under the writable `.lake/lean-limit` directory;
Lake artifact caching is explicitly disabled. The trusted audit build and the
complete comparator run (including its builds and kernel checking) each have
an eight-hour runtime limit. Local builds use `tools/build-lean.sh` with up to
32 Lean processes, nice level 10 and an eight-hour limit. `--constrained` keeps
the verifier's 16-process resource caps; `--quick` uses a 10-minute exploratory
limit. A timed-out build is unfinished. Networking, signals to other processes, host devices,
shared memory and the host PID namespace are isolated. Candidate processes
may write only the build cache; the parent comparator additionally receives
write access to its private disk spool directory. Missing isolation makes the checker stop before candidate compilation.
A run reports `verified` only after comparator accepts the exported proof.

Cache staging copies upstream dependencies and useful tool caches into independent files. It omits challenge and submission artifact namespaces that must be rebuilt, then clears those namespaces again before verification. This avoids copying large proof artifacts only to delete them; it does not reuse their certificates. Generated
limiter directories are omitted so their absolute launcher links cannot point
back into the host cache. The verifier recreates its limiter inside staging.

The upgraded development host has systemd 259.5. Its complete isolation probe
passes after adding an AppArmor namespace exception attached to
`/usr/lib/systemd/systemd-executor`; this is the process that constructs service
namespaces. A profile applied only to the user manager did not cover that step.
The executor exception affects service launches across accounts; the host-wide
AppArmor restriction remains enabled. See the [upstream AppArmor issue](https://gitlab.com/apparmor/apparmor/-/issues/585).
The launcher explicitly requests `PrivateUsers`, protects `/home` read-only,
and creates its temporary probe outside the `/tmp` hidden by `PrivateTmp`.

If an SSH or administrator-created shell lacks the user-bus environment, set
these variables as the verification account:

```bash
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
```

The verifier supplies these bus values itself when they are absent. The user
manager and its bus must still be running. The baseline passed full isolated verification after the upgrade with its
49-name native-computation axiom manifest. That run used a 24 GiB trusted-build
limit and raised the comparator limit to 64 GiB during kernel checking; the
script now uses 112 GiB throughout. The revised proofs use only the standard
three axioms and pass the full outside build. Their isolated verifier is
currently rebuilding the proofs. The exact runs are recorded in `BASELINE.json`.
Structural or Lean build success must not be described as isolated verification.

The authoritative source input is `Guest.guestAst`. The certificate uses the
AST-level compiler theorem and does not require text parsing. The AST header
links permanently to the original source and historical 49-axiom proof. The current standard-axiom baseline has not yet passed the full
verifier; the historical successful run above used the former native-axiom
manifest. See [PROOF-PERFORMANCE.md](PROOF-PERFORMANCE.md) for measured small
fixtures and current bottlenecks.
