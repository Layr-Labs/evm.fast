import InitECandidate.Proofs.BackendStages.Encoded223
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial223_eq : InitECandidate.Proofs.BackendStages.Encoded223 = Initial223 := by
  with_unfolding_all rfl
#print axioms Initial223_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
