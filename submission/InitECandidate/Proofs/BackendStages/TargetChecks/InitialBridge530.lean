import InitECandidate.Proofs.BackendStages.Encoded530
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial530_eq : InitECandidate.Proofs.BackendStages.Encoded530 = Initial530 := by
  with_unfolding_all rfl
#print axioms Initial530_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
