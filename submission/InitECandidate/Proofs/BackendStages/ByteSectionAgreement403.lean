import InitECandidate.Proofs.BackendStages.BytesData403
import InitECandidate.Proofs.BackendStages.BytePiecesData403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section403_eq : ByteData.bytes403 = [piece403_0].flatten := by
  rw [piece403_0_eq]
  rfl
#print axioms section403_eq
end InitECandidate.Proofs.BackendStages.BytePieces
