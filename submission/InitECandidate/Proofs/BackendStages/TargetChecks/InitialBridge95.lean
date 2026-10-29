import InitECandidate.Proofs.BackendStages.Encoded95
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial95_eq : InitECandidate.Proofs.BackendStages.Encoded95 = Initial95 := by
  with_unfolding_all rfl
#print axioms Initial95_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
