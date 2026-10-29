import InitECandidate.Proofs.BackendStages.Encoded128
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial128_eq : InitECandidate.Proofs.BackendStages.Encoded128 = Initial128 := by
  with_unfolding_all rfl
#print axioms Initial128_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
