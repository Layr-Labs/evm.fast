import InitECandidate.Proofs.BackendStages.BytesData123
import InitECandidate.Proofs.BackendStages.BytePiecesData123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section123_eq : ByteData.bytes123 = [piece123_0].flatten := by
  rw [piece123_0_eq]
  rfl
#print axioms section123_eq
end InitECandidate.Proofs.BackendStages.BytePieces
