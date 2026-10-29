import InitECandidate.Proofs.WordStages.Pass771_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle771 : Option (Spt Nat) := proposed771
def optimized771 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (771, 4, pass771_10)

theorem optimize771_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source771, oracle771) = optimized771 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source771.1 = 771 := by rfl
  have argc_eq : source771.2.1 = 4 := by rfl
  have oracle_eq : oracle771 = proposed771 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass771_0_eq, pass771_1_eq, pass771_2_eq, pass771_3_eq, pass771_4_eq, pass771_5_eq, pass771_6_eq, pass771_7_eq, pass771_8_eq, pass771_9_eq, pass771_10_eq]
  rfl
#print axioms optimize771_eq
end InitECandidate.Proofs.WordStages
