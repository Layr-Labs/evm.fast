import InitECandidate.Proofs.BackendStages.Encoded417
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial417_eq : InitECandidate.Proofs.BackendStages.Encoded417 = Initial417 := by
  with_unfolding_all rfl
#print axioms Initial417_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
