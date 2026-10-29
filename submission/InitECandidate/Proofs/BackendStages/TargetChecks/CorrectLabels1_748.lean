import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_748_eq : LabToTarget.sectionLabels 816340 Reencode0_748.lines [] = (816784, localLabels1_748) := by
  with_unfolding_all rfl
#print axioms localLabels1_748_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
