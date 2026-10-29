import InitECandidate.Proofs.BackendStages.BytesData397
import InitECandidate.Proofs.BackendStages.BytePiecesData397
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section397_eq : ByteData.bytes397 = [piece397_0].flatten := by
  rw [piece397_0_eq]
  rfl
#print axioms section397_eq
end InitECandidate.Proofs.BackendStages.BytePieces
