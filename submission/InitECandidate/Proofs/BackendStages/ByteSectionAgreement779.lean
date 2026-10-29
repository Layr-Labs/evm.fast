import InitECandidate.Proofs.BackendStages.BytesData779
import InitECandidate.Proofs.BackendStages.BytePiecesData779
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section779_eq : ByteData.bytes779 = [piece779_0].flatten := by
  rw [piece779_0_eq]
  rfl
#print axioms section779_eq
end InitECandidate.Proofs.BackendStages.BytePieces
