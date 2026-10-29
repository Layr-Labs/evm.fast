import InitECandidate.Proofs.BackendStages.Encoded142
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial142_eq : InitECandidate.Proofs.BackendStages.Encoded142 = Initial142 := by
  with_unfolding_all rfl
#print axioms Initial142_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
