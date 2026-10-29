import InitECandidate.Proofs.BackendStages.Encoded203
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial203_eq : InitECandidate.Proofs.BackendStages.Encoded203 = Initial203 := by
  with_unfolding_all rfl
#print axioms Initial203_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
