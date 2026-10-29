import InitECandidate.Proofs.BackendStages.BytesData542
import InitECandidate.Proofs.BackendStages.BytePiecesData542
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section542_eq : ByteData.bytes542 = [piece542_0].flatten := by
  rw [piece542_0_eq]
  rfl
#print axioms section542_eq
end InitECandidate.Proofs.BackendStages.BytePieces
