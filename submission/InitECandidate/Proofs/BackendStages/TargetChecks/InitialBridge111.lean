import InitECandidate.Proofs.BackendStages.Encoded111
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial111_eq : InitECandidate.Proofs.BackendStages.Encoded111 = Initial111 := by
  with_unfolding_all rfl
#print axioms Initial111_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
