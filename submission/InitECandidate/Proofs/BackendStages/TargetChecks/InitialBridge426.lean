import InitECandidate.Proofs.BackendStages.Encoded426
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial426_eq : InitECandidate.Proofs.BackendStages.Encoded426 = Initial426 := by
  with_unfolding_all rfl
#print axioms Initial426_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
