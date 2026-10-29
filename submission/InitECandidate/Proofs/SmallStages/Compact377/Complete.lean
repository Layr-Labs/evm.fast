import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact377.Pass10
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact377
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
    (let p0 := WordSimp.compileExp source377.2.2
     let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0
     let p2 := WordAlloc.fullSsaCcTrans 3 p1
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
    riscvConfig ((name, 3, source377.2.2), oracle) = (name, 3, pass10) := by
  rw [fullCompile_expanded]
  dsimp only
  have alg_eq : RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg = 3 := by rfl
  rw [alg_eq, preallocated_eq]
  rw [InitECandidate.Proofs.WordStages.wordAllocWith_of_oracle RegAlloc.regAllocExecutable name 3
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) riscvConfig pass8 pass10 oracle
    oracle_checked]
  kernel_rfl

#print axioms optimize_shared
theorem optimize377_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source377, oracle) = (377, 3, pass10) := by
  exact optimize_shared 377
#print axioms optimize377_eq
end InitECandidate.Proofs.SmallStages.Compact377
