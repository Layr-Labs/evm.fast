import InitECandidate.Proofs.BackendStages.Encoded381
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial381_eq : InitECandidate.Proofs.BackendStages.Encoded381 = Initial381 := by
  with_unfolding_all rfl
#print axioms Initial381_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
