import InitECandidate.Proofs.WordStages.Pass225_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle225 : Option (Spt Nat) := proposed225
def optimized225 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (225, 3, pass225_10)

theorem optimize225_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source225, oracle225) = optimized225 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source225.1 = 225 := by rfl
  have argc_eq : source225.2.1 = 3 := by rfl
  have oracle_eq : oracle225 = proposed225 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass225_0_eq, pass225_1_eq, pass225_2_eq, pass225_3_eq, pass225_4_eq, pass225_5_eq, pass225_6_eq, pass225_7_eq, pass225_8_eq, pass225_9_eq, pass225_10_eq]
  rfl
#print axioms optimize225_eq
end InitECandidate.Proofs.WordStages
