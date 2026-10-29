import InitECandidate.Proofs.WordStages.Pass661_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle661 : Option (Spt Nat) := proposed661
def optimized661 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (661, 9, pass661_10)

theorem optimize661_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source661, oracle661) = optimized661 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source661.1 = 661 := by rfl
  have argc_eq : source661.2.1 = 9 := by rfl
  have oracle_eq : oracle661 = proposed661 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass661_0_eq, pass661_1_eq, pass661_2_eq, pass661_3_eq, pass661_4_eq, pass661_5_eq, pass661_6_eq, pass661_7_eq, pass661_8_eq, pass661_9_eq, pass661_10_eq]
  rfl
#print axioms optimize661_eq
end InitECandidate.Proofs.WordStages
