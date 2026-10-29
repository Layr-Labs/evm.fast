#!/usr/bin/env python3
"""Compare a five-function optimizer fragment against a frozen git revision.

Common dependencies must already be built. Each command has a 180 second cap.
Both variants shadow the selected production modules in isolated import roots.
The old certificate serves as the challenge for the real comparator checks.
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
LABELS = [373, 375, 376, 377, 378]
MODULES = [f"InitECandidate/Proofs/SmallStages/Compact377/{part}"
           for part in ["Pass10", "Complete", "Exact"]]
MODULES += [f"InitECandidate/Proofs/WordStages/Optimize{i}" for i in LABELS]


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--base-revision", required=True)
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--checkpoint-prefix", action="store_true",
                    help="reuse existing per-pass equations instead of computing the shared prefix")
    args = ap.parse_args()
    if args.trials < 1:
        ap.error("trials must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")
    revision = subprocess.check_output(
        ["git", "rev-parse", args.base_revision], text=True).strip()
    base_path = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    exp = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    comp = ROOT / "verifier/.tools/comparator/.lake/build/lib/lean"
    rows, hashes, environments = [], {}, {}

    def run(case, phase, trial, command, env, artifact=None):
        stem = f"{case}-{phase}-{trial}"
        log_path, timing_path = out / f"{stem}.log", out / f"{stem}.time"
        start = time.monotonic()
        with log_path.open("w") as log:
            if phase == "export":
                with artifact.open("w") as dst:
                    result = subprocess.run(
                        ["/usr/bin/time", "-v", "-o", str(timing_path), "timeout", "--kill-after=10s", "180", *command],
                        env=env, stdout=dst, stderr=log)
            else:
                result = subprocess.run(
                    ["/usr/bin/time", "-v", "-o", str(timing_path), "timeout", "--kill-after=10s", "180", *command],
                    env=env, stdout=log, stderr=subprocess.STDOUT)
        log, timing = log_path.read_text(), timing_path.read_text()
        row = dict(case=case, phase=phase, trial=trial, exit=result.returncode,
                   wall=time.monotonic()-start, log=log)
        for field, label in [("user", "User time (seconds)"), ("system", "System time (seconds)"),
                             ("peak_kib", "Maximum resident set size (kbytes)")]:
            match = re.search(re.escape(label) + r":\s*([0-9.]+)", timing)
            row[field] = float(match[1]) if match else None
        if artifact and artifact.exists():
            row["artifact_bytes"] = artifact.stat().st_size
        for key, val in re.findall(r"(parse_ms|compare_ms|replay_ms|constants)=(\d+)", log):
            row[key] = int(val)
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps({k: v for k, v in row.items() if k != "log"}), flush=True)
        if result.returncode:
            raise RuntimeError(f"failed {stem}: {log_path}")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", log):
            if {x.strip() for x in closure.split(",") if x.strip()} - set(LEGAL):
                raise RuntimeError(f"unexpected axioms: {closure}")
        if phase == "compare" and "comparator=accepted" not in log:
            raise RuntimeError("missing comparator acceptance")

    for mode in ["Before", "After"]:
        directory = out / mode
        directory.mkdir()
        # Lean resolves a package root as a unit. Populate the overlay with
        # links to unchanged artifacts, keeping selected outputs independent.
        selected = {Path(m + ".olean") for m in MODULES}

        def overlay(relative):
            original = ROOT / ".lake/build/lib/lean" / relative
            destination = directory / relative
            if relative in selected:
                return
            if any(relative in path.parents for path in selected):
                destination.mkdir(exist_ok=True)
                for child in original.iterdir():
                    overlay(relative / child.name)
            else:
                destination.symlink_to(original, target_is_directory=original.is_dir())

        overlay(Path("InitECandidate"))
        env = os.environ.copy()
        env["LEAN_PATH"] = ":".join([str(directory), str(comp), str(exp / "lib/lean"), base_path])
        environments[mode] = env
        for module in MODULES:
            path = "submission/" + module + ".lean"
            source_text = (subprocess.check_output(["git", "show", revision + ":" + path], text=True)
                           if mode == "Before" else (ROOT / path).read_text())
            if mode == "After" and args.checkpoint_prefix and module.endswith("Compact377/Complete"):
                source_text = "".join(
                    f"import InitECandidate.Proofs.SmallStages.Compact377.Pass{i}\n"
                    for i in range(2, 9)) + source_text
                old = ("  dsimp only\n  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n"
                       "  kernel_rfl\n")
                assert source_text.count(old) == 1
                source_text = source_text.replace(old,
                    "  dsimp only\n  rw [pass2_eq, pass3_eq, pass4_eq, pass5_eq, pass6_eq, pass7_eq, pass8_eq]\n")
            hashes[mode + ":" + path] = hashlib.sha256(source_text.encode()).hexdigest()
            source = directory / (module + ".lean")
            source.parent.mkdir(parents=True, exist_ok=True)
            source.write_text(source_text)
            run(mode + "-" + module.replace("/", "-"), "build", 0,
                [lean, "-j1", "-o", str(source.with_suffix(".olean")), str(source)], env, source.with_suffix(".olean"))
        statements = []
        for i in LABELS:
            source = (ROOT / f"submission/InitECandidate/Proofs/WordStages/Optimize{i}.lean").read_text()
            statements.append(source.split(f"theorem optimize{i}_eq :", 1)[1].split(" := by", 1)[0])
        imports = "".join(f"import InitECandidate.Proofs.WordStages.Optimize{i}\n" for i in LABELS)
        source = directory / "StageGroup.lean"
        source.write_text(imports + "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n"
            "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target InitECandidate.Proofs.WordStages\n"
            + "theorem certificate : " + " ∧ ".join(f"({s})" for s in statements)
            + " := ⟨" + ", ".join(f"optimize{i}_eq" for i in LABELS) + "⟩\n#print axioms certificate\n")
        run(mode, "build", 0, [lean, "-j1", "-o", str(source.with_suffix(".olean")), str(source)], env, source.with_suffix(".olean"))
        run(mode, "export", 0, [str(exp / "bin/lean4export"), "StageGroup", "--", "certificate", *LEGAL, *PRIMITIVES],
            env, directory / "StageGroup.jsonl")
    (out / "metadata.json").write_text(json.dumps(dict(base_revision=revision, labels=LABELS,
        trials=args.trials, checkpoint_prefix=args.checkpoint_prefix, source_sha256=hashes,
        toolchain=(ROOT / "lean-toolchain").read_text().strip()), indent=2) + "\n")
    for trial in range(args.trials):
        for mode in ["Before", "After"] if trial % 2 == 0 else ["After", "Before"]:
            exported = out / mode / "StageGroup.jsonl"
            run(mode, "compare", trial, [lean, "-j1", "--run", str(HERE / "CompareReplay.lean"),
                str(out / "Before/StageGroup.jsonl"), str(exported), "certificate"], environments[mode], exported)


if __name__ == "__main__":
    main()
