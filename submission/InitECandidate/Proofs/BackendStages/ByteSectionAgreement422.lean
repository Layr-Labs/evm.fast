import InitECandidate.Proofs.BackendStages.BytesData422
import InitECandidate.Proofs.BackendStages.BytePiecesData422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section422_eq : ByteData.bytes422 = [piece422_0].flatten := by
  rw [piece422_0_eq]
  rfl
#print axioms section422_eq
end InitECandidate.Proofs.BackendStages.BytePieces
