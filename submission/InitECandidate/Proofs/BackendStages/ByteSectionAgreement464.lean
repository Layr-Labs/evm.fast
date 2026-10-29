import InitECandidate.Proofs.BackendStages.BytesData464
import InitECandidate.Proofs.BackendStages.BytePiecesData464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section464_eq : ByteData.bytes464 = [piece464_0].flatten := by
  rw [piece464_0_eq]
  rfl
#print axioms section464_eq
end InitECandidate.Proofs.BackendStages.BytePieces
