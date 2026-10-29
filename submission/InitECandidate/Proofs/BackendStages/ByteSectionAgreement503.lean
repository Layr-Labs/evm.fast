import InitECandidate.Proofs.BackendStages.BytesData503
import InitECandidate.Proofs.BackendStages.BytePiecesData503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section503_eq : ByteData.bytes503 = [piece503_0, piece503_1].flatten := by
  rw [piece503_0_eq, piece503_1_eq]
  rfl
#print axioms section503_eq
end InitECandidate.Proofs.BackendStages.BytePieces
