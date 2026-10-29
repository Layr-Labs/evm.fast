import InitECandidate.Proofs.BackendStages.Encoded252
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial252
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial252_eq : InitECandidate.Proofs.BackendStages.Encoded252 = Initial252 := by
  with_unfolding_all rfl
#print axioms Initial252_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
