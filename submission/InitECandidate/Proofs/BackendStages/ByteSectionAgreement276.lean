import InitECandidate.Proofs.BackendStages.BytesData276
import InitECandidate.Proofs.BackendStages.BytePiecesData276
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section276_eq : ByteData.bytes276 = [piece276_0, piece276_1].flatten := by
  rw [piece276_0_eq, piece276_1_eq]
  rfl
#print axioms section276_eq
end InitECandidate.Proofs.BackendStages.BytePieces
