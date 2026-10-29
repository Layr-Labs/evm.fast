import InitECandidate.Proofs.BackendStages.Encoded782
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial782_eq : InitECandidate.Proofs.BackendStages.Encoded782 = Initial782 := by
  with_unfolding_all rfl
#print axioms Initial782_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
