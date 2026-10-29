import InitECandidate.Proofs.BackendStages.Encoded239
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial239_eq : InitECandidate.Proofs.BackendStages.Encoded239 = Initial239 := by
  with_unfolding_all rfl
#print axioms Initial239_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
