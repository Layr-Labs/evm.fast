import InitECandidate.Proofs.BackendStages.Encoded185
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial185
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial185_eq : InitECandidate.Proofs.BackendStages.Encoded185 = Initial185 := by
  with_unfolding_all rfl
#print axioms Initial185_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
