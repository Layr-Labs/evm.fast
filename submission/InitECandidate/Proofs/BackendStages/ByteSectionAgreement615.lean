import InitECandidate.Proofs.BackendStages.BytesData615
import InitECandidate.Proofs.BackendStages.BytePiecesData615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section615_eq : ByteData.bytes615 = [piece615_0].flatten := by
  rw [piece615_0_eq]
  rfl
#print axioms section615_eq
end InitECandidate.Proofs.BackendStages.BytePieces
