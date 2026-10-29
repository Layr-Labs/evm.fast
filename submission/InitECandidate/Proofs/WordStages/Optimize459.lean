import InitECandidate.Proofs.WordStages.Pass459_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle459 : Option (Spt Nat) := proposed459
def optimized459 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (459, 5, pass459_10)

theorem optimize459_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source459, oracle459) = optimized459 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source459.1 = 459 := by rfl
  have argc_eq : source459.2.1 = 5 := by rfl
  have oracle_eq : oracle459 = proposed459 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass459_0_eq, pass459_1_eq, pass459_2_eq, pass459_3_eq, pass459_4_eq, pass459_5_eq, pass459_6_eq, pass459_7_eq, pass459_8_eq, pass459_9_eq, pass459_10_eq]
  rfl
#print axioms optimize459_eq
end InitECandidate.Proofs.WordStages
