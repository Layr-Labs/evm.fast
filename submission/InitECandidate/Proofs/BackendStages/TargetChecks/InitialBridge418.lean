import InitECandidate.Proofs.BackendStages.Encoded418
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial418_eq : InitECandidate.Proofs.BackendStages.Encoded418 = Initial418 := by
  with_unfolding_all rfl
#print axioms Initial418_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
