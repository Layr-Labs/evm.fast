import InitECandidate.Proofs.AllocationComputation
import InitECandidate.Proofs.ClashStages875.Closed
import InitECandidate.Proofs.ClashStages875.Oracle
import InitECandidate.Proofs.ClashStages875.Even
import InitECandidate.Proofs.ClashStages875.Apply
import InitECandidate.Proofs.ClashStages875.Stack
import InitECandidate.Proofs.ClashStages875.Forced
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel875
namespace InitECandidate.Proofs.ClashStages875
theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 875 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass875_8 proposed875 = pass875_9 := by
  exact InitECandidate.Proofs.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitECandidate.Proofs.ClashStages875
