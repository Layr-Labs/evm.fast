import InitECandidate.Proofs.BackendStages.BytesData429
import InitECandidate.Proofs.BackendStages.BytePiecesData429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section429_eq : ByteData.bytes429 = [piece429_0].flatten := by
  rw [piece429_0_eq]
  rfl
#print axioms section429_eq
end InitECandidate.Proofs.BackendStages.BytePieces
