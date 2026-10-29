#!/usr/bin/env python3
"""Propose and check compact small optimizer certificates without importing proofs."""
import argparse
import concurrent.futures
from pathlib import Path
import re
import subprocess
import time

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("labels", nargs="*", type=int)
parser.add_argument("--seconds", type=int, default=180)
parser.add_argument("--prepare-only", action="store_true")
parser.add_argument("--prepare-workers", type=int, default=4, choices=range(1,5), help="Parallel literal/candidate workers; only used with --prepare-only")
parser.add_argument("--list", action="store_true", help="Print selected labels without generation or builds")
parser.add_argument("--missing-small", action="store_true", help="Select missing monolithic optimizers, excluding staged/large labels")
args = parser.parse_args()
root = Path(__file__).resolve().parents[1]
logs = root / "work/lean-perf/small-optimizer"
logs.mkdir(parents=True, exist_ok=True)

def eligible(label):
    text = (root / f"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean").read_text()
    return label not in [64,240,713] and not list((root / "submission/InitECandidate/Proofs/WordStages").glob(f"Pass{label}_*.lean")) and not re.search(r"(?:Pass[0-9]|DeadStages|ClashStages|Stage[0-9])", text)

labels = args.labels
if args.missing_small:
    labels += sorted([int(p.stem[8:]) for p in (root / "submission/InitECandidate/Proofs/WordStages").glob("Optimize*.lean")
        if not (root / f".lake/build/lib/lean/InitECandidate/Proofs/WordStages/{p.stem}.olean").exists() and eligible(int(p.stem[8:])) and not (root / f".lake/build/lib/lean/InitECandidate/Proofs/SmallStages/Compact{int(p.stem[8:])}/Exact.olean").exists()])
labels = list(dict.fromkeys(labels))
if not labels:
    parser.error("Supply labels or --missing-small")
for label in labels:
    if not eligible(label):
        parser.error(f"Label {label} is excluded: large or already staged")

if args.list:
    print(" ".join(map(str, labels)))
    raise SystemExit(0)

def run(name, arguments):
    command = ["rtk", "proxy", "/usr/bin/time", "-v", "timeout", "--kill-after=5s", f"{args.seconds}s", "taskset", "-c", "0-3"] + arguments
    with (logs / f"{name}.log").open("w") as log, (logs / f"{name}.time").open("w") as timing:
        result = subprocess.run(command, cwd=root, stdout=log, stderr=timing)
    if result.returncode:
        raise RuntimeError(f"{name}: exit {result.returncode}; see {logs / (name + '.log')}")

def compile_module(module, name):
    relative = module.replace(".", "/")
    output = root / f".lake/build/lib/lean/{relative}.olean"
    output.parent.mkdir(parents=True, exist_ok=True)
    source_root = "submission" if module.startswith("InitECandidate.") else "."
    run(name, ["lake", "env", "lean", "-R", source_root, "-o", str(output), str(Path(source_root) / (relative + ".lean"))])

# Generic generator is compiled without an optimizer or proof dependency.
compile_module("Tools.GenSmallStages", "compact-generator-build")
def process(label):
    started = time.monotonic()
    original = (root / f"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean").read_text()
    marker = f"theorem optimize{label}_eq :"
    if original.count(marker) != 1:
        raise RuntimeError(f"Unexpected optimizer structure {label}")
    # Copy all original literals, but never the original proof or predecessor imports.
    literals = original.split(marker)[0]
    literals = "\n".join(line for line in literals.splitlines() if not line.startswith("import ")) + "\n"
    literals = literals.replace("namespace InitECandidate.Proofs.WordStages", f"open InitECandidate.Proofs.WordStages\nnamespace InitECandidate.Proofs.SmallStages.Oracles{label}")
    literals = literals.replace("InitECandidate.Proofs.CompilerComputation", "InitECandidate.Proofs.SmallOptimizerComputation")
    literals = f"import InitECandidate.Proofs.SmallOptimizerComputation\nimport InitECandidate.Proofs.WordStages.Source{label}\nset_option autoImplicit false\n" + literals + f"end InitECandidate.Proofs.SmallStages.Oracles{label}\n"
    oracle_file = root / f"submission/InitECandidate/Proofs/SmallStages/Oracles{label}.lean"
    oracle_file.write_text(literals)
    compile_module(f"InitECandidate.Proofs.SmallStages.Oracles{label}", f"compact{label}-original-literals")
    driver = root / f"Tools/InitialSubmissionGenerators/SmallStages/Generate{label}.lean"
    driver.write_text(f"import Tools.GenSmallStages\nimport InitECandidate.Proofs.SmallStages.Oracles{label}\nset_option autoImplicit false\nrun_elab do\n  let env ← Lean.getEnv\n  liftM <| InitE.GenSmallStages.prepare env {label} InitECandidate.Proofs.WordStages.source{label}.2.1 InitECandidate.Proofs.WordStages.source{label}.2.2 InitECandidate.Proofs.SmallStages.Oracles{label}.oracle{label}\n")
    run(f"compact{label}-generation", ["lake", "env", "lean", str(driver.relative_to(root))])
    directory = root / f"submission/InitECandidate/Proofs/SmallStages/Compact{label}"
    # Compose with a checked expansion of the actual fullCompile parameters.
    template = (root / "submission/InitECandidate/Proofs/SmallStages/Compact163/Complete.lean").read_text()
    complete = template.replace("163", str(label))
    # Source arity is certified by rfl, independent of native proposal generation.
    argc = re.search(rf"def optimized{label}[^\n]*:=\s*\(\d+,\s*(\d+),", original)
    if not argc:
        raise RuntimeError(f"Cannot read original output arity {label}")
    complete = complete.replace("(163, 3, pass10)", f"({label}, {argc[1]}, pass10)") if label == 163 else complete.replace(f"({label}, 3, pass10)", f"({label}, {argc[1]}, pass10)")
    complete = complete.replace(f"source{label}.2.1 = 3", f"source{label}.2.1 = {argc[1]}")
    (directory / "Complete.lean").write_text(complete)
    original_goal = original.split(marker)[1].split(" := by")[0]
    exact = ("import InitECandidate.Proofs.CompactComputation\n"
        f"import InitECandidate.Proofs.SmallStages.Compact{label}.Complete\n"
        f"import InitECandidate.Proofs.SmallStages.Oracles{label}\n"
        "set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n"
        "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n"
        f"open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles{label}\n"
        f"namespace InitECandidate.Proofs.SmallStages.Compact{label}\n"
        f"theorem optimize{label}_exact :{original_goal} := by\n"
        "  exact optimize" + str(label) + "_eq.trans (by kernel_rfl)\n"
        f"#print axioms optimize{label}_exact\nend InitECandidate.Proofs.SmallStages.Compact{label}\n")
    (directory / "Exact.lean").write_text(exact)
    if args.prepare_only:
        print(f"Prepared {label}; {time.monotonic() - started:.2f}s", flush=True)
        return
    compile_module(f"InitECandidate.Proofs.SmallStages.Compact{label}.Data", f"compact{label}-data")
    def check(index):
        compile_module(f"InitECandidate.Proofs.SmallStages.Compact{label}.Pass{index}", f"compact{label}-pass{index}")
        print(f"{label}: pass {index} checked", flush=True)
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
        list(pool.map(check, [2,3,4,5,6,7,8,10]))
    compile_module(f"InitECandidate.Proofs.SmallStages.Compact{label}.Complete", f"compact{label}-complete")
    compile_module(f"InitECandidate.Proofs.SmallStages.Compact{label}.Exact", f"compact{label}-exact")
    print(f"{label}: exact original equality checked; end-to-end {time.monotonic() - started:.2f}s", flush=True)

if args.prepare_only:
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.prepare_workers) as pool:
        list(pool.map(process, labels))
else:
    for label in labels:
        process(label)

# Regeneration must preserve the checked common-pipeline certificates.
if set(labels) & {225, 226, 649, 650}:
    subprocess.run(["python3", str(root / "tools/reuse-word-functions.py"), "225", "226"],
                   cwd=root, check=True)
if set(labels) & {373, 375, 376, 377, 378}:
    subprocess.run(["python3", str(root / "tools/reuse-word-functions.py"),
                    "373", "375", "376", "378"], cwd=root, check=True)
