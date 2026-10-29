import InitECandidate.Proofs.BackendStages.BytesData709
import InitECandidate.Proofs.BackendStages.BytePiecesData709
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section709_eq : ByteData.bytes709 = [piece709_0].flatten := by
  rw [piece709_0_eq]
  rfl
#print axioms section709_eq
end InitECandidate.Proofs.BackendStages.BytePieces
