import InitECandidate.Proofs.BackendStages.Encoded510
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial510_eq : InitECandidate.Proofs.BackendStages.Encoded510 = Initial510 := by
  with_unfolding_all rfl
#print axioms Initial510_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
