import InitECandidate.Proofs.BackendStages.Encoded190
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial190_eq : InitECandidate.Proofs.BackendStages.Encoded190 = Initial190 := by
  with_unfolding_all rfl
#print axioms Initial190_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
