import InitECandidate.Proofs.BackendStages.Encoded242
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial242_eq : InitECandidate.Proofs.BackendStages.Encoded242 = Initial242 := by
  with_unfolding_all rfl
#print axioms Initial242_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
