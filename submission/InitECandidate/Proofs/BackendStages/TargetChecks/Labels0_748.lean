import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_748_eq : LabToTarget.sectionLabels 816320 Initial748.lines [] = (816764, localLabels0_748) := by
  with_unfolding_all rfl
#print axioms localLabels0_748_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
