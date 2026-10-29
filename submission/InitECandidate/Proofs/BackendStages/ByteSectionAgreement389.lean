import InitECandidate.Proofs.BackendStages.BytesData389
import InitECandidate.Proofs.BackendStages.BytePiecesData389
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section389_eq : ByteData.bytes389 = [piece389_0].flatten := by
  rw [piece389_0_eq]
  rfl
#print axioms section389_eq
end InitECandidate.Proofs.BackendStages.BytePieces
