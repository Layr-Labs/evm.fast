import InitECandidate.Proofs.BackendStages.Encoded806
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial806
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial806_eq : InitECandidate.Proofs.BackendStages.Encoded806 = Initial806 := by
  with_unfolding_all rfl
#print axioms Initial806_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
