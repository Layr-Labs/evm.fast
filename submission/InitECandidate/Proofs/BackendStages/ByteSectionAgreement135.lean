import InitECandidate.Proofs.BackendStages.BytesData135
import InitECandidate.Proofs.BackendStages.BytePiecesData135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section135_eq : ByteData.bytes135 = [piece135_0].flatten := by
  rw [piece135_0_eq]
  rfl
#print axioms section135_eq
end InitECandidate.Proofs.BackendStages.BytePieces
