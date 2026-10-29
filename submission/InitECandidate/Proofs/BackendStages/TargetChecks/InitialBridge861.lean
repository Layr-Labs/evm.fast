import InitECandidate.Proofs.BackendStages.Encoded861
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial861_eq : InitECandidate.Proofs.BackendStages.Encoded861 = Initial861 := by
  with_unfolding_all rfl
#print axioms Initial861_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
