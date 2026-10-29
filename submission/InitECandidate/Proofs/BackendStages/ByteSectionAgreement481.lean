import InitECandidate.Proofs.BackendStages.BytesData481
import InitECandidate.Proofs.BackendStages.BytePiecesData481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section481_eq : ByteData.bytes481 = [piece481_0].flatten := by
  rw [piece481_0_eq]
  rfl
#print axioms section481_eq
end InitECandidate.Proofs.BackendStages.BytePieces
