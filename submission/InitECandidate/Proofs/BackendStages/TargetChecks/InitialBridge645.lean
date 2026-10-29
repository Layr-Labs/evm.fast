import InitECandidate.Proofs.BackendStages.Encoded645
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial645
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial645_eq : InitECandidate.Proofs.BackendStages.Encoded645 = Initial645 := by
  with_unfolding_all rfl
#print axioms Initial645_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
