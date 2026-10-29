import InitECandidate.Proofs.BackendStages.BytesData371
import InitECandidate.Proofs.BackendStages.BytePiecesData371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section371_eq : ByteData.bytes371 = [piece371_0].flatten := by
  rw [piece371_0_eq]
  rfl
#print axioms section371_eq
end InitECandidate.Proofs.BackendStages.BytePieces
