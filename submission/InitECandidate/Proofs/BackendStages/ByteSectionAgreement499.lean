import InitECandidate.Proofs.BackendStages.BytesData499
import InitECandidate.Proofs.BackendStages.BytePiecesData499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section499_eq : ByteData.bytes499 = [piece499_0].flatten := by
  rw [piece499_0_eq]
  rfl
#print axioms section499_eq
end InitECandidate.Proofs.BackendStages.BytePieces
