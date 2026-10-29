import InitECandidate.Proofs.BackendStages.BytesData685
import InitECandidate.Proofs.BackendStages.BytePiecesData685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section685_eq : ByteData.bytes685 = [piece685_0, piece685_1].flatten := by
  rw [piece685_0_eq, piece685_1_eq]
  rfl
#print axioms section685_eq
end InitECandidate.Proofs.BackendStages.BytePieces
