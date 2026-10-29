import InitECandidate.Proofs.BackendStages.BytesData84
import InitECandidate.Proofs.BackendStages.BytePiecesData84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section84_eq : ByteData.bytes84 = [piece84_0].flatten := by
  rw [piece84_0_eq]
  rfl
#print axioms section84_eq
end InitECandidate.Proofs.BackendStages.BytePieces
