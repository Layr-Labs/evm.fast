import InitECandidate.Proofs.BackendStages.Encoded333
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial333_eq : InitECandidate.Proofs.BackendStages.Encoded333 = Initial333 := by
  with_unfolding_all rfl
#print axioms Initial333_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
