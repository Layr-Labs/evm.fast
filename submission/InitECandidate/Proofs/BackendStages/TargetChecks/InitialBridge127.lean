import InitECandidate.Proofs.BackendStages.Encoded127
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial127_eq : InitECandidate.Proofs.BackendStages.Encoded127 = Initial127 := by
  with_unfolding_all rfl
#print axioms Initial127_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
