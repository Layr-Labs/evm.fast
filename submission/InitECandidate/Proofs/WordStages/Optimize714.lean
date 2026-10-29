import InitECandidate.Proofs.WordStages.Pass714_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle714 : Option (Spt Nat) := proposed714
def optimized714 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (714, 13, pass714_10)

theorem optimize714_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source714, oracle714) = optimized714 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source714.1 = 714 := by rfl
  have argc_eq : source714.2.1 = 13 := by rfl
  have oracle_eq : oracle714 = proposed714 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass714_0_eq, pass714_1_eq, pass714_2_eq, pass714_3_eq, pass714_4_eq, pass714_5_eq, pass714_6_eq, pass714_7_eq, pass714_8_eq, pass714_9_eq, pass714_10_eq]
  rfl
#print axioms optimize714_eq
end InitECandidate.Proofs.WordStages
