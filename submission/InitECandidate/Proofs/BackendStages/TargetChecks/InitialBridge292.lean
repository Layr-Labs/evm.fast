import InitECandidate.Proofs.BackendStages.Encoded292
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial292_eq : InitECandidate.Proofs.BackendStages.Encoded292 = Initial292 := by
  with_unfolding_all rfl
#print axioms Initial292_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
