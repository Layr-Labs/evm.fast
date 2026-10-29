import InitECandidate.Proofs.BackendStages.Encoded787
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial787_eq : InitECandidate.Proofs.BackendStages.Encoded787 = Initial787 := by
  with_unfolding_all rfl
#print axioms Initial787_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
