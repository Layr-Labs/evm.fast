import InitECandidate.Proofs.WordStages.Pass79_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle79 : Option (Spt Nat) := proposed79
def optimized79 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (79, 4, pass79_10)

theorem optimize79_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source79, oracle79) = optimized79 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source79.1 = 79 := by rfl
  have argc_eq : source79.2.1 = 4 := by rfl
  have oracle_eq : oracle79 = proposed79 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass79_0_eq, pass79_1_eq, pass79_2_eq, pass79_3_eq, pass79_4_eq, pass79_5_eq, pass79_6_eq, pass79_7_eq, pass79_8_eq, pass79_9_eq, pass79_10_eq]
  rfl
#print axioms optimize79_eq
end InitECandidate.Proofs.WordStages
