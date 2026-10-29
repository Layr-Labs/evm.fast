import InitECandidate.Proofs.BackendStages.BytesData565
import InitECandidate.Proofs.BackendStages.BytePiecesData565
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section565_eq : ByteData.bytes565 = [piece565_0].flatten := by
  rw [piece565_0_eq]
  rfl
#print axioms section565_eq
end InitECandidate.Proofs.BackendStages.BytePieces
