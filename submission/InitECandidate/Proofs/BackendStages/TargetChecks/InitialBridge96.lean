import InitECandidate.Proofs.BackendStages.Encoded96
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial96
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial96_eq : InitECandidate.Proofs.BackendStages.Encoded96 = Initial96 := by
  with_unfolding_all rfl
#print axioms Initial96_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
