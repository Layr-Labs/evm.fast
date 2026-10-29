import InitECandidate.Proofs.BackendStages.BytesData795
import InitECandidate.Proofs.BackendStages.BytePiecesData795
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section795_eq : ByteData.bytes795 = [piece795_0, piece795_1].flatten := by
  rw [piece795_0_eq, piece795_1_eq]
  rfl
#print axioms section795_eq
end InitECandidate.Proofs.BackendStages.BytePieces
