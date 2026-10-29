import InitECandidate.Proofs.BackendStages.Encoded216
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial216_eq : InitECandidate.Proofs.BackendStages.Encoded216 = Initial216 := by
  with_unfolding_all rfl
#print axioms Initial216_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
