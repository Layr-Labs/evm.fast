import InitECandidate.Proofs.WordStages.Pass862_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle862 : Option (Spt Nat) := proposed862
def optimized862 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (862, 3, pass862_10)

theorem optimize862_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source862, oracle862) = optimized862 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source862.1 = 862 := by rfl
  have argc_eq : source862.2.1 = 3 := by rfl
  have oracle_eq : oracle862 = proposed862 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass862_0_eq, pass862_1_eq, pass862_2_eq, pass862_3_eq, pass862_4_eq, pass862_5_eq, pass862_6_eq, pass862_7_eq, pass862_8_eq, pass862_9_eq, pass862_10_eq]
  rfl
#print axioms optimize862_eq
end InitECandidate.Proofs.WordStages
