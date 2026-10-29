import InitECandidate.Proofs.BackendStages.Encoded586
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial586_eq : InitECandidate.Proofs.BackendStages.Encoded586 = Initial586 := by
  with_unfolding_all rfl
#print axioms Initial586_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
