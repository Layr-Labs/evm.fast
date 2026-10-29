import InitECandidate.Proofs.BackendStages.BytesData696
import InitECandidate.Proofs.BackendStages.BytePiecesData696
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section696_eq : ByteData.bytes696 = [piece696_0, piece696_1].flatten := by
  rw [piece696_0_eq, piece696_1_eq]
  rfl
#print axioms section696_eq
end InitECandidate.Proofs.BackendStages.BytePieces
