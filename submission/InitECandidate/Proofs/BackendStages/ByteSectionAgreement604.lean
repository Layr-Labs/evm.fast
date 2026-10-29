import InitECandidate.Proofs.BackendStages.BytesData604
import InitECandidate.Proofs.BackendStages.BytePiecesData604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section604_eq : ByteData.bytes604 = [piece604_0].flatten := by
  rw [piece604_0_eq]
  rfl
#print axioms section604_eq
end InitECandidate.Proofs.BackendStages.BytePieces
