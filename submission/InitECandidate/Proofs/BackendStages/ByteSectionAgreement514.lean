import InitECandidate.Proofs.BackendStages.BytesData514
import InitECandidate.Proofs.BackendStages.BytePiecesData514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section514_eq : ByteData.bytes514 = [piece514_0, piece514_1].flatten := by
  rw [piece514_0_eq, piece514_1_eq]
  rfl
#print axioms section514_eq
end InitECandidate.Proofs.BackendStages.BytePieces
