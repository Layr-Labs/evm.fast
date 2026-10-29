import InitECandidate.Proofs.BackendStages.Encoded811
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial811_eq : InitECandidate.Proofs.BackendStages.Encoded811 = Initial811 := by
  with_unfolding_all rfl
#print axioms Initial811_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
