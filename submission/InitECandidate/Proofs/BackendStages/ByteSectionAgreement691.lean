import InitECandidate.Proofs.BackendStages.BytesData691
import InitECandidate.Proofs.BackendStages.BytePiecesData691
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section691_eq : ByteData.bytes691 = [piece691_0, piece691_1].flatten := by
  rw [piece691_0_eq, piece691_1_eq]
  rfl
#print axioms section691_eq
end InitECandidate.Proofs.BackendStages.BytePieces
