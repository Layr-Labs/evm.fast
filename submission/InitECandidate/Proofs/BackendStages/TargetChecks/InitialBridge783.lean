import InitECandidate.Proofs.BackendStages.Encoded783
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial783_eq : InitECandidate.Proofs.BackendStages.Encoded783 = Initial783 := by
  with_unfolding_all rfl
#print axioms Initial783_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
