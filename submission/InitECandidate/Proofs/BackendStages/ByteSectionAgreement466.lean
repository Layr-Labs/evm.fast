import InitECandidate.Proofs.BackendStages.BytesData466
import InitECandidate.Proofs.BackendStages.BytePiecesData466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section466_eq : ByteData.bytes466 = [piece466_0].flatten := by
  rw [piece466_0_eq]
  rfl
#print axioms section466_eq
end InitECandidate.Proofs.BackendStages.BytePieces
