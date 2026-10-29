import InitECandidate.Proofs.BackendStages.Encoded406
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial406_eq : InitECandidate.Proofs.BackendStages.Encoded406 = Initial406 := by
  with_unfolding_all rfl
#print axioms Initial406_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
