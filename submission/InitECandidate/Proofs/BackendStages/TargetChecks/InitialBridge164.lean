import InitECandidate.Proofs.BackendStages.Encoded164
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial164_eq : InitECandidate.Proofs.BackendStages.Encoded164 = Initial164 := by
  with_unfolding_all rfl
#print axioms Initial164_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
