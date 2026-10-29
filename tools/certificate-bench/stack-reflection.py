#!/usr/bin/env python3
"""Bounded experiments with compiler-pass fusion and Boolean reflection.

Select at most eight function labels. Never imports or exports the submission
certificate. All variants use the same public fragment statement and include
all used helper proofs in independent kernel replay. Imported modules must be
prebuilt from the working tree; this is not a historical-checkout rebuilder.
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
HEADER = """import StackReflection
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
"""
PIPELINE = """
def encodeStack (label : Nat) (p : StackLang.HolProg 64) : LabSem.LabSectionHOL 64 :=
  let raw := StackRawCall.compTop RawInfo.rawInfo p
  let alloc := StackAlloc.progComp (label, raw)
  let removed := StackRemove.progComp false riscvConfig.addrOffset
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) alloc
  let named := StackNames.progCompEntryHOL RiscVConfig.riscvNames removed
  let sec := StackToLab.progToSectionHOL named
  let filtered := { sec with lines := sec.lines.filter LabFilter.notSkip }
  LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length filtered
"""


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--mode", choices=["allocation", "backend", "section"], required=True)
    ap.add_argument("--labels", type=int, nargs="+", required=True)
    ap.add_argument("--variants", nargs="+",
                    choices=["Original", "Reflected", "Fused", "Structural"])
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=90)
    args = ap.parse_args()
    if args.variants is None:
        args.variants = ["Original", "Structural" if args.mode == "section" else "Reflected"]
    if not 1 <= len(args.labels) <= 8 or len(set(args.labels)) != len(args.labels):
        ap.error("select one to eight distinct functions")
    if any(n < 64 or n > 889 for n in args.labels):
        ap.error("function labels must be between 64 and 889")
    if args.trials < 1 or not 1 <= args.timeout <= 300:
        ap.error("trials must be positive; timeout must be between 1 and 300 seconds")
    if "Original" not in args.variants or len(set(args.variants)) != len(args.variants):
        ap.error("include Original and do not repeat variants")
    allowed = {"allocation": {"Original", "Reflected"},
               "backend": {"Original", "Reflected", "Fused"},
               "section": {"Original", "Structural"}}[args.mode]
    if set(args.variants) - allowed:
        ap.error("variants do not match the selected mode")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")
    revision = subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip()
    helper = HERE / "StackReflection.lean"
    (out / helper.name).write_bytes(helper.read_bytes())
    hashes = {str(helper.relative_to(ROOT)): hashlib.sha256(helper.read_bytes()).hexdigest()}
    family = {"allocation": "Alloc", "backend": "Encoded", "section": "Section"}[args.mode]
    header = "".join(f"import InitECandidate.Proofs.BackendStages.{family}{n}\n" for n in args.labels) + HEADER
    if args.mode == "section":
        header = header.replace("import StackReflection",
                                "import InitECandidate.Proofs.StackToLabKernelComputation")
        path = ROOT / "submission/InitECandidate/Proofs/StackToLabKernelComputation.lean"
        hashes[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
    if args.mode == "backend":
        header += PIPELINE
    types = {}
    for n in args.labels:
        families = ["Function", "Raw", "Alloc", "Removed", "Named", "Section", "Filtered", "Encoded"]
        for f in families[:3] if args.mode == "allocation" else families:
            path = ROOT / f"submission/InitECandidate/Proofs/BackendStages/{f}{n}.lean"
            hashes[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
        types[n] = (f"StackAlloc.progComp ({n}, raw{n}) = Alloc{n}" if args.mode == "allocation"
                    else f"encodeStack {n} (function{n} (.list [])).1 = Encoded{n}")
        if args.mode == "section":
            types[n] = f"StackToLab.progToSectionHOL Named{n} = section{n}"
    statement = " ∧\n".join("(" + types[n] + ")" for n in args.labels)
    (out / "Challenge.lean").write_text(header + "theorem certificate : " + statement + " := by sorry\n")
    for case in args.variants:
        source = header
        for n in args.labels:
            if args.mode == "section":
                # Reconstruct the direct baseline even after the public theorem
                # has been switched to the structural evaluator.
                proof = ("kernel_rfl" if case == "Original" else
                         "rw [InitECandidate.Proofs.StackToLabKernelComputation.progToSection_eq]\n  kernel_rfl")
            elif args.mode == "allocation":
                proof = (f"exact Alloc{n}_eq" if case == "Original" else
                         "rw [StackReflection.progComp_eq _ _ (by kernel_rfl)]\n  kernel_rfl")
            elif case == "Fused":
                proof = "kernel_rfl"
            else:
                if case == "Reflected":
                    # Remove the literal allocation checkpoint from the closure,
                    # keeping the next pass's original result and public endpoint.
                    source += f"""
theorem removed{n} : StackRemove.progComp false riscvConfig.addrOffset
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) ({n}, raw{n}) = Removed{n} := by
  kernel_rfl
"""
                    allocation = f"StackReflection.progComp_eq _ _ (by kernel_rfl), removed{n}"
                else:
                    allocation = f"Alloc{n}_eq, Removed{n}_eq"
                proof = f"unfold encodeStack\n  dsimp only\n  rw [raw{n}_eq, {allocation}, "
                proof += ", ".join(f"{k}{n}_eq" for k in ["Named", "section", "Filtered", "Encoded"]) + "]"
            source += f"\ntheorem result{n} : {types[n]} := by\n  {proof}\n"
        result = "result" + str(args.labels[0]) if len(args.labels) == 1 else "⟨" + ", ".join(f"result{n}" for n in args.labels) + "⟩"
        source += "theorem certificate : " + statement + " := " + result + "\n#print axioms certificate\n"
        (out / f"{case}.lean").write_text(source)
    for path in out.glob("*.lean"):
        hashes["fixture/" + path.name] = hashlib.sha256(path.read_bytes()).hexdigest()

    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = Path(subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip())
    comparator = ROOT / "verifier/.tools/comparator/.lake/build"
    exporter = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    env = os.environ.copy()
    env["LEAN_PATH"] = ":".join([str(out), str(comparator / "lib/lean"), str(exporter / "lib/lean"), base])
    rows = []

    def run(case, phase, trial, cmd, artifact=None, rejection=None):
        stem = f"{case}-{phase}-{trial}"
        started = time.monotonic()
        with (out / f"{stem}.log").open("w") as log:
            command = ["/usr/bin/time", "-v", "-o", str(out / f"{stem}.time"), "timeout", "--kill-after=5s", str(args.timeout), *map(str, cmd)]
            if phase == "export":
                with artifact.open("w") as dst:
                    result = subprocess.run(command, env=env, stdout=dst, stderr=log)
            else:
                result = subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT)
        log = (out / f"{stem}.log").read_text()
        row = dict(case=case, phase=phase, trial=trial, wall=time.monotonic()-started, exit=result.returncode, log=log)
        timing = (out / f"{stem}.time").read_text()
        for key, label in [("user", "User time (seconds)"), ("system", "System time (seconds)"), ("peak_kib", "Maximum resident set size (kbytes)")]:
            match = re.search(re.escape(label) + r":\s*([0-9.]+)", timing)
            row[key] = float(match[1]) if match else None
        row.update({k: int(v) for k, v in re.findall(r"(parse_ms|compare_ms|replay_ms|constants)=(\d+)", log)})
        if artifact and artifact.exists():
            row["artifact_bytes"] = artifact.stat().st_size
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps({k: v for k, v in row.items() if k != "log"}), flush=True)
        if rejection:
            if result.returncode == 0 or rejection not in log:
                raise RuntimeError(f"missing expected rejection: {stem}")
            return
        if result.returncode:
            raise RuntimeError(f"failed {stem}; see its log")
        if phase == "compare" and "comparator=accepted" not in log:
            raise RuntimeError(f"missing acceptance: {stem}")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", log):
            if {a.strip() for a in closure.split(",") if a.strip()} - set(LEGAL):
                raise RuntimeError(f"unexpected axioms: {closure}")

    objects = sorted(p for root in [comparator, exporter] for p in (root / "ir").rglob("*.c.o.export") if p.name != "Main.c.o.export")
    c_file, runner = out / "CompareReplay.c", out / "compare-replay"
    run("Runner", "generate-c", 0, [lean, "-c", c_file, HERE / "CompareReplay.lean"])
    run("Runner", "link", 0, [lean.with_name("leanc"), "-O3", "-o", runner, c_file, *objects])
    metadata = dict(base_revision=revision, mode=args.mode, labels=args.labels, variants=args.variants, trials=args.trials, timeout=args.timeout,
                    source_sha256=hashes, toolchain=(ROOT / "lean-toolchain").read_text().strip(),
                    native_object_sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in objects})
    (out / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
    run("Helper", "build", 0, [lean, "-j1", "-o", out / "StackReflection.olean", out / "StackReflection.lean"])
    for case in ["Challenge", *args.variants]:
        run(case, "build", 0, [lean, "-j1", "-o", out / f"{case}.olean", out / f"{case}.lean"])
        run(case, "export", 0, [exporter / "bin/lean4export", case, "--", "certificate", *LEGAL, *PRIMITIVES], out / f"{case}.jsonl")
    for trial in range(args.trials):
        offset = trial % len(args.variants)
        for case in args.variants[offset:] + args.variants[:offset]:
            run(case, "compare", trial, [runner, out / "Challenge.jsonl", out / f"{case}.jsonl", "certificate"])
    run("Runner", "reject-axiom", 0, [runner, out / "Challenge.jsonl", out / "Challenge.jsonl", "certificate"], rejection="Illegal axiom detected: 'sorryAx'")


if __name__ == "__main__":
    main()
