import InitECandidate.Proofs.BackendStages.Encoded635
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial635
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial635_eq : InitECandidate.Proofs.BackendStages.Encoded635 = Initial635 := by
  with_unfolding_all rfl
#print axioms Initial635_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
