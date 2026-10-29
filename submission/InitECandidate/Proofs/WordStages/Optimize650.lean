import InitECandidate.Proofs.WordStages.Pass650_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle650 : Option (Spt Nat) := proposed650
def optimized650 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (650, 2, pass650_10)

theorem optimize650_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source650, oracle650) = optimized650 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source650.1 = 650 := by rfl
  have argc_eq : source650.2.1 = 2 := by rfl
  have oracle_eq : oracle650 = proposed650 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass650_0_eq, pass650_1_eq, pass650_2_eq, pass650_3_eq, pass650_4_eq, pass650_5_eq, pass650_6_eq, pass650_7_eq, pass650_8_eq, pass650_9_eq, pass650_10_eq]
  rfl
#print axioms optimize650_eq
end InitECandidate.Proofs.WordStages
