import InitECandidate.Proofs.BackendStages.Encoded141
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial141
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial141_eq : InitECandidate.Proofs.BackendStages.Encoded141 = Initial141 := by
  with_unfolding_all rfl
#print axioms Initial141_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
