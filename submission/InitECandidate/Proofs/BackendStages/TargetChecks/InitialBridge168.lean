import InitECandidate.Proofs.BackendStages.Encoded168
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial168_eq : InitECandidate.Proofs.BackendStages.Encoded168 = Initial168 := by
  with_unfolding_all rfl
#print axioms Initial168_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
