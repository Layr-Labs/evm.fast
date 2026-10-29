import InitECandidate.Proofs.WordStages.Pass868_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle868 : Option (Spt Nat) := proposed868
def optimized868 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (868, 3, pass868_10)

theorem optimize868_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source868, oracle868) = optimized868 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source868.1 = 868 := by rfl
  have argc_eq : source868.2.1 = 3 := by rfl
  have oracle_eq : oracle868 = proposed868 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass868_0_eq, pass868_1_eq, pass868_2_eq, pass868_3_eq, pass868_4_eq, pass868_5_eq, pass868_6_eq, pass868_7_eq, pass868_8_eq, pass868_9_eq, pass868_10_eq]
  rfl
#print axioms optimize868_eq
end InitECandidate.Proofs.WordStages
