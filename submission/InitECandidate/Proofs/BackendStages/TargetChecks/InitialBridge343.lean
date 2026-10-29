import InitECandidate.Proofs.BackendStages.Encoded343
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial343_eq : InitECandidate.Proofs.BackendStages.Encoded343 = Initial343 := by
  with_unfolding_all rfl
#print axioms Initial343_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
