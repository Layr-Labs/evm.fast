import InitECandidate.Proofs.WordStages.Pass621_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle621 : Option (Spt Nat) := proposed621
def optimized621 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (621, 1, pass621_10)

theorem optimize621_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source621, oracle621) = optimized621 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source621.1 = 621 := by rfl
  have argc_eq : source621.2.1 = 1 := by rfl
  have oracle_eq : oracle621 = proposed621 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass621_0_eq, pass621_1_eq, pass621_2_eq, pass621_3_eq, pass621_4_eq, pass621_5_eq, pass621_6_eq, pass621_7_eq, pass621_8_eq, pass621_9_eq, pass621_10_eq]
  rfl
#print axioms optimize621_eq
end InitECandidate.Proofs.WordStages
