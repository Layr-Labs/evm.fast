import InitECandidate.Proofs.BackendStages.Encoded512
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial512_eq : InitECandidate.Proofs.BackendStages.Encoded512 = Initial512 := by
  with_unfolding_all rfl
#print axioms Initial512_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
