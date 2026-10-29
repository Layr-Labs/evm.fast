import InitECandidate.Proofs.BackendStages.Encoded771
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial771_eq : InitECandidate.Proofs.BackendStages.Encoded771 = Initial771 := by
  with_unfolding_all rfl
#print axioms Initial771_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
