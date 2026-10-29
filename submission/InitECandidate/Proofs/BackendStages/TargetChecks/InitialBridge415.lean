import InitECandidate.Proofs.BackendStages.Encoded415
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial415_eq : InitECandidate.Proofs.BackendStages.Encoded415 = Initial415 := by
  with_unfolding_all rfl
#print axioms Initial415_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
