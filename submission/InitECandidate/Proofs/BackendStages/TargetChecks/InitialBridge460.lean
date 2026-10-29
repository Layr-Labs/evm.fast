import InitECandidate.Proofs.BackendStages.Encoded460
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial460
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial460_eq : InitECandidate.Proofs.BackendStages.Encoded460 = Initial460 := by
  with_unfolding_all rfl
#print axioms Initial460_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
