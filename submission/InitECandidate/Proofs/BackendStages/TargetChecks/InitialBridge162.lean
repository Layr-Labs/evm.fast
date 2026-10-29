import InitECandidate.Proofs.BackendStages.Encoded162
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial162_eq : InitECandidate.Proofs.BackendStages.Encoded162 = Initial162 := by
  with_unfolding_all rfl
#print axioms Initial162_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
