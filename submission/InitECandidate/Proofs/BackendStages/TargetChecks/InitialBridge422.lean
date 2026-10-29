import InitECandidate.Proofs.BackendStages.Encoded422
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial422_eq : InitECandidate.Proofs.BackendStages.Encoded422 = Initial422 := by
  with_unfolding_all rfl
#print axioms Initial422_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
