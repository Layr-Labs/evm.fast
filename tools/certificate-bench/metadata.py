#!/usr/bin/env python3
"""Benchmark the baseline metadata certificate without running the full comparator."""

import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import time


ROOT = Path(__file__).resolve().parents[2]
HERE = Path(__file__).resolve().parent
LEGAL = ["propext", "Quot.sound", "Classical.choice"]
PRIMITIVES = [
    "Nat.add", "Nat.sub", "Nat.mul", "Nat.pow", "Nat.gcd", "Nat.div",
    "Nat.mod", "Nat.beq", "Nat.ble", "Nat.land", "Nat.lor", "Nat.xor",
    "Nat.shiftLeft", "Nat.shiftRight", "String.ofList", "Char.ofNat", "List",
    "eagerReduce",
]
HEADER = """import InitECandidate.Proofs.BaselineMetadata
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open InitE
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Misc

theorem MetadataBenchmark.certificate :
    ffiNameBoundaryValid baselineNames 20 ∧
    (∀ i : Fin baselineNames.length, 20 ≤ i.val →
      mmioRecordValid (BitVec.ofNat 64 nativePc) 20 baselineMmio i.val = true) ∧
    (∀ i : Fin 20, findIndex
      (BitVec.ofNat 64 nativePc - BitVec.ofNat 64 ((3+i.val)*ffiOffset))
      baselineEntryPcs 0 = some i.val) ∧
    (∀ i : Fin baselineEntryPcs.length, 20 ≤ i.val →
      dispatchAddress 0 ≠ baselineEntryPcs[i] ∧ dispatchAddress 1 ≠ baselineEntryPcs[i]) ∧
    baselineNames.length = baselineEntryPcs.length := by
"""


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work", type=Path, required=True)
    parser.add_argument("--trials", type=int, default=3)
    parser.add_argument("--timeout", type=int, default=180)
    args = parser.parse_args()
    if args.trials < 1 or args.timeout < 1:
        parser.error("trials and timeout must be positive")

    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        parser.error("use an empty work directory")

    bodies = {
        "Challenge": "  sorry\n",
        "Control": (
            "  unfold ffiNameBoundaryValid baselineEntryPcs baselineNames "
            "baselineMmio baselineConfig\n  decide_cbv\n"
        ),
        "Compact": "  exact baseline_finite_facts\n",
    }
    for case, body in bodies.items():
        audit = "#print axioms MetadataBenchmark.certificate\n" if case != "Challenge" else ""
        (out / f"{case}.lean").write_text(HEADER + body + audit)

    export_build = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    comparator = ROOT / "verifier/.tools/comparator/.lake/build/lib/lean"
    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    env = os.environ.copy()
    env["LEAN_PATH"] = ":".join([str(out), str(comparator), str(export_build / "lib/lean"), base])
    rows = []

    def timed(case, phase, trial, command, artifact, stdout_path=None):
        stem = f"{case}-{phase}-{trial}"
        timing_path = out / f"{stem}.time"
        log_path = out / f"{stem}.log"
        started = time.monotonic()
        with log_path.open("w") as log:
            if stdout_path:
                with stdout_path.open("w") as dst:
                    result = subprocess.run(
                        ["/usr/bin/time", "-v", "-o", str(timing_path), "timeout",
                         "--kill-after=10s", str(args.timeout), *command],
                        env=env, stdout=dst, stderr=log,
                    )
            else:
                result = subprocess.run(
                    ["/usr/bin/time", "-v", "-o", str(timing_path), "timeout",
                     "--kill-after=10s", str(args.timeout), *command],
                    env=env, stdout=log, stderr=subprocess.STDOUT,
                )
        timing = timing_path.read_text()
        log_text = log_path.read_text()

        def value(key):
            match = re.search(re.escape(key) + r":\s*([0-9.]+)", timing)
            return float(match[1]) if match else None

        row = {
            "case": case, "phase": phase, "trial": trial, "exit": result.returncode,
            "wall": time.monotonic() - started,
            "user": value("User time (seconds)"),
            "system": value("System time (seconds)"),
            "peak_kib": value("Maximum resident set size (kbytes)"),
            "artifact_bytes": artifact.stat().st_size if artifact.exists() else None,
            "log": log_text,
        }
        for key, val in re.findall(r"(parse_ms|compare_ms|replay_ms|constants)=(\d+)", log_text):
            row[key] = int(val)
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps({key: val for key, val in row.items() if key != "log"}), flush=True)
        if result.returncode:
            raise RuntimeError(f"{stem} failed or timed out: {log_path}")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", log_text):
            if not {axiom.strip() for axiom in closure.split(",") if axiom.strip()} <= set(LEGAL):
                raise RuntimeError(f"unexpected axiom: {closure}")
        if phase == "compare" and "comparator=accepted" not in log_text:
            raise RuntimeError("missing comparator acceptance")

    name = "MetadataBenchmark.certificate"
    for case in ["Challenge", "Control", "Compact"]:
        artifact = out / f"{case}.olean"
        timed(case, "build", 0, [lean, "-j1", "-o", str(artifact), str(out / f"{case}.lean")], artifact)
        exported = out / f"{case}.jsonl"
        timed(case, "export", 0,
              [str(export_build / "bin/lean4export"), case, "--", name, *LEGAL, *PRIMITIVES],
              exported, exported)

    for trial in range(args.trials):
        order = ["Control", "Compact"] if trial % 2 == 0 else ["Compact", "Control"]
        for case in order:
            exported = out / f"{case}.jsonl"
            timed(case, "compare", trial,
                  [lean, "-j1", "--run", str(HERE / "CompareReplay.lean"),
                   str(out / "Challenge.jsonl"), str(exported), name],
                  exported)


if __name__ == "__main__":
    main()
