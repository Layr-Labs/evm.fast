import InitECandidate.Proofs.BackendStages.BytesData137
import InitECandidate.Proofs.BackendStages.BytePiecesData137
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section137_eq : ByteData.bytes137 = [piece137_0].flatten := by
  rw [piece137_0_eq]
  rfl
#print axioms section137_eq
end InitECandidate.Proofs.BackendStages.BytePieces
