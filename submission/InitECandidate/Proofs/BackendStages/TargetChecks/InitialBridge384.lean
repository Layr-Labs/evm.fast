import InitECandidate.Proofs.BackendStages.Encoded384
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial384_eq : InitECandidate.Proofs.BackendStages.Encoded384 = Initial384 := by
  with_unfolding_all rfl
#print axioms Initial384_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
