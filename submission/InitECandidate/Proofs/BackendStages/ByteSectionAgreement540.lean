import InitECandidate.Proofs.BackendStages.BytesData540
import InitECandidate.Proofs.BackendStages.BytePiecesData540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section540_eq : ByteData.bytes540 = [piece540_0].flatten := by
  rw [piece540_0_eq]
  rfl
#print axioms section540_eq
end InitECandidate.Proofs.BackendStages.BytePieces
