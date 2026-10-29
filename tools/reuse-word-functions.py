#!/usr/bin/env python3
"""Restore shared certificates for duplicate guest functions after regeneration.

This only proposes Lean source. Lean and comparator kernel replay still check
all equations. Existing data declarations and public theorem statements stay fixed.
"""
import argparse
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
PAIRS = {225: (649, 2), 226: (650, 10),
         373: (377, 3), 375: (377, 3), 376: (377, 3), 378: (377, 3)}
COMPLETE_TEMPLATE = """import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact649.Pass10
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact649
theorem fullCompile_expanded (ra : WordToWord.RegAllocFn)
    {width : Nat} [NeZero width] (two : Bool) (regs alg : Nat)
    (c : AsmConfigExact width) (entry : Nat × Nat × WordLangProgHOL (BitVec width))
    (oracle : Option (Spt Nat)) :
    WordToWord.fullCompileSingleWith ra two regs alg c (entry, oracle) =
      (entry.1, entry.2.1,
       let p0 := WordSimp.compileExp entry.2.2
       let p1 := WordInst.instSelectExecutable c (maxVarHOL p0 + 1) p0
       let p2 := WordAlloc.fullSsaCcTrans entry.2.1 p1
       let p3 := WordAlloc.removeDeadProg p2
       let p4 := WordCse.wordCommonSubexpElim p3
       let p5 := WordCopy.copyProp p4
       let p6 := WordInst.threeToTwoRegProg two p5
       let p7 := WordUnreach.removeUnreach p6
       let p8 := WordAlloc.removeDeadProg p7
       let p9 := WordToWord.wordAllocWith ra entry.1 c alg regs p8 oracle
       WordRemove.removeMustTerminate p9) := by
  rcases entry with ⟨name, argc, p⟩
  kernel_rfl

#print axioms fullCompile_expanded
/-- The common prefix is certified once; every function name reuses the opaque equation. -/
theorem preallocated_eq :
    (let p0 := WordSimp.compileExp source649.2.2
     let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0
     let p2 := WordAlloc.fullSsaCcTrans 2 p1
     let p3 := WordAlloc.removeDeadProg p2
     let p4 := WordCse.wordCommonSubexpElim p3
     let p5 := WordCopy.copyProp p4
     let p6 := WordInst.threeToTwoRegProg riscvConfig.twoRegArith p5
     let p7 := WordUnreach.removeUnreach p6
     WordAlloc.removeDeadProg p7) = pass8 := by
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl

#print axioms preallocated_eq
/-- Check the common pipeline once, for every function name using this valid oracle. -/
theorem optimize_shared (name : Nat) : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig ((name, 2, source649.2.2), oracle) = (name, 2, pass10) := by
  rw [fullCompile_expanded]
  dsimp only
  have alg_eq : RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg = 3 := by rfl
  rw [alg_eq, preallocated_eq]
  rw [InitECandidate.Proofs.WordStages.wordAllocWith_of_oracle RegAlloc.regAllocExecutable name 3
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) riscvConfig pass8 pass10 oracle
    oracle_checked]
  kernel_rfl

#print axioms optimize_shared
theorem optimize649_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source649, oracle) = (649, 2, pass10) := by
  exact optimize_shared 649
#print axioms optimize649_eq
end InitECandidate.Proofs.SmallStages.Compact649
"""

def source_body(label):
    text = (ROOT / f"submission/InitECandidate/Proofs/WordStages/Source{label}.lean").read_text()
    match = re.search(rf"def source{label}.*?:=\s*\({label},\s*(\d+),\s*(.*)\)\s*end", text, re.S)
    if not match:
        raise RuntimeError(f"Cannot identify source tuple {label}")
    return int(match[1]), re.sub(r"\s+", "", match[2])

def prepare(label):
    shared, argc = PAIRS[label]
    if source_body(label) != source_body(shared) or source_body(label)[0] != argc:
        raise RuntimeError(f"Source bodies {label}/{shared} no longer agree; recheck reuse before regeneration")
    compact = ROOT / f"submission/InitECandidate/Proofs/SmallStages/Compact{shared}"
    complete = COMPLETE_TEMPLATE.replace("649", str(shared))
    if argc != 2:
        complete = complete.replace("fullSsaCcTrans 2 p1", f"fullSsaCcTrans {argc} p1")
        complete = complete.replace("(name, 2,", f"(name, {argc},")
        complete = complete.replace(f"({shared}, 2,", f"({shared}, {argc},")
    (compact / "Complete.lean").write_text(complete)
    pass_file = compact / "Pass10.lean"
    text = pass_file.read_text().replace("import InitECandidate.Proofs.CompactComputation", "import InitECandidate.Proofs.WordStages.OracleReuse", 1)
    if "import InitECandidate.Proofs.WordStages.OracleReuse" not in text:
        text = "import InitECandidate.Proofs.WordStages.OracleReuse\n" + text
    # Preserve every declaration before the first certificate, including imports/settings.
    first = text.index("theorem ")
    comment = text.rfind("/--", 0, first)
    prefix = text[:comment if comment >= 0 else first]
    text = prefix + f"""/-- Cache the checked oracle result once for matching guest functions. -/
theorem oracle_checked : WordAlloc.oracleColourOk
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) oracle
    (WordAlloc.getClashTree pass8 []) pass8 (WordAlloc.getForced riscvConfig pass8 []) =
    some pass10 := by
  kernel_rfl

theorem pass10_eq : WordRemove.removeMustTerminate (WordToWord.wordAllocWith RegAlloc.regAllocExecutable {shared} riscvConfig 3 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass8 oracle) = pass10 := by
  rw [InitECandidate.Proofs.WordStages.wordAllocWith_of_oracle RegAlloc.regAllocExecutable {shared} 3
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) riscvConfig pass8 pass10 oracle
    oracle_checked]
  kernel_rfl
#print axioms pass10_eq
end InitECandidate.Proofs.SmallStages.Compact{shared}
"""
    pass_file.write_text(text)
    optimize = ROOT / f"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean"
    text = optimize.read_text()
    imp = f"import InitECandidate.Proofs.SmallStages.Compact{shared}.Complete\n"
    if imp not in text:
        text = imp + text
    start = text.index(" := by\n", text.index(f"theorem optimize{label}_eq")) + len(" := by\n")
    end = text.index(f"#print axioms optimize{label}_eq", start)
    optimize.write_text(text[:start] + f"  exact InitECandidate.Proofs.SmallStages.Compact{shared}.optimize_shared {label}\n" + text[end:])
    print(f"Prepared checked-proof reuse for {label}/{shared}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("labels", type=int, nargs="*")
    for_label_help = ", ".join(map(str, PAIRS))
    args = parser.parse_args()
    for label in args.labels or PAIRS:
        if label not in PAIRS:
            parser.error(f"Supported labels: {for_label_help}")
        prepare(label)
