import InitECandidate.Proofs.WordStages.Pass595_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle595 : Option (Spt Nat) := proposed595
def optimized595 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (595, 2, pass595_10)

theorem optimize595_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source595, oracle595) = optimized595 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source595.1 = 595 := by rfl
  have argc_eq : source595.2.1 = 2 := by rfl
  have oracle_eq : oracle595 = proposed595 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass595_0_eq, pass595_1_eq, pass595_2_eq, pass595_3_eq, pass595_4_eq, pass595_5_eq, pass595_6_eq, pass595_7_eq, pass595_8_eq, pass595_9_eq, pass595_10_eq]
  rfl
#print axioms optimize595_eq
end InitECandidate.Proofs.WordStages
