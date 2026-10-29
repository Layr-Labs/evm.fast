import InitECandidate.Proofs.BackendStages.Encoded191
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial191_eq : InitECandidate.Proofs.BackendStages.Encoded191 = Initial191 := by
  with_unfolding_all rfl
#print axioms Initial191_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
