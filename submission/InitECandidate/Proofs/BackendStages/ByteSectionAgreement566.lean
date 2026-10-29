import InitECandidate.Proofs.BackendStages.BytesData566
import InitECandidate.Proofs.BackendStages.BytePiecesData566
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section566_eq : ByteData.bytes566 = [piece566_0, piece566_1].flatten := by
  rw [piece566_0_eq, piece566_1_eq]
  rfl
#print axioms section566_eq
end InitECandidate.Proofs.BackendStages.BytePieces
