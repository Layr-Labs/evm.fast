import InitECandidate.Proofs.BackendStages.BytesData220
import InitECandidate.Proofs.BackendStages.BytePiecesData220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section220_eq : ByteData.bytes220 = [piece220_0].flatten := by
  rw [piece220_0_eq]
  rfl
#print axioms section220_eq
end InitECandidate.Proofs.BackendStages.BytePieces
