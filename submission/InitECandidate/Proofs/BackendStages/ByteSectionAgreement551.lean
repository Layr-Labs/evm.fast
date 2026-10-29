import InitECandidate.Proofs.BackendStages.BytesData551
import InitECandidate.Proofs.BackendStages.BytePiecesData551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section551_eq : ByteData.bytes551 = [piece551_0].flatten := by
  rw [piece551_0_eq]
  rfl
#print axioms section551_eq
end InitECandidate.Proofs.BackendStages.BytePieces
