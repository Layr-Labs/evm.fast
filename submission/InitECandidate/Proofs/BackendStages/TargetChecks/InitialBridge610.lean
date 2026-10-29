import InitECandidate.Proofs.BackendStages.Encoded610
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial610_eq : InitECandidate.Proofs.BackendStages.Encoded610 = Initial610 := by
  with_unfolding_all rfl
#print axioms Initial610_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
