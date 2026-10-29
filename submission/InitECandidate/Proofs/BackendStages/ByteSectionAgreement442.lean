import InitECandidate.Proofs.BackendStages.BytesData442
import InitECandidate.Proofs.BackendStages.BytePiecesData442
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section442_eq : ByteData.bytes442 = [piece442_0].flatten := by
  rw [piece442_0_eq]
  rfl
#print axioms section442_eq
end InitECandidate.Proofs.BackendStages.BytePieces
