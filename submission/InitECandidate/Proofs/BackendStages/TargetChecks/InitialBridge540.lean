import InitECandidate.Proofs.BackendStages.Encoded540
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial540_eq : InitECandidate.Proofs.BackendStages.Encoded540 = Initial540 := by
  with_unfolding_all rfl
#print axioms Initial540_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
