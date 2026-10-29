import InitECandidate.Proofs.BackendStages.BytesData447
import InitECandidate.Proofs.BackendStages.BytePiecesData447
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section447_eq : ByteData.bytes447 = [piece447_0].flatten := by
  rw [piece447_0_eq]
  rfl
#print axioms section447_eq
end InitECandidate.Proofs.BackendStages.BytePieces
