import InitECandidate.Proofs.BackendStages.BytesData317
import InitECandidate.Proofs.BackendStages.BytePiecesData317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section317_eq : ByteData.bytes317 = [piece317_0, piece317_1].flatten := by
  rw [piece317_0_eq, piece317_1_eq]
  rfl
#print axioms section317_eq
end InitECandidate.Proofs.BackendStages.BytePieces
