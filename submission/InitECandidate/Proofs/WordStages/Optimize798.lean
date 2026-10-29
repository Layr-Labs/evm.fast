import InitECandidate.Proofs.WordStages.Pass798_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle798 : Option (Spt Nat) := proposed798
def optimized798 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (798, 3, pass798_10)

theorem optimize798_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source798, oracle798) = optimized798 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source798.1 = 798 := by rfl
  have argc_eq : source798.2.1 = 3 := by rfl
  have oracle_eq : oracle798 = proposed798 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass798_0_eq, pass798_1_eq, pass798_2_eq, pass798_3_eq, pass798_4_eq, pass798_5_eq, pass798_6_eq, pass798_7_eq, pass798_8_eq, pass798_9_eq, pass798_10_eq]
  rfl
#print axioms optimize798_eq
end InitECandidate.Proofs.WordStages
