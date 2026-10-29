import InitECandidate.Proofs.BackendStages.BytesData845
import InitECandidate.Proofs.BackendStages.BytePiecesData845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section845_eq : ByteData.bytes845 = [piece845_0].flatten := by
  rw [piece845_0_eq]
  rfl
#print axioms section845_eq
end InitECandidate.Proofs.BackendStages.BytePieces
