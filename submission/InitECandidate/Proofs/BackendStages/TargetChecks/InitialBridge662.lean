import InitECandidate.Proofs.BackendStages.Encoded662
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial662
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial662_eq : InitECandidate.Proofs.BackendStages.Encoded662 = Initial662 := by
  with_unfolding_all rfl
#print axioms Initial662_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
