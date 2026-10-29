import InitECandidate.Proofs.BackendStages.BytesData68
import InitECandidate.Proofs.BackendStages.BytePiecesData68
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section68_eq : ByteData.bytes68 = [piece68_0].flatten := by
  rw [piece68_0_eq]
  rfl
#print axioms section68_eq
end InitECandidate.Proofs.BackendStages.BytePieces
