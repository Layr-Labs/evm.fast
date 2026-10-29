import InitECandidate.Proofs.BackendStages.BytePiecesData641
import InitECandidate.Proofs.BackendStages.BytePiecesData642
import InitECandidate.Bytes131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate131_eq : InitECandidate.bytes131 = [piece641_1, piece642_0].flatten := by
  rw [piece641_1_eq, piece642_0_eq]
  rfl
#print axioms candidate131_eq
end InitECandidate.Proofs.BackendStages.BytePieces
