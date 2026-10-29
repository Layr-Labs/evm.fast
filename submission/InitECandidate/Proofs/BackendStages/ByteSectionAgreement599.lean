import InitECandidate.Proofs.BackendStages.BytesData599
import InitECandidate.Proofs.BackendStages.BytePiecesData599
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section599_eq : ByteData.bytes599 = [piece599_0, piece599_1].flatten := by
  rw [piece599_0_eq, piece599_1_eq]
  rfl
#print axioms section599_eq
end InitECandidate.Proofs.BackendStages.BytePieces
