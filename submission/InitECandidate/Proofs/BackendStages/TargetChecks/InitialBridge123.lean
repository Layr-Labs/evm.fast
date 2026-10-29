import InitECandidate.Proofs.BackendStages.Encoded123
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial123_eq : InitECandidate.Proofs.BackendStages.Encoded123 = Initial123 := by
  with_unfolding_all rfl
#print axioms Initial123_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
