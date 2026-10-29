import InitECandidate.Proofs.AllocationComputation
import InitECandidate.Proofs.ClashStages783.Closed
import InitECandidate.Proofs.ClashStages783.Oracle
import InitECandidate.Proofs.ClashStages783.Even
import InitECandidate.Proofs.ClashStages783.Apply
import InitECandidate.Proofs.ClashStages783.Stack
import InitECandidate.Proofs.ClashStages783.Forced
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel783
namespace InitECandidate.Proofs.ClashStages783
theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 783 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass783_8 proposed783 = pass783_9 := by
  exact InitECandidate.Proofs.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitECandidate.Proofs.ClashStages783
