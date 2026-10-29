import InitECandidate.Proofs.WordStages.Pass207_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle207 : Option (Spt Nat) := proposed207
def optimized207 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (207, 5, pass207_10)

theorem optimize207_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source207, oracle207) = optimized207 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source207.1 = 207 := by rfl
  have argc_eq : source207.2.1 = 5 := by rfl
  have oracle_eq : oracle207 = proposed207 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass207_0_eq, pass207_1_eq, pass207_2_eq, pass207_3_eq, pass207_4_eq, pass207_5_eq, pass207_6_eq, pass207_7_eq, pass207_8_eq, pass207_9_eq, pass207_10_eq]
  rfl
#print axioms optimize207_eq
end InitECandidate.Proofs.WordStages
