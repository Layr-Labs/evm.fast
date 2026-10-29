import InitECandidate.Proofs.BackendStages.Encoded401
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial401_eq : InitECandidate.Proofs.BackendStages.Encoded401 = Initial401 := by
  with_unfolding_all rfl
#print axioms Initial401_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
