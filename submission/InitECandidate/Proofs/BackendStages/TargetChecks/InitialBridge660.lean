import InitECandidate.Proofs.BackendStages.Encoded660
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial660_eq : InitECandidate.Proofs.BackendStages.Encoded660 = Initial660 := by
  with_unfolding_all rfl
#print axioms Initial660_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
