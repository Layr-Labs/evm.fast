#!/usr/bin/env python3
"""Compare proof boundaries on selected optimizer certificates, never the full submission.

All variants export the same conjunction of public optimizer statements. Direct
removes the intermediate certificates; DirectSsa keeps the verified structural
SSA rewrite. Bundle variants require the eleven WordStages PassN_i modules.
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
HEADER = """import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.SmallSsaKernelComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
"""


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--labels", type=int, nargs="+", required=True)
    ap.add_argument("--variants", nargs="+", default=["Original", "Direct", "DirectSsa"],
                    choices=["Original", "Direct", "DirectSsa", "Bundle", "CompactBundle"])
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--base-revision", default="HEAD", help="Freeze the original proof bodies at this revision; prebuilt dependencies must still match")
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=90)
    args = ap.parse_args()
    if not 1 <= len(args.labels) <= 8 or len(set(args.labels)) != len(args.labels):
        ap.error("select one to eight distinct functions")
    if args.trials < 1 or args.timeout < 1:
        ap.error("trials and timeout must be positive")
    if "Original" not in args.variants or len(set(args.variants)) != len(args.variants):
        ap.error("include Original and do not repeat variants")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")
    hashes = {}
    revision = subprocess.check_output(["git", "rev-parse", args.base_revision], text=True).strip()

    def read(path):
        data = subprocess.check_output(["git", "show", revision + ":" + path])
        hashes[path] = hashlib.sha256(data).hexdigest()
        return data.decode()

    def declaration(text, name):
        start = text.index(f"theorem {name} :")
        end = text.index(f"#print axioms {name}", start)
        statement, body = text[start:end].split(":= by", 1)
        return statement.split(" :", 1)[1].strip(), body

    statements, bodies = {}, {}
    prefix = "submission/InitECandidate/Proofs/WordStages/"
    header = "".join(f"import InitECandidate.Proofs.WordStages.Optimize{n}\n" for n in args.labels) + HEADER
    for n in args.labels:
        original = read(prefix + f"Optimize{n}.lean")
        # Keep the original proof's helper imports even after its public module
        # has been switched to the measured alternative.
        header = "".join(line + "\n" for line in original.splitlines() if line.startswith("import ")) + header
        statements[n], bodies[n] = declaration(original, f"optimize{n}_eq")
        read(prefix + f"Source{n}.lean")
    statement = " ∧\n".join("(" + statements[n] + ")" for n in args.labels)
    (out / "Challenge.lean").write_text(header + "theorem certificate : " + statement + " := by sorry\n")
    for case in args.variants:
        source = header
        for n in args.labels:
            if case == "Original":
                proof = bodies[n]
            elif case == "Direct":
                proof = "  kernel_rfl\n"
            elif case == "DirectSsa":
                proof = """  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
"""
            else:
                types, steps = [], []
                for i in range(11):
                    typ, body = declaration(read(prefix + f"Pass{n}_{i}.lean"), f"pass{n}_{i}_eq")
                    if case == "CompactBundle" and i == 3:
                        body = "\n  unfold WordAlloc.removeDeadProg\n  rw [WordAlloc.removeDeadStructural_eq]\n  kernel_rfl\n"
                    types.append(typ)
                    lines = body.strip("\n").splitlines()
                    steps.append("  · " + lines[0].lstrip() + "\n" + "".join("  " + line + "\n" for line in lines[1:]))
                source += f"theorem checks{n} : " + " ∧\n".join("(" + typ + ")" for typ in types)
                source += " := by\n  refine ⟨" + ", ".join("?_" for _ in types) + "⟩\n" + "".join(steps)
                proof = re.sub(rf"pass{n}_(\d+)_eq",
                               lambda m: f"checks{n}" + ".2" * int(m[1]) + (".1" if int(m[1]) < 10 else ""), bodies[n])
            source += f"theorem result{n} : {statements[n]} := by\n" + proof
        result = "result" + str(args.labels[0]) if len(args.labels) == 1 else "⟨" + ", ".join(f"result{n}" for n in args.labels) + "⟩"
        source += "theorem certificate : " + statement + " := " + result + "\n#print axioms certificate\n"
        (out / f"{case}.lean").write_text(source)

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
    metadata = dict(base_revision=revision, labels=args.labels, variants=args.variants, trials=args.trials, timeout=args.timeout,
                    source_sha256=hashes, toolchain=(ROOT / "lean-toolchain").read_text().strip(),
                    native_object_sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in objects})
    (out / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
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
