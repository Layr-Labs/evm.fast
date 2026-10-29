import InitECandidate.Proofs.BackendStages.Encoded85
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial85
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial85_eq : InitECandidate.Proofs.BackendStages.Encoded85 = Initial85 := by
  with_unfolding_all rfl
#print axioms Initial85_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
