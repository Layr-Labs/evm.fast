import InitECandidate.Proofs.BackendStages.BytesData417
import InitECandidate.Proofs.BackendStages.BytePiecesData417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section417_eq : ByteData.bytes417 = [piece417_0].flatten := by
  rw [piece417_0_eq]
  rfl
#print axioms section417_eq
end InitECandidate.Proofs.BackendStages.BytePieces
