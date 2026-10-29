import InitECandidate.Proofs.BackendStages.Encoded829
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial829
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial829_eq : InitECandidate.Proofs.BackendStages.Encoded829 = Initial829 := by
  with_unfolding_all rfl
#print axioms Initial829_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
