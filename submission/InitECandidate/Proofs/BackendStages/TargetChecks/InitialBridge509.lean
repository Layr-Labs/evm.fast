import InitECandidate.Proofs.BackendStages.Encoded509
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial509
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial509_eq : InitECandidate.Proofs.BackendStages.Encoded509 = Initial509 := by
  with_unfolding_all rfl
#print axioms Initial509_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
