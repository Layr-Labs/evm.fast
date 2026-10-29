import InitECandidate.Proofs.BackendStages.Encoded842
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial842
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial842_eq : InitECandidate.Proofs.BackendStages.Encoded842 = Initial842 := by
  with_unfolding_all rfl
#print axioms Initial842_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
