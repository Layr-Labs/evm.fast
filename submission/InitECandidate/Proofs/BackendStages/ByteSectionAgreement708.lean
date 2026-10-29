import InitECandidate.Proofs.BackendStages.BytesData708
import InitECandidate.Proofs.BackendStages.BytePiecesData708
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section708_eq : ByteData.bytes708 = [piece708_0].flatten := by
  rw [piece708_0_eq]
  rfl
#print axioms section708_eq
end InitECandidate.Proofs.BackendStages.BytePieces
