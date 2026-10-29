import InitECandidate.Proofs.BackendStages.Encoded222
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial222_eq : InitECandidate.Proofs.BackendStages.Encoded222 = Initial222 := by
  with_unfolding_all rfl
#print axioms Initial222_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
