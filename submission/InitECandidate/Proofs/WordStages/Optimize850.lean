import InitECandidate.Proofs.WordStages.Pass850_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle850 : Option (Spt Nat) := proposed850
def optimized850 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (850, 2, pass850_10)

theorem optimize850_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source850, oracle850) = optimized850 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source850.1 = 850 := by rfl
  have argc_eq : source850.2.1 = 2 := by rfl
  have oracle_eq : oracle850 = proposed850 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass850_0_eq, pass850_1_eq, pass850_2_eq, pass850_3_eq, pass850_4_eq, pass850_5_eq, pass850_6_eq, pass850_7_eq, pass850_8_eq, pass850_9_eq, pass850_10_eq]
  rfl
#print axioms optimize850_eq
end InitECandidate.Proofs.WordStages
