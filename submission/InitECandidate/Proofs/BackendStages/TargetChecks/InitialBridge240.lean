import InitECandidate.Proofs.BackendStages.Encoded240
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial240_eq : InitECandidate.Proofs.BackendStages.Encoded240 = Initial240 := by
  with_unfolding_all rfl
#print axioms Initial240_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
