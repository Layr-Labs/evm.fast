import InitECandidate.Proofs.BackendStages.Encoded125
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial125_eq : InitECandidate.Proofs.BackendStages.Encoded125 = Initial125 := by
  with_unfolding_all rfl
#print axioms Initial125_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
