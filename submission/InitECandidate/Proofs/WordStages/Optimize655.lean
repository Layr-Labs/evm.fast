import InitECandidate.Proofs.WordStages.Pass655_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle655 : Option (Spt Nat) := proposed655
def optimized655 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (655, 18, pass655_10)

theorem optimize655_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source655, oracle655) = optimized655 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source655.1 = 655 := by rfl
  have argc_eq : source655.2.1 = 18 := by rfl
  have oracle_eq : oracle655 = proposed655 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass655_0_eq, pass655_1_eq, pass655_2_eq, pass655_3_eq, pass655_4_eq, pass655_5_eq, pass655_6_eq, pass655_7_eq, pass655_8_eq, pass655_9_eq, pass655_10_eq]
  rfl
#print axioms optimize655_eq
end InitECandidate.Proofs.WordStages
