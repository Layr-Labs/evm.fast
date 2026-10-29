import InitECandidate.Proofs.BackendStages.BytesData345
import InitECandidate.Proofs.BackendStages.BytePiecesData345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section345_eq : ByteData.bytes345 = [piece345_0, piece345_1].flatten := by
  rw [piece345_0_eq, piece345_1_eq]
  rfl
#print axioms section345_eq
end InitECandidate.Proofs.BackendStages.BytePieces
