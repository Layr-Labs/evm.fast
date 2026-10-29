import InitECandidate.Proofs.BackendStages.Encoded302
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial302
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial302_eq : InitECandidate.Proofs.BackendStages.Encoded302 = Initial302 := by
  with_unfolding_all rfl
#print axioms Initial302_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
