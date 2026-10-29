import InitECandidate.Proofs.BackendStages.BytesData867
import InitECandidate.Proofs.BackendStages.BytePiecesData867
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section867_eq : ByteData.bytes867 = [piece867_0, piece867_1].flatten := by
  rw [piece867_0_eq, piece867_1_eq]
  rfl
#print axioms section867_eq
end InitECandidate.Proofs.BackendStages.BytePieces
