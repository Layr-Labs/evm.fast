import InitECandidate.Proofs.BackendStages.BytesData592
import InitECandidate.Proofs.BackendStages.BytePiecesData592
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section592_eq : ByteData.bytes592 = [piece592_0].flatten := by
  rw [piece592_0_eq]
  rfl
#print axioms section592_eq
end InitECandidate.Proofs.BackendStages.BytePieces
