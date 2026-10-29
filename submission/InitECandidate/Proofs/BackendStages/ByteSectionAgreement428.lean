import InitECandidate.Proofs.BackendStages.BytesData428
import InitECandidate.Proofs.BackendStages.BytePiecesData428
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section428_eq : ByteData.bytes428 = [piece428_0].flatten := by
  rw [piece428_0_eq]
  rfl
#print axioms section428_eq
end InitECandidate.Proofs.BackendStages.BytePieces
