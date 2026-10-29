import InitECandidate.Proofs.WordStages.Pass64_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle64 : Option (Spt Nat) := proposed64
def optimized64 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (64, 1, pass64_10)

theorem optimize64_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source64, oracle64) = optimized64 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source64.1 = 64 := by rfl
  have argc_eq : source64.2.1 = 1 := by rfl
  have oracle_eq : oracle64 = proposed64 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass64_0_eq, pass64_1_eq, pass64_2_eq, pass64_3_eq, pass64_4_eq, pass64_5_eq, pass64_6_eq, pass64_7_eq, pass64_8_eq, pass64_9_eq, pass64_10_eq]
  rfl
#print axioms optimize64_eq
end InitECandidate.Proofs.WordStages
