import InitECandidate.Proofs.BackendStages.Encoded709
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial709
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial709_eq : InitECandidate.Proofs.BackendStages.Encoded709 = Initial709 := by
  with_unfolding_all rfl
#print axioms Initial709_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
