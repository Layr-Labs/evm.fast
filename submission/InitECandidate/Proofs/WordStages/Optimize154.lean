import InitECandidate.Proofs.WordStages.Source154
import InitECandidate.Proofs.WordStages.Pass154_10
import InitECandidate.Proofs.CompilerStages
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def oracle154 : Option (Spt Nat) := proposed154
def optimized154 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (154, 4, pass154_10)
theorem optimize154_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source154, oracle154) = optimized154 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source154.1 = 154 := by rfl
  have argc_eq : source154.2.1 = 4 := by rfl
  have oracle_eq : oracle154 = proposed154 := by kernel_rfl
  rw [name_eq, argc_eq, oracle_eq, pass154_0_eq, pass154_1_eq, pass154_2_eq, pass154_3_eq, pass154_4_eq, pass154_5_eq, pass154_6_eq, pass154_7_eq, pass154_8_eq, pass154_9_eq, pass154_10_eq]
  kernel_rfl
#print axioms optimize154_eq
end InitECandidate.Proofs.WordStages
