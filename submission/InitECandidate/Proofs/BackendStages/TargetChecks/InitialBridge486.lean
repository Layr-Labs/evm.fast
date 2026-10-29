import InitECandidate.Proofs.BackendStages.Encoded486
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial486_eq : InitECandidate.Proofs.BackendStages.Encoded486 = Initial486 := by
  with_unfolding_all rfl
#print axioms Initial486_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
