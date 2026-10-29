import InitECandidate.Proofs.BackendStages.BytesData133
import InitECandidate.Proofs.BackendStages.BytePiecesData133
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section133_eq : ByteData.bytes133 = [piece133_0].flatten := by
  rw [piece133_0_eq]
  rfl
#print axioms section133_eq
end InitECandidate.Proofs.BackendStages.BytePieces
