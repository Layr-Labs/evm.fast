import InitECandidate.Proofs.BackendStages.Encoded270
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial270
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial270_eq : InitECandidate.Proofs.BackendStages.Encoded270 = Initial270 := by
  with_unfolding_all rfl
#print axioms Initial270_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
