import InitECandidate.Proofs.BackendStages.Encoded112
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial112_eq : InitECandidate.Proofs.BackendStages.Encoded112 = Initial112 := by
  with_unfolding_all rfl
#print axioms Initial112_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
