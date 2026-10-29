import InitECandidate.Proofs.BackendStages.BytesData299
import InitECandidate.Proofs.BackendStages.BytePiecesData299
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section299_eq : ByteData.bytes299 = [piece299_0].flatten := by
  rw [piece299_0_eq]
  rfl
#print axioms section299_eq
end InitECandidate.Proofs.BackendStages.BytePieces
