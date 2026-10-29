import InitECandidate.Proofs.BackendStages.BytesData598
import InitECandidate.Proofs.BackendStages.BytePiecesData598
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section598_eq : ByteData.bytes598 = [piece598_0].flatten := by
  rw [piece598_0_eq]
  rfl
#print axioms section598_eq
end InitECandidate.Proofs.BackendStages.BytePieces
