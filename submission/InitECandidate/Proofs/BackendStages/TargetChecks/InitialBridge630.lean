import InitECandidate.Proofs.BackendStages.Encoded630
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial630_eq : InitECandidate.Proofs.BackendStages.Encoded630 = Initial630 := by
  with_unfolding_all rfl
#print axioms Initial630_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
