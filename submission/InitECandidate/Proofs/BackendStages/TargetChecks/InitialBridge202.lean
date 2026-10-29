import InitECandidate.Proofs.BackendStages.Encoded202
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial202_eq : InitECandidate.Proofs.BackendStages.Encoded202 = Initial202 := by
  with_unfolding_all rfl
#print axioms Initial202_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
