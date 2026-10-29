import InitECandidate.Proofs.BackendStages.BytesData563
import InitECandidate.Proofs.BackendStages.BytePiecesData563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section563_eq : ByteData.bytes563 = [piece563_0].flatten := by
  rw [piece563_0_eq]
  rfl
#print axioms section563_eq
end InitECandidate.Proofs.BackendStages.BytePieces
