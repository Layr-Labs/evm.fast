import InitECandidate.Proofs.BackendStages.BytesData703
import InitECandidate.Proofs.BackendStages.BytePiecesData703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section703_eq : ByteData.bytes703 = [piece703_0].flatten := by
  rw [piece703_0_eq]
  rfl
#print axioms section703_eq
end InitECandidate.Proofs.BackendStages.BytePieces
