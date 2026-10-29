import InitECandidate.Proofs.BackendStages.BytesData432
import InitECandidate.Proofs.BackendStages.BytePiecesData432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section432_eq : ByteData.bytes432 = [piece432_0].flatten := by
  rw [piece432_0_eq]
  rfl
#print axioms section432_eq
end InitECandidate.Proofs.BackendStages.BytePieces
