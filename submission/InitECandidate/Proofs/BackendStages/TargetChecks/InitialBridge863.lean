import InitECandidate.Proofs.BackendStages.Encoded863
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial863_eq : InitECandidate.Proofs.BackendStages.Encoded863 = Initial863 := by
  with_unfolding_all rfl
#print axioms Initial863_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
