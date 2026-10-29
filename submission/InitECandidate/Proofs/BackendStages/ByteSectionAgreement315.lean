import InitECandidate.Proofs.BackendStages.BytesData315
import InitECandidate.Proofs.BackendStages.BytePiecesData315
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section315_eq : ByteData.bytes315 = [piece315_0].flatten := by
  rw [piece315_0_eq]
  rfl
#print axioms section315_eq
end InitECandidate.Proofs.BackendStages.BytePieces
