import InitECandidate.Proofs.WordStages.Pass691_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle691 : Option (Spt Nat) := proposed691
def optimized691 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (691, 3, pass691_10)

theorem optimize691_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source691, oracle691) = optimized691 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source691.1 = 691 := by rfl
  have argc_eq : source691.2.1 = 3 := by rfl
  have oracle_eq : oracle691 = proposed691 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass691_0_eq, pass691_1_eq, pass691_2_eq, pass691_3_eq, pass691_4_eq, pass691_5_eq, pass691_6_eq, pass691_7_eq, pass691_8_eq, pass691_9_eq, pass691_10_eq]
  rfl
#print axioms optimize691_eq
end InitECandidate.Proofs.WordStages
