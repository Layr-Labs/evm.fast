import InitECandidate.Proofs.BackendStages.Encoded639
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial639_eq : InitECandidate.Proofs.BackendStages.Encoded639 = Initial639 := by
  with_unfolding_all rfl
#print axioms Initial639_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
