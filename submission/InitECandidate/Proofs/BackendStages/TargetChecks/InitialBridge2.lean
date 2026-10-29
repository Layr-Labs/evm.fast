import InitECandidate.Proofs.BackendStages.Encoded2
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial2_eq : InitECandidate.Proofs.BackendStages.Encoded2 = Initial2 := by
  with_unfolding_all rfl
#print axioms Initial2_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
