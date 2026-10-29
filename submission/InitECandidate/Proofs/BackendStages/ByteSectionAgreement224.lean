import InitECandidate.Proofs.BackendStages.BytesData224
import InitECandidate.Proofs.BackendStages.BytePiecesData224
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section224_eq : ByteData.bytes224 = [piece224_0, piece224_1, piece224_2].flatten := by
  rw [piece224_0_eq, piece224_1_eq, piece224_2_eq]
  rfl
#print axioms section224_eq
end InitECandidate.Proofs.BackendStages.BytePieces
