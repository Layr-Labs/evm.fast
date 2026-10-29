import InitECandidate.Proofs.WordStages.Pass274_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle274 : Option (Spt Nat) := proposed274
def optimized274 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (274, 3, pass274_10)

theorem optimize274_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source274, oracle274) = optimized274 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source274.1 = 274 := by rfl
  have argc_eq : source274.2.1 = 3 := by rfl
  have oracle_eq : oracle274 = proposed274 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass274_0_eq, pass274_1_eq, pass274_2_eq, pass274_3_eq, pass274_4_eq, pass274_5_eq, pass274_6_eq, pass274_7_eq, pass274_8_eq, pass274_9_eq, pass274_10_eq]
  rfl
#print axioms optimize274_eq
end InitECandidate.Proofs.WordStages
