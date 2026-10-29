import InitECandidate.Proofs.BackendStages.Encoded580
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial580_eq : InitECandidate.Proofs.BackendStages.Encoded580 = Initial580 := by
  with_unfolding_all rfl
#print axioms Initial580_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
