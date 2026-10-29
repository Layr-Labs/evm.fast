import InitECandidate.Proofs.BackendStages.Encoded862
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial862
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial862_eq : InitECandidate.Proofs.BackendStages.Encoded862 = Initial862 := by
  with_unfolding_all rfl
#print axioms Initial862_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
