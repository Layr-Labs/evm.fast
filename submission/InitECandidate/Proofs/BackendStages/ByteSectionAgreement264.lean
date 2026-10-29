import InitECandidate.Proofs.BackendStages.BytesData264
import InitECandidate.Proofs.BackendStages.BytePiecesData264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section264_eq : ByteData.bytes264 = [piece264_0].flatten := by
  rw [piece264_0_eq]
  rfl
#print axioms section264_eq
end InitECandidate.Proofs.BackendStages.BytePieces
