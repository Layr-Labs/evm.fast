import InitECandidate.Proofs.BackendStages.Encoded816
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial816
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial816_eq : InitECandidate.Proofs.BackendStages.Encoded816 = Initial816 := by
  with_unfolding_all rfl
#print axioms Initial816_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
