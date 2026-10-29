import InitECandidate.Proofs.BackendStages.Encoded289
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial289
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial289_eq : InitECandidate.Proofs.BackendStages.Encoded289 = Initial289 := by
  with_unfolding_all rfl
#print axioms Initial289_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
