import InitECandidate.Proofs.BackendStages.Encoded686
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial686_eq : InitECandidate.Proofs.BackendStages.Encoded686 = Initial686 := by
  with_unfolding_all rfl
#print axioms Initial686_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
