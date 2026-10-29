import InitECandidate.Proofs.BackendStages.Encoded601
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial601_eq : InitECandidate.Proofs.BackendStages.Encoded601 = Initial601 := by
  with_unfolding_all rfl
#print axioms Initial601_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
