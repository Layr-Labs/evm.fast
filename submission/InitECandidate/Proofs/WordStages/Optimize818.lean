import InitECandidate.Proofs.WordStages.Pass818_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle818 : Option (Spt Nat) := proposed818
def optimized818 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (818, 1, pass818_10)

theorem optimize818_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source818, oracle818) = optimized818 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source818.1 = 818 := by rfl
  have argc_eq : source818.2.1 = 1 := by rfl
  have oracle_eq : oracle818 = proposed818 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass818_0_eq, pass818_1_eq, pass818_2_eq, pass818_3_eq, pass818_4_eq, pass818_5_eq, pass818_6_eq, pass818_7_eq, pass818_8_eq, pass818_9_eq, pass818_10_eq]
  rfl
#print axioms optimize818_eq
end InitECandidate.Proofs.WordStages
