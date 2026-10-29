import InitECandidate.Proofs.BackendStages.Encoded390
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial390
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial390_eq : InitECandidate.Proofs.BackendStages.Encoded390 = Initial390 := by
  with_unfolding_all rfl
#print axioms Initial390_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
