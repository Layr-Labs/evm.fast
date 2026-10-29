import InitECandidate.Proofs.BackendStages.Encoded151
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial151_eq : InitECandidate.Proofs.BackendStages.Encoded151 = Initial151 := by
  with_unfolding_all rfl
#print axioms Initial151_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
