import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact638.Pass2
import InitECandidate.Proofs.SmallStages.Compact638.Pass3
import InitECandidate.Proofs.SmallStages.Compact638.Pass4
import InitECandidate.Proofs.SmallStages.Compact638.Pass5
import InitECandidate.Proofs.SmallStages.Compact638.Pass6
import InitECandidate.Proofs.SmallStages.Compact638.Pass7
import InitECandidate.Proofs.SmallStages.Compact638.Pass8
import InitECandidate.Proofs.SmallStages.Compact638.Pass10
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact638
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
theorem optimize638_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source638, oracle) = (638, 6, pass10) := by
  rw [fullCompile_expanded]
  dsimp only
  have name_eq : source638.1 = 638 := by rfl
  have argc_eq : source638.2.1 = 6 := by rfl
  have alg_eq : RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg = 3 := by rfl
  rw [name_eq, argc_eq, alg_eq, pass2_eq, pass3_eq,
      pass4_eq, pass5_eq, pass6_eq, pass7_eq, pass8_eq, pass10_eq]
  try rfl
#print axioms optimize638_eq
end InitECandidate.Proofs.SmallStages.Compact638
