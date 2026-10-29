import InitECandidate.Proofs.BackendStages.Encoded550
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial550_eq : InitECandidate.Proofs.BackendStages.Encoded550 = Initial550 := by
  with_unfolding_all rfl
#print axioms Initial550_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
