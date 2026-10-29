import InitECandidate.Proofs.BackendStages.Encoded444
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial444_eq : InitECandidate.Proofs.BackendStages.Encoded444 = Initial444 := by
  with_unfolding_all rfl
#print axioms Initial444_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
