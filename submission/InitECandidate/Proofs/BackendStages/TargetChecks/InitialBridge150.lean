import InitECandidate.Proofs.BackendStages.Encoded150
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial150
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial150_eq : InitECandidate.Proofs.BackendStages.Encoded150 = Initial150 := by
  with_unfolding_all rfl
#print axioms Initial150_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
