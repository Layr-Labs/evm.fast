import InitECandidate.Proofs.BackendStages.BytesData332
import InitECandidate.Proofs.BackendStages.BytePiecesData332
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section332_eq : ByteData.bytes332 = [piece332_0].flatten := by
  rw [piece332_0_eq]
  rfl
#print axioms section332_eq
end InitECandidate.Proofs.BackendStages.BytePieces
