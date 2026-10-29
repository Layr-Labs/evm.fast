import InitECandidate.Proofs.BackendStages.BytesData181
import InitECandidate.Proofs.BackendStages.BytePiecesData181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section181_eq : ByteData.bytes181 = [piece181_0].flatten := by
  rw [piece181_0_eq]
  rfl
#print axioms section181_eq
end InitECandidate.Proofs.BackendStages.BytePieces
