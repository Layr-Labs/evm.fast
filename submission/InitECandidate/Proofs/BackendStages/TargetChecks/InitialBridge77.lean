import InitECandidate.Proofs.BackendStages.Encoded77
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial77
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial77_eq : InitECandidate.Proofs.BackendStages.Encoded77 = Initial77 := by
  with_unfolding_all rfl
#print axioms Initial77_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
