import InitECandidate.Proofs.BackendStages.BytesData678
import InitECandidate.Proofs.BackendStages.BytePiecesData678
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section678_eq : ByteData.bytes678 = [piece678_0].flatten := by
  rw [piece678_0_eq]
  rfl
#print axioms section678_eq
end InitECandidate.Proofs.BackendStages.BytePieces
