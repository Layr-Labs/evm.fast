import InitECandidate.Proofs.BackendStages.Encoded98
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial98
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial98_eq : InitECandidate.Proofs.BackendStages.Encoded98 = Initial98 := by
  with_unfolding_all rfl
#print axioms Initial98_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
