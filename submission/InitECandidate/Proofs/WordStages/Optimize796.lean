import InitECandidate.Proofs.WordStages.Pass796_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle796 : Option (Spt Nat) := proposed796
def optimized796 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (796, 8, pass796_10)

theorem optimize796_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source796, oracle796) = optimized796 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source796.1 = 796 := by rfl
  have argc_eq : source796.2.1 = 8 := by rfl
  have oracle_eq : oracle796 = proposed796 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass796_0_eq, pass796_1_eq, pass796_2_eq, pass796_3_eq, pass796_4_eq, pass796_5_eq, pass796_6_eq, pass796_7_eq, pass796_8_eq, pass796_9_eq, pass796_10_eq]
  rfl
#print axioms optimize796_eq
end InitECandidate.Proofs.WordStages
