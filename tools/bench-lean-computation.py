#!/usr/bin/env python3
"""Measure kernel-checked computation on scaled fixtures, without native_decide.

Both variants import the same modules. The shortcut variant enables a scoped
simproc whose equality is checked by Lean's kernel. Each case runs sequentially
on one logical CPU with a timeout; failed/timed-out cases are never successes.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import shutil
import re
import time

ROOT = Path(__file__).resolve().parents[1]
HEADER = """import InitECandidate.Proofs.KernelComputation
import InitE.MetadataComputation
import InitE.NameComputation
import Flapjack.Pancake.PanLang
set_option cbv.maxSteps 10000000
set_option maxRecDepth 100000
set_option maxHeartbeats 0
"""


def fixture(family, size, shortcut, depth=32, expected=None, batch=1, elab_async=True):
    text = HEADER + f"set_option Elab.async {str(elab_async).lower()}\n"
    if shortcut:
        text += "open scoped InitECandidate.Proofs.KernelComputation\n"
    if family == "compiler":
        declarations = [
            '.function { name := "%s", inline := false, exported := false, '
            'params := [], body := .return (.const %d), returnShape := .one }'
            % ("main" if i == 0 else f"f{i}", i) for i in range(size)]
        text += "open Flapjack\n"
        text += "def ast : List (Decl (BitVec 64)) := [" + ", ".join(declarations) + "]\n"
        text = "import InitECandidate.Proofs.CompilerComputation\n" + text
        if expected is None:
            return text + '#eval IO.println ("expected:" ++ reprStr ((RiscV.NativeSource.compileDeclarations ast).map (fun out => out.1.length)))\n'
        if shortcut:
            text += "open scoped InitECandidate.Proofs.CompilerComputation\n"
        text += "theorem measured : (RiscV.NativeSource.compileDeclarations ast).map (fun out => out.1.length) = " + expected + " := by\n"
    elif family in ("metadata", "distinct"):
        if family == "distinct":
            text += "open scoped InitE.MetadataComputation\n"
            if shortcut:
                text += "open scoped InitE.NameComputation\n"
        if shortcut:
            text += "open scoped InitE.MetadataComputation\n"
        expression = ".const 0"
        for _ in range(depth):
            expression = ".op .add [" + expression + ", .const 1]"
        declarations = [
            '.function { name := "f%d", inline := false, exported := false, '
            'params := [], body := .return (%s), returnShape := .one }' % (i, expression.replace(".const 0", f".const {i}"))
            for i in range(size)]
        if family == "distinct":
            declarations = [d.replace('name := "f', 'name := "function_name_for_distinctness_') for d in declarations]
        text += "open Flapjack Flapjack.Pancake.PanLang\n"
        text += "def ast : List (Decl (BitVec 64)) := [" + ", ".join(declarations) + "]\n"
        names = ", ".join('Flapjack.Basis.Pure.MlString.ofString "f%d"' % i for i in range(size))
        if family == "distinct":
            text += "theorem measured : ((functionsHOL (ast.map declToHOL)).map Prod.fst).Nodup := by\n"
            if shortcut:
                text += "  rw [InitE.MetadataComputation.functionNames_toHOL]\n"
                text += "  apply InitE.MetadataComputation.nodup_of_sorted_fingerprints\n"
            return text + "  decide_cbv\n#print axioms measured\n"
        else:
            text += "theorem measured : (functionsHOL (ast.map declToHOL)).map Prod.fst = [" + names + "] := by\n"
            if shortcut:
                text += "  rw [InitE.MetadataComputation.functionNames_toHOL]\n"
    elif family == "utf8":
        source = json.dumps("a" * size)
        expected = "[" + ", ".join(["'a'"] * size) + "]"
        text += f"theorem measured : Flapjack.Parser.utf8Bytes {source} = {expected} := by\n"
    else:
        source = "".join(f"fun 1 f{i}() {{ return {i}; }}\n" for i in range(size))
        declarations = [
            '.function { name := "f%d", inline := false, exported := false, '
            'params := [], body := .return (.const %d), returnShape := .one }' % (i, i)
            for i in range(size)
        ]
        text += "open Flapjack\n"
        text += "def source : String := " + json.dumps(source) + "\n"
        if family == "lexer":
            text += "theorem measured : (Parser.safePancakeLex source).isOk = true := by\n"
        else:
            text += "def expected : List (Decl (BitVec 64)) := [" + ", ".join(declarations) + "]\n"
            text += "theorem measured : Parser.parseTopDecs (BitVec.ofInt 64) source = .ok expected := by\n"
    prefix, declaration = text.split("theorem measured :", 1)
    suffix = "  conv => lhs; cbv\n  try rfl\n"
    names = ["measured" if batch == 1 else f"measured_{i}" for i in range(batch)]
    return prefix + "\n".join(f"theorem {name} :" + declaration + suffix for name in names) +         "\n".join(f"#print axioms {name}" for name in names) + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--family", choices=["utf8", "lexer", "parser", "metadata", "distinct", "compiler"], default="utf8")
    parser.add_argument("--sizes", type=int, nargs="+", default=[256, 1024, 4096, 16384])
    parser.add_argument("--batch", type=int, default=1, help="independent proofs of each fixture")
    parser.add_argument("--elab-async", choices=["yes", "no"], default="yes")
    parser.add_argument("--setup", type=Path, help="Lean import-map setup file for compiler fixtures")
    parser.add_argument("--depth", type=int, default=32, help="expression depth for metadata fixtures")
    parser.add_argument("--timeout", type=int, default=60)
    parser.add_argument("--variants", choices=["both", "baseline", "shortcut"], default="both")
    parser.add_argument("--output", type=Path, default=ROOT / "work/lean-perf" / time.strftime("%Y%m%d-%H%M%S"))
    args = parser.parse_args()
    if args.timeout <= 0 or args.depth < 0 or args.batch <= 0 or any(n <= 0 for n in args.sizes):
        parser.error("sizes and timeout must be positive")
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    lean_env = json.loads(subprocess.check_output(
        ["lake", "env", "python3", "-c", "import json, os; print(json.dumps(dict(os.environ)))"],
        cwd=ROOT, text=True))
    lean_executable = shutil.which("lean", path=lean_env["PATH"])
    if lean_executable is None:
        raise SystemExit("Lean executable is not available")
    cpu = min(os.sched_getaffinity(0))
    results = {"family": args.family, "cpu": cpu, "timeout_seconds": args.timeout, "expression_depth": args.depth, "batch": args.batch, "elab_async": args.elab_async,
               "lean_toolchain": (ROOT / "lean-toolchain").read_text().strip(), "cases": []}
    variants = {"both": (False, True), "baseline": (False,), "shortcut": (True,)}[args.variants]
    setup_args = ["--setup", str(args.setup.resolve())] if args.setup else []
    for size in args.sizes:
        expected = None
        if args.family == "compiler":
            generator = output / f"compiler_expected_{size}.lean"
            generator.write_text(fixture("compiler", size, False, args.depth))
            generated = subprocess.run(
                ["timeout", "--kill-after=5s", "30s", lean_executable, str(generator), *setup_args],
                cwd=ROOT, env=lean_env, text=True, capture_output=True)
            (output / f"compiler_expected_{size}.log").write_text(generated.stdout + generated.stderr)
            match = re.search(r"^expected:(some [0-9]+|none)$", generated.stdout, re.MULTILINE)
            if generated.returncode or match is None:
                raise SystemExit(f"Could not generate compiler reference for size {size}; see its log")
            expected = match.group(1)
        for shortcut in variants:
            label = f"{args.family}_{'shortcut' if shortcut else 'baseline'}_{size}"
            lean = output / (label + ".lean")
            log = output / (label + ".log")
            stats = output / (label + ".time")
            lean.write_text(fixture(args.family, size, shortcut, args.depth, expected, args.batch, args.elab_async == "yes"))
            command = ["/usr/bin/time", "-f", "%e %U %S %M", "-o", str(stats),
                       "timeout", "--kill-after=5s", str(args.timeout) + "s",
                       "taskset", "-c", str(cpu), lean_executable, str(lean), *setup_args]
            print(f"Running {label}", flush=True)
            started = time.monotonic()
            with log.open("w") as handle:
                completed = subprocess.run(command, cwd=ROOT, env=lean_env, stdout=handle, stderr=subprocess.STDOUT)
            elapsed = time.monotonic() - started
            fields = stats.read_text().splitlines()[-1].split()
            case = {"name": label, "size": size, "shortcut": shortcut,
                    "exit_code": completed.returncode, "wall_seconds": round(elapsed, 3),
                    "user_seconds": float(fields[1]), "system_seconds": float(fields[2]),
                    "peak_rss_kib": int(fields[3]), "log": log.name,
                    "status": "passed" if completed.returncode == 0 else
                              "timed_out" if completed.returncode in (124, 137) else "failed"}
            if completed.returncode == 0:
                axiom_lines = [line for line in log.read_text().splitlines() if "depends on axioms:" in line]
                case["axioms"] = axiom_lines
                if len(axiom_lines) != args.batch or any(
                    name.strip() not in {"propext", "Classical.choice", "Quot.sound"}
                    for line in axiom_lines
                    for name in line.split("depends on axioms: [", 1)[1].rstrip("]").split(",")
                    if name.strip()
                ):
                    case["status"] = "unexpected_axioms"
            results["cases"].append(case)
            (output / "results.json").write_text(json.dumps(results, indent=2) + "\n")
            print(f"{case['status']}: {elapsed:.2f}s, CPU {case['user_seconds'] + case['system_seconds']:.2f}s, "
                  f"peak RSS {case['peak_rss_kib'] / 1024:.1f} MiB", flush=True)
    print(f"Results: {output / 'results.json'}", flush=True)
    return int(any(case["status"] != "passed" for case in results["cases"]))


if __name__ == "__main__":
    raise SystemExit(main())
