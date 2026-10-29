import InitECandidate.Proofs.BackendStages.Encoded181
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial181_eq : InitECandidate.Proofs.BackendStages.Encoded181 = Initial181 := by
  with_unfolding_all rfl
#print axioms Initial181_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
