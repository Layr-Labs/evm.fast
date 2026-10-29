import InitECandidate.Proofs.BackendStages.BytesData204
import InitECandidate.Proofs.BackendStages.BytePiecesData204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section204_eq : ByteData.bytes204 = [piece204_0].flatten := by
  rw [piece204_0_eq]
  rfl
#print axioms section204_eq
end InitECandidate.Proofs.BackendStages.BytePieces
