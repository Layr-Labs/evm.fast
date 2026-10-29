import InitECandidate.Proofs.WordStages.Pass224_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle224 : Option (Spt Nat) := proposed224
def optimized224 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (224, 10, pass224_10)

theorem optimize224_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source224, oracle224) = optimized224 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source224.1 = 224 := by rfl
  have argc_eq : source224.2.1 = 10 := by rfl
  have oracle_eq : oracle224 = proposed224 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass224_0_eq, pass224_1_eq, pass224_2_eq, pass224_3_eq, pass224_4_eq, pass224_5_eq, pass224_6_eq, pass224_7_eq, pass224_8_eq, pass224_9_eq, pass224_10_eq]
  rfl
#print axioms optimize224_eq
end InitECandidate.Proofs.WordStages
