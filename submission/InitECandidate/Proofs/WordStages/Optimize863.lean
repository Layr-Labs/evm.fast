import InitECandidate.Proofs.WordStages.Pass863_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle863 : Option (Spt Nat) := proposed863
def optimized863 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (863, 3, pass863_10)

theorem optimize863_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source863, oracle863) = optimized863 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source863.1 = 863 := by rfl
  have argc_eq : source863.2.1 = 3 := by rfl
  have oracle_eq : oracle863 = proposed863 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass863_0_eq, pass863_1_eq, pass863_2_eq, pass863_3_eq, pass863_4_eq, pass863_5_eq, pass863_6_eq, pass863_7_eq, pass863_8_eq, pass863_9_eq, pass863_10_eq]
  rfl
#print axioms optimize863_eq
end InitECandidate.Proofs.WordStages
