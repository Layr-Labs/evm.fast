import InitECandidate.Proofs.BackendStages.BytesData82
import InitECandidate.Proofs.BackendStages.BytePiecesData82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section82_eq : ByteData.bytes82 = [piece82_0, piece82_1].flatten := by
  rw [piece82_0_eq, piece82_1_eq]
  rfl
#print axioms section82_eq
end InitECandidate.Proofs.BackendStages.BytePieces
