import InitECandidate.Proofs.BackendStages.Encoded703
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial703_eq : InitECandidate.Proofs.BackendStages.Encoded703 = Initial703 := by
  with_unfolding_all rfl
#print axioms Initial703_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
