import InitECandidate.Proofs.BackendStages.Encoded503
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial503_eq : InitECandidate.Proofs.BackendStages.Encoded503 = Initial503 := by
  with_unfolding_all rfl
#print axioms Initial503_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
