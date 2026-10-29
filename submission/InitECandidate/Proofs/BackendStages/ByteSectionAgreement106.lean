import InitECandidate.Proofs.BackendStages.BytesData106
import InitECandidate.Proofs.BackendStages.BytePiecesData106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section106_eq : ByteData.bytes106 = [piece106_0].flatten := by
  rw [piece106_0_eq]
  rfl
#print axioms section106_eq
end InitECandidate.Proofs.BackendStages.BytePieces
