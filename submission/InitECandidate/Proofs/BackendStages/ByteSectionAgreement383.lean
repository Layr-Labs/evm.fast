import InitECandidate.Proofs.BackendStages.BytesData383
import InitECandidate.Proofs.BackendStages.BytePiecesData383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section383_eq : ByteData.bytes383 = [piece383_0].flatten := by
  rw [piece383_0_eq]
  rfl
#print axioms section383_eq
end InitECandidate.Proofs.BackendStages.BytePieces
