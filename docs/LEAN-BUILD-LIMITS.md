# Limit external Lean compiler processes

Lake 5.0.0 / Lean 4.33.1 starts independent module jobs asynchronously and has no
supported external-process job limit. CPU affinity limits CPU use but does not
limit the number of compiler environments loaded into memory.

Run the build with the project-local limiter:

```sh
rtk proxy timeout --kill-after=5s 1200s python3 tools/limited-lake.py --slots 30 -- lake build InitECandidate.Proofs.WordBackend.FunctionsFacts
```

The default is 30 slots; `--slots` accepts 1–32. Each small C launcher acquires a
blocking `flock` before executing the unchanged real Lean compiler. The lock file
descriptor survives `exec`, and the kernel releases it when the compiler exits.
Arguments, environment, standard streams, real githash, and exit status are
forwarded. Waiting launchers are cheap. Slot buckets can leave uneven tail work.

The Python helper creates a project-local virtual sysroot containing symlinks to
the selected installed toolchain, with only `bin/lean` replaced by the launcher.
It selects this through Lake's supported `LAKE_OVERRIDE_LEAN=1` and
`LEAN_SYSROOT` settings. The installed toolchain is read only. The default work
folder is `work/lean-perf/small-optimizer/limiter`; `--work-dir` must remain inside
the project. Copied trusted helpers can specify `--project-dir`. Nested launches
reuse the underlying real compiler and lock directory, and cannot increase the
parent's slot cap. Run metadata records trusted helper source hashes.

Use at most 30 CPUs and recommend `TasksMax=16384` for large fresh builds: Lake
still creates waiting processes and I/O threads, so 30 compiler slots do not
mean 30 tasks. The limiter does not gate separate C compiler or `leanir` jobs.

Checks: eight simultaneous fake compilers with two slots recorded peak activity
of exactly two and returned to zero, confirming lock inheritance through exec.
Twelve simultaneous real Lean requests with four slots reached exactly four.
Checked Compact191/207 targets remained up to date under the virtual sysroot,
and a fresh main Optimize262 wrapper passed with the standard three axioms.
Nested outer-two/inner-sixteen cache checks preserved the two-slot cap.

The verifier stages and hashes the C/Python helpers, then invokes the limiter
inside its sanitized environment for both the trusted audit and comparator.
The helper initializes the virtual sysroot and compiler admission there;
nested Lake launches preserve the slot cap. Wrapping the host verifier alone
would not propagate these settings into its sandbox. The full outside build
passes with the final caps; full isolated acceptance remains pending while
the cold verifier rebuild runs. Smoke checks alone do not establish acceptance.

For a local full build with the verifier's memory, CPU and compiler-slot caps:

```sh
tools/build-lean.sh --constrained InitE Submission InitECandidate.Proofs.Audit
```

This uses 112 GiB with zero swap, at most 16 logical CPUs and 16 active Lean
compiler slots, and an eight-hour limit. Without `--constrained`, the script
still limits CPU affinity, compiler slots and elapsed time, but does not apply
the memory cap. `--quick` reduces the elapsed limit to ten minutes.

The isolated verifier also requires disk space for two temporary proof exports.
It creates a unique mode-0700 directory outside the staged project, grants the
parent comparator write access to that directory, and rejects tmpfs/ramfs.
Candidate Landrun write access stays restricted to the Lake cache. The pinned
transport patch and provenance are in `verifier/patches/`; proof comparison,
axiom checks and full kernel replay remain mandatory.
