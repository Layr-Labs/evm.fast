import InitECandidate.Proofs.WordStages.Source704
import InitECandidate.Proofs.WordStages.Pass704_10
import InitECandidate.Proofs.CompilerStages
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def oracle704 : Option (Spt Nat) := proposed704
def optimized704 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (704, 1, pass704_10)
theorem optimize704_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source704, oracle704) = optimized704 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source704.1 = 704 := by rfl
  have argc_eq : source704.2.1 = 1 := by rfl
  have oracle_eq : oracle704 = proposed704 := by kernel_rfl
  rw [name_eq, argc_eq, oracle_eq, pass704_0_eq, pass704_1_eq, pass704_2_eq, pass704_3_eq, pass704_4_eq, pass704_5_eq, pass704_6_eq, pass704_7_eq, pass704_8_eq, pass704_9_eq, pass704_10_eq]
  kernel_rfl
#print axioms optimize704_eq
end InitECandidate.Proofs.WordStages
