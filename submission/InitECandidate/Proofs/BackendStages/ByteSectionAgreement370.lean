import InitECandidate.Proofs.BackendStages.BytesData370
import InitECandidate.Proofs.BackendStages.BytePiecesData370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section370_eq : ByteData.bytes370 = [piece370_0, piece370_1].flatten := by
  rw [piece370_0_eq, piece370_1_eq]
  rfl
#print axioms section370_eq
end InitECandidate.Proofs.BackendStages.BytePieces
