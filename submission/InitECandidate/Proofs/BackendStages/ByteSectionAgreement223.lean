import InitECandidate.Proofs.BackendStages.BytesData223
import InitECandidate.Proofs.BackendStages.BytePiecesData223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section223_eq : ByteData.bytes223 = [piece223_0, piece223_1].flatten := by
  rw [piece223_0_eq, piece223_1_eq]
  rfl
#print axioms section223_eq
end InitECandidate.Proofs.BackendStages.BytePieces
