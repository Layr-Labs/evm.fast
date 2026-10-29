import InitECandidate.Proofs.BackendStages.Encoded810
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial810_eq : InitECandidate.Proofs.BackendStages.Encoded810 = Initial810 := by
  with_unfolding_all rfl
#print axioms Initial810_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
