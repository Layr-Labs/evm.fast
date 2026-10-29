import InitECandidate.Proofs.WordStages.Pass206_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle206 : Option (Spt Nat) := proposed206
def optimized206 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (206, 9, pass206_10)

theorem optimize206_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source206, oracle206) = optimized206 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source206.1 = 206 := by rfl
  have argc_eq : source206.2.1 = 9 := by rfl
  have oracle_eq : oracle206 = proposed206 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass206_0_eq, pass206_1_eq, pass206_2_eq, pass206_3_eq, pass206_4_eq, pass206_5_eq, pass206_6_eq, pass206_7_eq, pass206_8_eq, pass206_9_eq, pass206_10_eq]
  rfl
#print axioms optimize206_eq
end InitECandidate.Proofs.WordStages
