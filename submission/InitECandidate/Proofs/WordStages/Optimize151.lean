import InitECandidate.Proofs.WordStages.Pass151_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle151 : Option (Spt Nat) := proposed151
def optimized151 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (151, 3, pass151_10)

theorem optimize151_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source151, oracle151) = optimized151 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source151.1 = 151 := by rfl
  have argc_eq : source151.2.1 = 3 := by rfl
  have oracle_eq : oracle151 = proposed151 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass151_0_eq, pass151_1_eq, pass151_2_eq, pass151_3_eq, pass151_4_eq, pass151_5_eq, pass151_6_eq, pass151_7_eq, pass151_8_eq, pass151_9_eq, pass151_10_eq]
  rfl
#print axioms optimize151_eq
end InitECandidate.Proofs.WordStages
