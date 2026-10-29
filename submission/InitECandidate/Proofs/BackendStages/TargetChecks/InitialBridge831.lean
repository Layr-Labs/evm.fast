import InitECandidate.Proofs.BackendStages.Encoded831
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial831_eq : InitECandidate.Proofs.BackendStages.Encoded831 = Initial831 := by
  with_unfolding_all rfl
#print axioms Initial831_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
