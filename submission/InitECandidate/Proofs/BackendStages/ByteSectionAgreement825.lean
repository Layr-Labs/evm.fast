import InitECandidate.Proofs.BackendStages.BytesData825
import InitECandidate.Proofs.BackendStages.BytePiecesData825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section825_eq : ByteData.bytes825 = [piece825_0].flatten := by
  rw [piece825_0_eq]
  rfl
#print axioms section825_eq
end InitECandidate.Proofs.BackendStages.BytePieces
