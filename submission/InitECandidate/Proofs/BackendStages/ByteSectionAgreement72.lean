import InitECandidate.Proofs.BackendStages.BytesData72
import InitECandidate.Proofs.BackendStages.BytePiecesData72
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section72_eq : ByteData.bytes72 = [piece72_0].flatten := by
  rw [piece72_0_eq]
  rfl
#print axioms section72_eq
end InitECandidate.Proofs.BackendStages.BytePieces
