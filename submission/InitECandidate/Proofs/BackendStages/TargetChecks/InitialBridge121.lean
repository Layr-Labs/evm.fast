import InitECandidate.Proofs.BackendStages.Encoded121
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial121_eq : InitECandidate.Proofs.BackendStages.Encoded121 = Initial121 := by
  with_unfolding_all rfl
#print axioms Initial121_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
