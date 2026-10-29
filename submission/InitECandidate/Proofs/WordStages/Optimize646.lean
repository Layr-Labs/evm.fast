import InitECandidate.Proofs.WordStages.Pass646_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle646 : Option (Spt Nat) := proposed646
def optimized646 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (646, 5, pass646_10)

theorem optimize646_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source646, oracle646) = optimized646 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source646.1 = 646 := by rfl
  have argc_eq : source646.2.1 = 5 := by rfl
  have oracle_eq : oracle646 = proposed646 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass646_0_eq, pass646_1_eq, pass646_2_eq, pass646_3_eq, pass646_4_eq, pass646_5_eq, pass646_6_eq, pass646_7_eq, pass646_8_eq, pass646_9_eq, pass646_10_eq]
  rfl
#print axioms optimize646_eq
end InitECandidate.Proofs.WordStages
