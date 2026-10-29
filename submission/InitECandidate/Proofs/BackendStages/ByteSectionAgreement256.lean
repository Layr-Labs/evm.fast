import InitECandidate.Proofs.BackendStages.BytesData256
import InitECandidate.Proofs.BackendStages.BytePiecesData256
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section256_eq : ByteData.bytes256 = [piece256_0, piece256_1].flatten := by
  rw [piece256_0_eq, piece256_1_eq]
  rfl
#print axioms section256_eq
end InitECandidate.Proofs.BackendStages.BytePieces
