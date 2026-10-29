import InitECandidate.Proofs.BackendStages.Encoded871
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial871_eq : InitECandidate.Proofs.BackendStages.Encoded871 = Initial871 := by
  with_unfolding_all rfl
#print axioms Initial871_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
