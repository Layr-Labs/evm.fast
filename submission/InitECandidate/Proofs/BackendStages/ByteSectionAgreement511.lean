import InitECandidate.Proofs.BackendStages.BytesData511
import InitECandidate.Proofs.BackendStages.BytePiecesData511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section511_eq : ByteData.bytes511 = [piece511_0].flatten := by
  rw [piece511_0_eq]
  rfl
#print axioms section511_eq
end InitECandidate.Proofs.BackendStages.BytePieces
