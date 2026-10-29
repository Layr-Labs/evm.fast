import InitECandidate.Proofs.WordStages.Pass645_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle645 : Option (Spt Nat) := proposed645
def optimized645 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (645, 9, pass645_10)

theorem optimize645_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source645, oracle645) = optimized645 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source645.1 = 645 := by rfl
  have argc_eq : source645.2.1 = 9 := by rfl
  have oracle_eq : oracle645 = proposed645 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass645_0_eq, pass645_1_eq, pass645_2_eq, pass645_3_eq, pass645_4_eq, pass645_5_eq, pass645_6_eq, pass645_7_eq, pass645_8_eq, pass645_9_eq, pass645_10_eq]
  rfl
#print axioms optimize645_eq
end InitECandidate.Proofs.WordStages
