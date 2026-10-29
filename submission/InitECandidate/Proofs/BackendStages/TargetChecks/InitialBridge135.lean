import InitECandidate.Proofs.BackendStages.Encoded135
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial135_eq : InitECandidate.Proofs.BackendStages.Encoded135 = Initial135 := by
  with_unfolding_all rfl
#print axioms Initial135_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
