import InitECandidate.Proofs.BackendStages.BytesData798
import InitECandidate.Proofs.BackendStages.BytePiecesData798
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section798_eq : ByteData.bytes798 = [piece798_0, piece798_1].flatten := by
  rw [piece798_0_eq, piece798_1_eq]
  rfl
#print axioms section798_eq
end InitECandidate.Proofs.BackendStages.BytePieces
