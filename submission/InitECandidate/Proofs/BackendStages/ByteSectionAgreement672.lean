import InitECandidate.Proofs.BackendStages.BytesData672
import InitECandidate.Proofs.BackendStages.BytePiecesData672
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section672_eq : ByteData.bytes672 = [piece672_0].flatten := by
  rw [piece672_0_eq]
  rfl
#print axioms section672_eq
end InitECandidate.Proofs.BackendStages.BytePieces
