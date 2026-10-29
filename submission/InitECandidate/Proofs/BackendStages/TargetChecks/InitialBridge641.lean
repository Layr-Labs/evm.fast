import InitECandidate.Proofs.BackendStages.Encoded641
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial641_eq : InitECandidate.Proofs.BackendStages.Encoded641 = Initial641 := by
  with_unfolding_all rfl
#print axioms Initial641_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
