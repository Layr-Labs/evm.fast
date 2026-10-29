import InitECandidate.Proofs.BackendStages.Encoded324
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial324_eq : InitECandidate.Proofs.BackendStages.Encoded324 = Initial324 := by
  with_unfolding_all rfl
#print axioms Initial324_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
