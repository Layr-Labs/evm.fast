import InitECandidate.Proofs.BackendStages.BytesData805
import InitECandidate.Proofs.BackendStages.BytePiecesData805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section805_eq : ByteData.bytes805 = [piece805_0, piece805_1].flatten := by
  rw [piece805_0_eq, piece805_1_eq]
  rfl
#print axioms section805_eq
end InitECandidate.Proofs.BackendStages.BytePieces
