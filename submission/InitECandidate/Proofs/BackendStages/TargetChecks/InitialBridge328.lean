import InitECandidate.Proofs.BackendStages.Encoded328
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial328
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial328_eq : InitECandidate.Proofs.BackendStages.Encoded328 = Initial328 := by
  with_unfolding_all rfl
#print axioms Initial328_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
