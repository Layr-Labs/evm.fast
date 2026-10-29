import InitECandidate.Proofs.BackendStages.BytesData482
import InitECandidate.Proofs.BackendStages.BytePiecesData482
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section482_eq : ByteData.bytes482 = [piece482_0].flatten := by
  rw [piece482_0_eq]
  rfl
#print axioms section482_eq
end InitECandidate.Proofs.BackendStages.BytePieces
