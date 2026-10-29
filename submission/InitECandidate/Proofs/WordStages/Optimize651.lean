import InitECandidate.Proofs.WordStages.Pass651_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle651 : Option (Spt Nat) := proposed651
def optimized651 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (651, 10, pass651_10)

theorem optimize651_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source651, oracle651) = optimized651 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source651.1 = 651 := by rfl
  have argc_eq : source651.2.1 = 10 := by rfl
  have oracle_eq : oracle651 = proposed651 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass651_0_eq, pass651_1_eq, pass651_2_eq, pass651_3_eq, pass651_4_eq, pass651_5_eq, pass651_6_eq, pass651_7_eq, pass651_8_eq, pass651_9_eq, pass651_10_eq]
  rfl
#print axioms optimize651_eq
end InitECandidate.Proofs.WordStages
