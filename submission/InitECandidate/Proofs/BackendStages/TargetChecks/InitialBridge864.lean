import InitECandidate.Proofs.BackendStages.Encoded864
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial864_eq : InitECandidate.Proofs.BackendStages.Encoded864 = Initial864 := by
  with_unfolding_all rfl
#print axioms Initial864_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
