import InitECandidate.Proofs.BackendStages.Encoded490
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial490
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial490_eq : InitECandidate.Proofs.BackendStages.Encoded490 = Initial490 := by
  with_unfolding_all rfl
#print axioms Initial490_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
