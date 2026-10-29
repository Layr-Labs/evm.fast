#!/usr/bin/env python3
"""Compose previously checked native function certificates into small chunks."""
import argparse
import pathlib
import re
import subprocess
parser = argparse.ArgumentParser()
parser.add_argument("first", type=int)
parser.add_argument("last", type=int)
args = parser.parse_args()
root = pathlib.Path(__file__).resolve().parents[1]
work = root / "work/lean-perf/backend-stages"
labels = list(range(args.first, args.last + 1))
def next_offset(n):
    source = (root / f"submission/InitECandidate/Proofs/BackendStages/Function{n}.lean").read_text()
    body = source.split(f"def function{n} (bitmapPrefix", 1)[1].split(f"theorem function{n}_eq", 1)[0]
    return int(re.search(r",\s*(\d+)\)\s*$", body).group(1))
next_offsets = {n: next_offset(n) for n in range(max(64, args.first - 1), args.last + 1)}
name = f"Chunk{args.first}_{args.last}"
lines = ["import InitECandidate.Proofs.BackendComputation"] + [f"import InitECandidate.Proofs.BackendStages.Function{n}" for n in labels]
lines += ["set_option maxRecDepth 1000000", "set_option maxHeartbeats 0", "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target", f"namespace InitECandidate.Proofs.BackendStages.{name}"]
body_names, frame_values = {}, {}
for n in labels:
    text = (root / f"submission/InitECandidate/Proofs/BackendStages/Function{n}.lean").read_text()
    match = re.search(rf"\(stackBody{n}_(\d+), (\d+),", text[text.index(f"def function{n} "):])
    body_names[n] = f"stackBody{n}_{match.group(1)}"
    frame_values[n] = match.group(2)
final = labels[-1] + 1
final_offset = next_offsets[labels[-1]]
regs = "(riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))"
lines += [f"def programs{final} : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []", f"def bodies{final} : List (Nat × StackLang.HolProg 64) := []", f"def frames{final} : List Nat := []", f"def after{final} (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix", f"theorem compiled{final}_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false {regs} programs{final} (bitmapPrefix, {final_offset}) = (bodies{final}, frames{final}, after{final} bitmapPrefix, {final_offset}) := by rfl"]
for n in reversed(labels):
    initial = 1 if n == 64 else next_offsets[n-1]
    following = next_offsets[n]
    lines += [f"def step{n} (bitmapPrefix : AppList (BitVec 64)) := (function{n} bitmapPrefix).2.2.1", f"def programs{n} := ({n}, StackAnalysis.optimized{n}.2.1, StackAnalysis.optimized{n}.2.2) :: programs{n+1}", f"def bodies{n} := ({n}, {body_names[n]}) :: bodies{n+1}", f"def frames{n} := {frame_values[n]} :: frames{n+1}", f"def after{n} (bitmapPrefix : AppList (BitVec 64)) := after{n+1} (step{n} bitmapPrefix)", f"theorem compiled{n}_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false {regs} programs{n} (bitmapPrefix, {initial}) = (bodies{n}, frames{n}, after{n} bitmapPrefix, {final_offset}) := by", f"  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false {regs} {n} StackAnalysis.optimized{n}.2.1 StackAnalysis.optimized{n}.2.2 programs{n+1} (bitmapPrefix, {initial}) (step{n} bitmapPrefix, {following}) (after{n+1} (step{n} bitmapPrefix), {final_offset}) {body_names[n]} {frame_values[n]} bodies{n+1} frames{n+1} (function{n}_eq bitmapPrefix) (compiled{n+1}_eq (step{n} bitmapPrefix))"]
first_offset = 1 if labels[0] == 64 else next_offsets[labels[0]-1]
lines += [f"def programs := programs{labels[0]}", f"def bodies := bodies{labels[0]}", f"def frames := frames{labels[0]}", f"def after := after{labels[0]}", f"def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, {final_offset})", f"theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false {regs} programs (bitmapPrefix, {first_offset}) = result bitmapPrefix := compiled{labels[0]}_eq bitmapPrefix", "#print axioms compiled_eq", f"end InitECandidate.Proofs.BackendStages.{name}"]
source = root / f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
source.write_text("\n".join(lines) + "\n")
output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
result = subprocess.run(["rtk", "proxy", "timeout", "900", "lake", "env", "lean", "-R", "submission", "-o", str(output), str(source)], cwd=root, text=True, capture_output=True)
(work / f"{name}.check.log").write_text(result.stdout + result.stderr)
print(result.stdout + result.stderr, end="")
raise SystemExit(result.returncode)
