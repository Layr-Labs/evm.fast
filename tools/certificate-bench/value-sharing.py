#!/usr/bin/env python3
"""Isolate value sharing from proof sharing on four actual guest functions.

Reconstructs the pre-reuse direct certificates at a frozen revision. The common
specification is identical in all variants. SharedValues aliases repeated data;
SharedProof also checks the name-generalized optimizer equation only once.
Compiles CompareReplay against the installed comparator/exporter native objects.
No full submission comparison or production artifact replacement is performed.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import time

from metadata import LEGAL, PRIMITIVES

ROOT = Path(__file__).resolve().parents[2]
HERE = Path(__file__).resolve().parent
LABELS = [373, 375, 376, 378]
HEADER = """import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
"""
CASES = ["Original", "SharedValues", "SharedProof"]


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--base-revision", default="c2f6c8f5f")
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=180)
    args = ap.parse_args()
    if args.trials < 1 or args.timeout < 1:
        ap.error("trials and timeout must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")
    revision = subprocess.check_output(["git", "rev-parse", args.base_revision], text=True).strip()
    hashes = {}

    def frozen(path):
        text = subprocess.check_output(["git", "show", revision + ":" + path], text=True)
        hashes[path] = hashlib.sha256(text.encode()).hexdigest()
        return text

    inputs, data, statements, bodies = {}, {}, {}, {}
    for i in LABELS:
        prefix = "submission/InitECandidate/Proofs/WordStages/"
        source = frozen(prefix + f"Source{i}.lean")
        inputs[i] = source[source.index(f"def source{i} "):source.index("end InitECandidate.Proofs.WordStages")]
        source = frozen(prefix + f"Optimize{i}.lean")
        start = source.index(f"theorem optimize{i}_eq")
        data[i] = source[source.index(f"def optimizedBody{i}_0"):start]
        statements[i], body = source[start:source.index(f"#print axioms optimize{i}_eq")].split(":= by", 1)
        bodies[i] = body
        assert "kernel_rfl" in body, "baseline must predate shared optimizer proofs"
    spec = HEADER + "namespace SharingSpec\n" + inputs[373] + data[373]
    spec += "def input := source373.2.2\ndef oracle := oracle373\ndef output := optimized373.2.2\nend SharingSpec\n"
    (out / "SharingSpec.lean").write_text(spec)
    goal = """WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig ((NAME, 3, SharingSpec.input), SharingSpec.oracle) = (NAME, 3, SharingSpec.output)"""
    certificate = "theorem certificate : " + " ∧ ".join(
        "(" + goal.replace("NAME", str(i)) + ")" for i in LABELS)
    for case in CASES:
        source = "import SharingSpec\n" + HEADER
        if case == "SharedProof":
            source += "theorem shared (name : Nat) : " + goal.replace("NAME", "name") + ":= by" + bodies[373]
            source += "#print axioms shared\n"
        for i in LABELS:
            source += f"namespace Local{i}\n"
            if case == "Original":
                source += inputs[i] + data[i]
            else:
                source += f"def source{i} := ({i}, 3, SharingSpec.input)\n"
                source += f"def oracle{i} := SharingSpec.oracle\n"
                source += f"def optimized{i} := ({i}, 3, SharingSpec.output)\n"
            body = f"\n  exact shared {i}\n" if case == "SharedProof" else bodies[i]
            source += statements[i] + ":= by" + body
            source += f"#print axioms optimize{i}_eq\nend Local{i}\n"
        source += certificate + " := ⟨" + ", ".join(f"Local{i}.optimize{i}_eq" for i in LABELS) + "⟩\n#print axioms certificate\n"
        (out / f"{case}.lean").write_text(source)
    (out / "Challenge.lean").write_text("import SharingSpec\n" + HEADER + certificate + " := by sorry\n")

    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = Path(subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip())
    comparator = ROOT / "verifier/.tools/comparator/.lake/build"
    exporter = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    env = os.environ.copy()
    env["LEAN_PATH"] = ":".join([str(out), str(comparator / "lib/lean"), str(exporter / "lib/lean"), base])
    rows = []

    def run(case, phase, trial, command, artifact=None, expected_rejection=None):
        stem = f"{case}-{phase}-{trial}"
        log_path, timing_path = out / f"{stem}.log", out / f"{stem}.time"
        started = time.monotonic()
        with log_path.open("w") as log:
            cmd = ["/usr/bin/time", "-v", "-o", str(timing_path), "timeout", "--kill-after=10s", str(args.timeout), *map(str, command)]
            if phase == "export":
                with artifact.open("w") as dst:
                    result = subprocess.run(cmd, env=env, stdout=dst, stderr=log)
            else:
                result = subprocess.run(cmd, env=env, stdout=log, stderr=subprocess.STDOUT)
        log = log_path.read_text()
        row = dict(case=case, phase=phase, trial=trial, exit=result.returncode,
                   wall=time.monotonic()-started, log=log)
        timing = timing_path.read_text()
        for field, label in [("user", "User time (seconds)"), ("system", "System time (seconds)"),
                             ("peak_kib", "Maximum resident set size (kbytes)")]:
            match = re.search(re.escape(label) + r":\s*([0-9.]+)", timing)
            row[field] = float(match[1]) if match else None
        for key, value in re.findall(r"(parse_ms|compare_ms|replay_ms|constants)=(\d+)", log):
            row[key] = int(value)
        if artifact and artifact.exists():
            row["artifact_bytes"] = artifact.stat().st_size
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps({k: v for k, v in row.items() if k != "log"}), flush=True)
        if expected_rejection:
            if result.returncode == 0 or expected_rejection not in log:
                raise RuntimeError(f"expected rejection missing: {stem}")
            return
        if result.returncode:
            raise RuntimeError(f"{stem} failed: {log_path}")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", log):
            if {a.strip() for a in closure.split(",") if a.strip()} - set(LEGAL):
                raise RuntimeError(f"unexpected axiom closure: {closure}")
        if phase in ["compare", "interpreted"] and "comparator=accepted" not in log:
            raise RuntimeError("missing comparator acceptance")

    c_file, executable = out / "CompareReplay.c", out / "compare-replay"
    run("NativeRunner", "generate-c", 0, [lean, "-c", c_file, HERE / "CompareReplay.lean"], c_file)
    objects = sorted(p for root in [comparator, exporter] for p in (root / "ir").rglob("*.c.o.export") if p.name != "Main.c.o.export")
    run("NativeRunner", "link", 0, [lean.with_name("leanc"), "-O3", "-o", executable, c_file, *objects], executable)
    metadata = dict(base_revision=revision, labels=LABELS, source_sha256=hashes,
                    trials=args.trials, timeout=args.timeout,
                    toolchain=(ROOT / "lean-toolchain").read_text().strip(),
                    native_object_sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in objects})
    (out / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
    for case in ["SharingSpec", "Challenge", *CASES]:
        artifact = out / f"{case}.olean"
        run(case, "build", 0, [lean, "-j1", "-o", artifact, out / f"{case}.lean"], artifact)
        if case != "SharingSpec":
            run(case, "export", 0, [exporter / "bin/lean4export", case, "--", "certificate", *LEGAL, *PRIMITIVES], out / f"{case}.jsonl")
    for trial in range(args.trials):
        order = CASES[trial % 3:] + CASES[:trial % 3]
        for case in order:
            run(case, "compare", trial, [executable, out / "Challenge.jsonl", out / f"{case}.jsonl", "certificate"], out / f"{case}.jsonl")
    # One identical export pair quantifies the harness execution-mode difference.
    run("Original", "interpreted", 0, [lean, "-j1", "--run", HERE / "CompareReplay.lean", out / "Challenge.jsonl", out / "Original.jsonl", "certificate"])
    run("NativeRunner", "reject-axiom", 0,
        [executable, out / "Challenge.jsonl", out / "Challenge.jsonl", "certificate"],
        expected_rejection="Illegal axiom detected: 'sorryAx'")


if __name__ == "__main__":
    main()
