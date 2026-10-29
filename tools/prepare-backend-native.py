#!/usr/bin/env python3
"""Compose checked native chunks and exact top-level stubs/config construction."""
import argparse
import pathlib
import re
import subprocess
import time
import json
root = pathlib.Path(__file__).resolve().parents[1]
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
last_label = 63 + function_count
parser = argparse.ArgumentParser()
parser.add_argument("--first", type=int, default=64)
parser.add_argument("--last", type=int, default=last_label)
args = parser.parse_args()
work = root / "work/lean-perf/backend-stages"
def next_offset(n):
    source = (root / f"submission/InitECandidate/Proofs/BackendStages/Function{n}.lean").read_text()
    body = source.split(f"def function{n} (bitmapPrefix", 1)[1].split(f"theorem function{n}_eq", 1)[0]
    return int(re.search(r",\s*(\d+)\)\s*$", body).group(1))
next_offsets = {n: next_offset(n) for n in range(max(64, args.first - 1), args.last + 1)}
chunks = [(n, min(n+15, args.last)) for n in range(args.first, args.last+1, 16)]
name = "Native" if (args.first, args.last) == (64,last_label) else f"Native{args.first}_{args.last}"
lines = ["import InitECandidate.Proofs.BackendComputation"] + [f"import InitECandidate.Proofs.BackendStages.Chunk{a}_{b}" for a,b in chunks]
lines += ["set_option maxRecDepth 1000000", "set_option maxHeartbeats 0", "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target", f"namespace InitECandidate.Proofs.BackendStages.{name}"]
final_offset = next_offsets[args.last]
count = len(chunks)
lines += [f"def programs{count} : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []", f"def bodies{count} : List (Nat × StackLang.HolProg 64) := []", f"def frames{count} : List Nat := []", f"def after{count} (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix", f"theorem compiled{count}_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs{count} (bitmapPrefix, {final_offset}) = (bodies{count}, frames{count}, after{count} bitmapPrefix, {final_offset}) := by rfl"]
for index in reversed(range(count)):
    a,b = chunks[index]
    chunk = f"Chunk{a}_{b}"
    initial = 1 if a == 64 else next_offsets[a-1]
    lines += [f"def programs{index} := {chunk}.programs ++ programs{index+1}", f"def bodies{index} := {chunk}.bodies ++ bodies{index+1}", f"def frames{index} := {chunk}.frames ++ frames{index+1}", f"def after{index} (bitmapPrefix : AppList (BitVec 64)) := after{index+1} ({chunk}.after bitmapPrefix)"]
    lines += [f"theorem compiled{index}_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs{index} (bitmapPrefix, {initial}) = (bodies{index}, frames{index}, after{index} bitmapPrefix, {final_offset}) := by", f"  unfold programs{index}", "  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]", f"  rw [{chunk}.compiled_eq]", f"  dsimp only [{chunk}.result]", f"  rw [compiled{index+1}_eq]", "  rfl"]
programs = ", ".join(f"StackAnalysis.optimized{n}" for n in range(args.first,args.last+1))
lines += [f"theorem programs_eq : programs0 = [{programs}] := by rfl", "#print axioms compiled0_eq", "#print axioms programs_eq"]
if args.first == 64:
    lines += ["def bitmaps : List (BitVec 64) := appListAppend (after0 (.list [4]))", f"def wordConfig : WordToStack.Native.Config := {{ bitmapsLength := {final_offset}, stackFrameSize := sptFromAList ((bodies0.zip frames0).map (fun ((identifier, _), frame) => (identifier, frame))) }}", "def stack : List (Nat × StackLang.HolProg 64) := (raiseStubLocation, WordToStack.Native.raiseStubNative false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: (storeConstsStubLocation, WordToStack.Native.storeConstsStubNative (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: bodies0", "theorem native_eq : WordToStack.Native.compileNative riscvConfig false programs0 = (bitmaps, wordConfig, 0 :: frames0, stack) := by", "  exact InitECandidate.Proofs.BackendComputation.compileNative_of_bodies riscvConfig false programs0 bodies0 frames0 _ (compiled0_eq (.list [4]))", "#print axioms native_eq"]
lines.append(f"end InitECandidate.Proofs.BackendStages.{name}")
source = root / f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
source.write_text("\n".join(lines)+"\n")
output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
started = time.monotonic()
result = subprocess.run(["rtk", "proxy", "timeout", "900", "lake", "env", "lean", "-R", "submission", "-o", str(output), str(source)], cwd=root, text=True, capture_output=True)
(work / f"{name}.check.log").write_text(result.stdout+result.stderr)
(work / f"{name}.check.json").write_text(json.dumps({"first":args.first,"last":args.last,"returncode":result.returncode,"seconds":time.monotonic()-started}))
print(result.stdout+result.stderr, end="")
raise SystemExit(result.returncode)
