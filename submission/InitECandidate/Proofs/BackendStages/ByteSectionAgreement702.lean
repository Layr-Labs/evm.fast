import InitECandidate.Proofs.BackendStages.BytesData702
import InitECandidate.Proofs.BackendStages.BytePiecesData702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section702_eq : ByteData.bytes702 = [piece702_0].flatten := by
  rw [piece702_0_eq]
  rfl
#print axioms section702_eq
end InitECandidate.Proofs.BackendStages.BytePieces
