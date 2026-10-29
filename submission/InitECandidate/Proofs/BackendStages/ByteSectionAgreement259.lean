import InitECandidate.Proofs.BackendStages.BytesData259
import InitECandidate.Proofs.BackendStages.BytePiecesData259
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section259_eq : ByteData.bytes259 = [piece259_0, piece259_1].flatten := by
  rw [piece259_0_eq, piece259_1_eq]
  rfl
#print axioms section259_eq
end InitECandidate.Proofs.BackendStages.BytePieces
