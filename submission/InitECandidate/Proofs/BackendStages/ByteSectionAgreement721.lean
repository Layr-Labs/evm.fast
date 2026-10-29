import InitECandidate.Proofs.BackendStages.BytesData721
import InitECandidate.Proofs.BackendStages.BytePiecesData721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section721_eq : ByteData.bytes721 = [piece721_0].flatten := by
  rw [piece721_0_eq]
  rfl
#print axioms section721_eq
end InitECandidate.Proofs.BackendStages.BytePieces
