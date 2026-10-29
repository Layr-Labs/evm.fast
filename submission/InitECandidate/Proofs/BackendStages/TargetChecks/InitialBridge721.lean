import InitECandidate.Proofs.BackendStages.Encoded721
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial721_eq : InitECandidate.Proofs.BackendStages.Encoded721 = Initial721 := by
  with_unfolding_all rfl
#print axioms Initial721_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
