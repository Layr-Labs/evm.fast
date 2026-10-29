import InitECandidate.Proofs.BackendStages.BytesData837
import InitECandidate.Proofs.BackendStages.BytePiecesData837
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section837_eq : ByteData.bytes837 = [piece837_0].flatten := by
  rw [piece837_0_eq]
  rfl
#print axioms section837_eq
end InitECandidate.Proofs.BackendStages.BytePieces
