import InitECandidate.Proofs.WordStages.Pass121_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle121 : Option (Spt Nat) := proposed121
def optimized121 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (121, 9, pass121_10)

theorem optimize121_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source121, oracle121) = optimized121 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source121.1 = 121 := by rfl
  have argc_eq : source121.2.1 = 9 := by rfl
  have oracle_eq : oracle121 = proposed121 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass121_0_eq, pass121_1_eq, pass121_2_eq, pass121_3_eq, pass121_4_eq, pass121_5_eq, pass121_6_eq, pass121_7_eq, pass121_8_eq, pass121_9_eq, pass121_10_eq]
  rfl
#print axioms optimize121_eq
end InitECandidate.Proofs.WordStages
