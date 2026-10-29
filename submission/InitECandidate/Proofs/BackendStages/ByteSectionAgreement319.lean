import InitECandidate.Proofs.BackendStages.BytesData319
import InitECandidate.Proofs.BackendStages.BytePiecesData319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section319_eq : ByteData.bytes319 = [piece319_0].flatten := by
  rw [piece319_0_eq]
  rfl
#print axioms section319_eq
end InitECandidate.Proofs.BackendStages.BytePieces
