import InitECandidate.Proofs.BackendStages.BytePiecesData844
import InitECandidate.Proofs.BackendStages.BytePiecesData845
import InitECandidate.Proofs.BackendStages.BytePiecesData846
import InitECandidate.Proofs.BackendStages.BytePiecesData847
import InitECandidate.Proofs.BackendStages.BytePiecesData848
import InitECandidate.Bytes223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate223_eq : InitECandidate.bytes223 = [piece844_1, piece845_0, piece846_0, piece847_0, piece848_0].flatten := by
  rw [piece844_1_eq, piece845_0_eq, piece846_0_eq, piece847_0_eq, piece848_0_eq]
  rfl
#print axioms candidate223_eq
end InitECandidate.Proofs.BackendStages.BytePieces
