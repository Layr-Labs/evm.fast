import InitECandidate.Proofs.BackendStages.Encoded258
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial258
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial258_eq : InitECandidate.Proofs.BackendStages.Encoded258 = Initial258 := by
  with_unfolding_all rfl
#print axioms Initial258_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
