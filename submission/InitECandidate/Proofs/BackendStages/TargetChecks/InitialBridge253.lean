import InitECandidate.Proofs.BackendStages.Encoded253
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial253_eq : InitECandidate.Proofs.BackendStages.Encoded253 = Initial253 := by
  with_unfolding_all rfl
#print axioms Initial253_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
