import InitECandidate.Proofs.BackendStages.BytesData328
import InitECandidate.Proofs.BackendStages.BytePiecesData328
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section328_eq : ByteData.bytes328 = [piece328_0].flatten := by
  rw [piece328_0_eq]
  rfl
#print axioms section328_eq
end InitECandidate.Proofs.BackendStages.BytePieces
