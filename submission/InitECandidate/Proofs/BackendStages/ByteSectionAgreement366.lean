import InitECandidate.Proofs.BackendStages.BytesData366
import InitECandidate.Proofs.BackendStages.BytePiecesData366
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section366_eq : ByteData.bytes366 = [piece366_0].flatten := by
  rw [piece366_0_eq]
  rfl
#print axioms section366_eq
end InitECandidate.Proofs.BackendStages.BytePieces
