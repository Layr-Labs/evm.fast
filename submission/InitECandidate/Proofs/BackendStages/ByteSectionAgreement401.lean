import InitECandidate.Proofs.BackendStages.BytesData401
import InitECandidate.Proofs.BackendStages.BytePiecesData401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section401_eq : ByteData.bytes401 = [piece401_0].flatten := by
  rw [piece401_0_eq]
  rfl
#print axioms section401_eq
end InitECandidate.Proofs.BackendStages.BytePieces
