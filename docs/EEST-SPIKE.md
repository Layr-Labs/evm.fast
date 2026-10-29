# Reproduce the full EEST run with Spike

This is the sanity check behind the challenge: the assignment, the original
Pancake source of the guest (`guest/src`), must pass the entire `tests-zkevm`
stateless-fixture corpus. It is the complete corpus, not the small
`tools/check_all.sh` sample. `tools/eest-run.py` compares each guest result
with the fixture's `statelessOutputBytes` and reports root, success, and tail
regions. The guest's crypto runs on the accelerator CSRs, which Spike
implements, and the runner is Spike-only. The guest is built with `flapjack`
(`guest/build.sh`'s default `COMPILER`); pass `COMPILER=cake` instead to use a
bootstrapped/prebuilt CakeML `cake` binary. The same run is available as a
Docker image (`Dockerfile`, `.github/workflows/docker.yml`), which bakes in
the guest, `spike_run` and the converted corpus and runs everything with one
`docker run`; see `docs/TESTING.md`'s Docker section.

## Prerequisites

Follow `docs/TESTING.md`'s "Quick start" section first: it covers cloning, the
`lake`/`elan`, `riscv64-unknown-elf-{as,ld}`, and Spike-build
(`libboost-all-dev`, `device-tree-compiler`, `libssl-dev`) prerequisites,
initializing the `riscv-isa-sim` submodule, and building
`spike_run`. This document only adds the full-corpus-specific steps below,
against the EEST fixture tag this repo currently pins
(`eest-fixture-tag.txt` at the repository root; `tests-zkevm@v21.0.1` for the
recorded run below).

## Fetch, convert, build, and run all fixtures

`tools/eest-spike-full.sh` fetches the pinned EEST fixture tag, converts the
whole corpus, builds the guest, and runs it under Spike:

```bash
tools/eest-spike-full.sh
```

Its output directory is named with the source commit
(`work/eest-spike-<commit>`) so result files can't be mistaken for a run
from another checkout; re-running it with the same commit checked out
reuses that directory's manifest. `SPIKE_RUN` and `EEST_JOBS` (default 32)
are overridable env vars; see the script for details.

`eest-run` exits zero only when every record passes, which is
`tools/eest-spike-full.sh`'s own exit code. A nonzero exit is useful: the
JSON and per-fixture logs remain under the commit-named run directory for
inspection and reruns with `--from-json` or `--labels`.

## Recorded result

Run on commit `a67dd9a557850dc192923bb851f96e113c91544f`, with 16 Spike
workers and the guest built with `flapjack` (ELF sha256 `49f4665abe01822656bca3c1afa8031404064d16bd939a855416b5fd8ec577c8`),
against `tests-zkevm@v21.0.1` (both the `blockchain_tests` and
`blockchain_tests_engine` fixtures):

```text
records: 33614
PASS(full): 33605
PASS(malformed): 9
eest-run exit: 0
```

Steps over the passing cases: min 25,131, max 12,288,040,916, mean 8,946,640.

There were no fixture failures. The commit-qualified run directory and result
JSON are the reproducible record for this passing revision; the tracked
`tools/eest-baseline.json` is not used by this command.


## init-e challenge layout validation (2026-10-04)

The modified init-e guest moves scratch above `@base`, starts persistent bump
allocation after scratch, reserves the global words below the machine stack,
and maps 29 GiB RAM ending at `0x7e0000000`. See `docs/CHALLENGE.md` for the
full disjoint layout. The runtime explicitly initializes the five reserved
bookkeeping words before entering Pancake code, matching `Guest/Bookkeeping.lean`.
This run used the compiler from the branch then named `riscv-mi` (now
`riscv-im`) at
`8bd4e6b2786203d1d17cbc8e3d401396f346c85e`, with 16 Spike workers, against
all `tests-zkevm@v21.0.1` records, including declared-gas cases outside the
challenge's 200M assumption.

- Preprocessed source SHA-256: `d3cec76f0fd072e943f9be62e201b842317a2aa2adcb51bbd0f5cd9dd74d6016`.
- Guest ELF SHA-256: `a7189c4d1e418317bda0ea5508d3b0d468c024bf2b289753bdef2805d3444b40`.
- Results: `work/eest-challenge/bookkeeping-results.json`; per-fixture logs: `work/eest-challenge/bookkeeping-run/`.

```text
records: 33614
PASS(full): 33605
PASS(malformed): 9
FAIL: 0
ERROR: 0
eest-run exit: 0
```

The command was:

```bash
python3 tools/eest-run.py guest/build/guest.elf   work/eest-challenge/inputs/manifest.tsv --jobs 16 --quiet-passes   --json work/eest-challenge/bookkeeping-results.json --out-dir work/eest-challenge/bookkeeping-run
```

These hashes identify the uncommitted source revision precisely; the prior
commit-only directory naming cannot distinguish local source edits. A passing
EEST run checks observed behavior on the corpus, not the compiler proof obligations.

## Zero-RAM bootstrap validation (2026-10-04)

The final startup copies the compiler data initializer from ROM to initially
zeroed RAM, installs the bookkeeping and ABI values, sets the heap/stack
registers, and enters native code directly. Foreign-call testing stubs use a
fixed pointer block rather than the host stack. All 33,614 records passed
again: 33,605 full matches and 9 expected malformed rejects; zero failures
and errors. Instruction counts: minimum 48,236, maximum 12,288,467,569,
mean 8,980,596 (rounded).

ELF SHA-256: `930915c737fe769e0c967faea8cbfa1755ad1f949f544c726cf1ab8acc920b4f`.
The preprocessed source hash is unchanged from the preceding layout run.
The tested ELF is also retained at the usual `guest/build/guest.elf` location.

```bash
python3 tools/eest-run.py guest/build/guest-zero.elf \
  work/eest-challenge/inputs/manifest.tsv --jobs 16 --quiet-passes \
  --json work/eest-challenge/zero-ram-final-results.json \
  --out-dir work/eest-challenge/zero-ram-final-run
```

The submitted literal ROM image is 950,336 bytes. Its 208-byte bootstrap
executes 23,127 instructions before reaching native code. These measurements
verify the executable artifact and corpus behavior; the formal correctness
certificate is tracked separately in `docs/CHALLENGE.md`.

## Dependency repin (2026-10-04)

That repin used Flapjack `7ef58a0e940088c06e6a283bde681c5754fce262`.
The current `riscv-im` pin is `7981f765cdadecf9b2857f326a65bae47371ab15`;
the subsequent upstream changes touch documentation only, so the recorded
EEST artifact remains applicable.
Compared with the compiler revision recorded above, its compiler, theorem
statements, and execution semantics are unchanged; the changes are documentation,
tests, CI tooling, and proof-module comments. The source and final ELF hashes
were rechecked and still match the zero-RAM run. The original EEST records
retain their original compiler revision; the corpus was not rerun for this repin.

## Retained artifact recheck (2026-10-05)

The preprocessed source, literal AST and retained ELF hashes match
`BASELINE.json`. Regenerating the ROM, native bytes and bitmap literals from
`guest/build/guest.elf` into a temporary directory produced 236 Lean modules,
all byte-for-byte identical to the submitted literal modules. Recounting the
retained result file confirms 33,605 full matches and 9 expected malformed
rejects, with no nonzero process exits or unexpected output mismatches. This
rechecks the retained evidence; it is not a new Spike run. The standard-axiom
proof changes do not alter that tested executable artifact.
