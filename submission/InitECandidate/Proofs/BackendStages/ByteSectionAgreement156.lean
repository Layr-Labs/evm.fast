import InitECandidate.Proofs.BackendStages.BytesData156
import InitECandidate.Proofs.BackendStages.BytePiecesData156
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section156_eq : ByteData.bytes156 = [piece156_0, piece156_1].flatten := by
  rw [piece156_0_eq, piece156_1_eq]
  rfl
#print axioms section156_eq
end InitECandidate.Proofs.BackendStages.BytePieces
