import InitECandidate.Proofs.BackendStages.BytesData341
import InitECandidate.Proofs.BackendStages.BytePiecesData341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section341_eq : ByteData.bytes341 = [piece341_0].flatten := by
  rw [piece341_0_eq]
  rfl
#print axioms section341_eq
end InitECandidate.Proofs.BackendStages.BytePieces
