import InitECandidate.Proofs.BackendStages.Encoded841
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial841_eq : InitECandidate.Proofs.BackendStages.Encoded841 = Initial841 := by
  with_unfolding_all rfl
#print axioms Initial841_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
