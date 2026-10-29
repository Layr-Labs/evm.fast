import InitECandidate.Proofs.BackendStages.Encoded284
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial284_eq : InitECandidate.Proofs.BackendStages.Encoded284 = Initial284 := by
  with_unfolding_all rfl
#print axioms Initial284_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
