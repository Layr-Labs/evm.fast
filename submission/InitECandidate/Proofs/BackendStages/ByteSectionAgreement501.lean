import InitECandidate.Proofs.BackendStages.BytesData501
import InitECandidate.Proofs.BackendStages.BytePiecesData501
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section501_eq : ByteData.bytes501 = [piece501_0].flatten := by
  rw [piece501_0_eq]
  rfl
#print axioms section501_eq
end InitECandidate.Proofs.BackendStages.BytePieces
