import InitECandidate.Proofs.WordStages.Pass345_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle345 : Option (Spt Nat) := proposed345
def optimized345 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (345, 3, pass345_10)

theorem optimize345_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source345, oracle345) = optimized345 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source345.1 = 345 := by rfl
  have argc_eq : source345.2.1 = 3 := by rfl
  have oracle_eq : oracle345 = proposed345 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass345_0_eq, pass345_1_eq, pass345_2_eq, pass345_3_eq, pass345_4_eq, pass345_5_eq, pass345_6_eq, pass345_7_eq, pass345_8_eq, pass345_9_eq, pass345_10_eq]
  rfl
#print axioms optimize345_eq
end InitECandidate.Proofs.WordStages
