import InitECandidate.Proofs.BackendStages.Encoded73
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial73
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial73_eq : InitECandidate.Proofs.BackendStages.Encoded73 = Initial73 := by
  with_unfolding_all rfl
#print axioms Initial73_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
