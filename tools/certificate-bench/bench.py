#!/usr/bin/env python3
"""Small, ordinary-kernel experiments; does not edit guest certificates."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent

def generate(out, sizes, depth):
    for name in ["Checker", "Compose", "RepeatCompose", "Stats", "Replay"]:
        shutil.copyfile(HERE / (name + ".lean"), out / (name + ".lean"))
    prelude = "set_option Elab.async false\nset_option maxRecDepth 100000\nset_option maxHeartbeats 0\n"
    for n in sizes:
        lines = ["import Checker", f"namespace Data{n}"]
        for i in range(n):
            lines.append(f"noncomputable def node{i} : CheckerExperiment.Prog := .inst (.arith (.div {3*i+1} {3*i+2} {3*i+3}))")
        levels = [list(range(n))]
        counter = n
        while len(levels[-1]) > 1:
            current = []
            for a, b in zip(levels[-1][::2], levels[-1][1::2]):
                lines.append(f"noncomputable def node{counter} : CheckerExperiment.Prog := .seq node{a} node{b}")
                current.append(counter)
                counter += 1
            levels.append(current)
        lines += [f"noncomputable def src := node{levels[-1][0]}", f"end Data{n}"]
        (out / f"Data{n}.lean").write_text("\n".join(lines) + "\n")
        for mode in ["Direct", "Checked", "Decide", "DecideKernel", "CheckRfl", "Checkpoint"]:
            lines = [f"import Data{n}", "import Stats", "import Compose", prelude,
                     "open Flapjack.Compiler.Backend", "open CheckerExperiment", f"open Data{n}"]
            if mode == "Direct":
                body = "by kernel_rfl"
            elif mode == "Checked":
                body = "CheckerExperiment.certificate src (by kernel_rfl)"
            elif mode == "Checkpoint":
                # Each 64-instruction chunk is checked once. Opaque theorem
                # references carry the equations through the remaining tree.
                for node in levels[6]:
                    lines += [f"theorem eq{node} : WordCopy.copyPropProg node{node} WordCopy.emptyEq = (node{node}, WordCopy.emptyEq) := by kernel_rfl", f"#stats eq{node}"]
                for d in range(7, len(levels)):
                    prev = levels[d-1]
                    for i, node in enumerate(levels[d]):
                        a, b = prev[2*i:2*i+2]
                        lines += [f"theorem eq{node} : WordCopy.copyPropProg node{node} WordCopy.emptyEq = (node{node}, WordCopy.emptyEq) := seq_sound node{a} node{b} eq{a} eq{b}", f"#stats eq{node}"]
                body = f"congrArg Prod.fst eq{levels[-1][0]}"
            else:
                tactic = {"Decide": "decide", "DecideKernel": "decide +kernel", "CheckRfl": "kernel_rfl"}[mode]
                lines += [f"theorem checked : check src = true := by {tactic}", "#stats checked"]
                body = "CheckerExperiment.certificate src checked"
            lines += [f"theorem certificate : WordCopy.copyProp src = src := {body}", "#stats certificate", "#print axioms certificate"]
            (out / f"{mode}{n}.lean").write_text("\n".join(lines) + "\n")
    lines = ["import Checker", "namespace RepeatedData",
             "noncomputable def src0 : CheckerExperiment.Prog := .seq (.move 0 [(5, 1)]) (.seq (.return 0 [1]) (.inst (.const 5 0#64)))",
             "noncomputable def tgt0 : CheckerExperiment.Prog := .seq (.move 0 [(5, 1)]) (.seq (.return 0 [5]) (.inst (.const 5 0#64)))"]
    for i in range(1, depth+1):
        for k in ["src", "tgt"]:
            lines.append(f"noncomputable def {k}{i} : CheckerExperiment.Prog := .seq {k}{i-1} {k}{i-1}")
    (out / "RepeatData.lean").write_text("\n".join(lines + ["end RepeatedData"]) + "\n")
    for mode in ["RepeatDirect", "RepeatCheckpoint"]:
        lines = ["import RepeatCompose", "import Stats", prelude, "open Flapjack.Compiler.Backend", "open RepeatedData"]
        if mode == "RepeatCheckpoint":
            lines += ["theorem eq0 : WordCopy.copyPropProg src0 WordCopy.emptyEq = (tgt0, WordCopy.emptyEq) := by kernel_rfl", "#stats eq0"]
            for i in range(1, depth+1):
                lines += [f"theorem eq{i} : WordCopy.copyPropProg src{i} WordCopy.emptyEq = (tgt{i}, WordCopy.emptyEq) := seq_agreement src{i-1} src{i-1} tgt{i-1} tgt{i-1} eq{i-1} eq{i-1}", f"#stats eq{i}"]
            body = f"congrArg Prod.fst eq{depth}"
        else:
            body = "by kernel_rfl"
        lines += [f"theorem certificate : WordCopy.copyProp src{depth} = tgt{depth} := {body}", "#stats certificate", "#print axioms certificate"]
        (out / f"{mode}{depth}.lean").write_text("\n".join(lines) + "\n")
    (out / "Accepted.lean").write_text("import Checker\nexample : CheckerExperiment.check (.move 0 [(5, 1)]) = false := by kernel_rfl\n")
    (out / "Reject.lean").write_text("import Checker\nexample : CheckerExperiment.check (.move 0 [(5, 1)]) = true := by kernel_rfl\n")

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work", type=Path, default=ROOT / "work/lean-perf/certificate-bench")
    ap.add_argument("--sizes", type=int, nargs="+", default=[128, 512, 2048])
    ap.add_argument("--repeat-depth", type=int, default=10)
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=180)
    ap.add_argument("--replay", action="store_true", help="also export full dependencies and replay independently")
    args = ap.parse_args()
    if any(n < 64 or n & (n-1) for n in args.sizes) or not 1 <= args.repeat_depth <= 12 or args.trials < 1 or args.timeout < 1:
        ap.error("sizes must be powers of two >=64; repeat depth must be 1..12; trials and timeout must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory to preserve earlier measurements")
    generate(out, args.sizes, args.repeat_depth)
    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    env = os.environ.copy()
    env["LEAN_PATH"] = str(out) + ":" + base
    rows = []
    def timed(case, trial, command, expected=0):
        stem = f"{case}-{trial}"
        tf = out / (stem + ".time")
        start = time.monotonic()
        with (out / (stem + ".log")).open("w") as log:
            r = subprocess.run(["/usr/bin/time", "-v", "-o", str(tf), "timeout", str(args.timeout), *command], env=env, stdout=log, stderr=subprocess.STDOUT)
        timing = tf.read_text()
        def value(key):
            m = re.search(re.escape(key) + r":\s*([0-9.]+)", timing)
            return float(m.group(1)) if m else None
        row = dict(case=case, trial=trial, exit=r.returncode, wall=time.monotonic()-start,
                   user=value("User time (seconds)"), system=value("System time (seconds)"),
                   peak_kib=value("Maximum resident set size (kbytes)"), log=(out / (stem + ".log")).read_text())
        artifact = out / (case + ".olean")
        row["olean_bytes"] = artifact.stat().st_size if artifact.exists() else None
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps(row), flush=True)
        if r.returncode != expected:
            raise RuntimeError(f"unexpected exit for {stem}: {r.returncode}; see log")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", row["log"]):
            axioms = {a.strip() for a in closure.split(",") if a.strip()}
            if not axioms <= {"propext", "Classical.choice", "Quot.sound"}:
                raise RuntimeError(f"unexpected axiom in {stem}: {axioms}")
        if case == "Reject" and "(kernel) declaration type mismatch" not in row["log"]:
            raise RuntimeError("negative test failed for a reason other than kernel rejection")
    def build(case, trial="setup", expected=0):
        timed(case, trial, [lean, "-j1", "-o", str(out / (case + ".olean")), str(out / (case + ".lean"))], expected)
    for case in ["Stats", "Checker", "Compose", "RepeatData", "RepeatCompose", "Accepted"]:
        build(case)
    build("Reject", expected=1)
    cases = []
    for n in args.sizes:
        build(f"Data{n}")
        group = [f"{m}{n}" for m in ["Direct", "Checked", "Checkpoint", "Decide", "DecideKernel", "CheckRfl"]]
        cases += group
        for trial in range(args.trials):
            for case in group if trial % 2 == 0 else group[::-1]:
                build(case, trial)
    group = [f"{m}{args.repeat_depth}" for m in ["RepeatDirect", "RepeatCheckpoint"]]
    cases += group
    for trial in range(args.trials):
        for case in group if trial % 2 == 0 else group[::-1]:
            build(case, trial)
    if args.replay:
        export_root = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
        exporter = export_root / "bin/lean4export"
        env["LEAN_PATH"] += ":" + str(export_root / "lib/lean")
        for case in cases:
            file = out / (case + ".export.jsonl")
            with file.open("wb") as dst, (out / (case + ".export.log")).open("wb") as err:
                subprocess.run(["timeout", str(args.timeout), str(exporter), case, "--", "certificate"], env=env, stdout=dst, stderr=err, check=True)
            for trial in range(args.trials):
                timed(case + "Replay", trial, [lean, "-j1", "--run", str(out / "Replay.lean"), str(file)])
                rows[-1]["export_bytes"] = file.stat().st_size
                (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")

if __name__ == "__main__":
    main()
