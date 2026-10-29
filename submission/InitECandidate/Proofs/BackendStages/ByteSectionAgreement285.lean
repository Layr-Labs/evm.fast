import InitECandidate.Proofs.BackendStages.BytesData285
import InitECandidate.Proofs.BackendStages.BytePiecesData285
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section285_eq : ByteData.bytes285 = [piece285_0].flatten := by
  rw [piece285_0_eq]
  rfl
#print axioms section285_eq
end InitECandidate.Proofs.BackendStages.BytePieces
