import InitECandidate.Proofs.BackendStages.BytesData840
import InitECandidate.Proofs.BackendStages.BytePiecesData840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section840_eq : ByteData.bytes840 = [piece840_0].flatten := by
  rw [piece840_0_eq]
  rfl
#print axioms section840_eq
end InitECandidate.Proofs.BackendStages.BytePieces
