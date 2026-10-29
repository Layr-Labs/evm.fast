import InitECandidate.Proofs.BackendStages.Encoded360
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial360_eq : InitECandidate.Proofs.BackendStages.Encoded360 = Initial360 := by
  with_unfolding_all rfl
#print axioms Initial360_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
