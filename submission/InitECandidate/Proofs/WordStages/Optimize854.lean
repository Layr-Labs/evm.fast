import InitECandidate.Proofs.WordStages.Pass854_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle854 : Option (Spt Nat) := proposed854
def optimized854 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (854, 2, pass854_10)

theorem optimize854_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source854, oracle854) = optimized854 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source854.1 = 854 := by rfl
  have argc_eq : source854.2.1 = 2 := by rfl
  have oracle_eq : oracle854 = proposed854 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass854_0_eq, pass854_1_eq, pass854_2_eq, pass854_3_eq, pass854_4_eq, pass854_5_eq, pass854_6_eq, pass854_7_eq, pass854_8_eq, pass854_9_eq, pass854_10_eq]
  rfl
#print axioms optimize854_eq
end InitECandidate.Proofs.WordStages
