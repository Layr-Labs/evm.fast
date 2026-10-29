import InitECandidate.Proofs.BackendStages.BytesData176
import InitECandidate.Proofs.BackendStages.BytePiecesData176
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section176_eq : ByteData.bytes176 = [piece176_0].flatten := by
  rw [piece176_0_eq]
  rfl
#print axioms section176_eq
end InitECandidate.Proofs.BackendStages.BytePieces
