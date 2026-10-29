import InitECandidate.Proofs.BackendStages.Encoded869
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial869_eq : InitECandidate.Proofs.BackendStages.Encoded869 = Initial869 := by
  with_unfolding_all rfl
#print axioms Initial869_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
