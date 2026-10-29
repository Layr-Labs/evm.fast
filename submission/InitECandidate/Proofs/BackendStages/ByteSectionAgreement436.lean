import InitECandidate.Proofs.BackendStages.BytesData436
import InitECandidate.Proofs.BackendStages.BytePiecesData436
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section436_eq : ByteData.bytes436 = [piece436_0, piece436_1].flatten := by
  rw [piece436_0_eq, piece436_1_eq]
  rfl
#print axioms section436_eq
end InitECandidate.Proofs.BackendStages.BytePieces
