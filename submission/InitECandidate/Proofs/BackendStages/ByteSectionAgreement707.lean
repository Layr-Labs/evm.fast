import InitECandidate.Proofs.BackendStages.BytesData707
import InitECandidate.Proofs.BackendStages.BytePiecesData707
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section707_eq : ByteData.bytes707 = [piece707_0].flatten := by
  rw [piece707_0_eq]
  rfl
#print axioms section707_eq
end InitECandidate.Proofs.BackendStages.BytePieces
