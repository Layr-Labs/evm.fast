import InitECandidate.Proofs.BackendStages.Encoded271
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial271_eq : InitECandidate.Proofs.BackendStages.Encoded271 = Initial271 := by
  with_unfolding_all rfl
#print axioms Initial271_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
