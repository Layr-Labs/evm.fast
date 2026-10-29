import InitECandidate.Proofs.BackendStages.BytesData354
import InitECandidate.Proofs.BackendStages.BytePiecesData354
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section354_eq : ByteData.bytes354 = [piece354_0].flatten := by
  rw [piece354_0_eq]
  rfl
#print axioms section354_eq
end InitECandidate.Proofs.BackendStages.BytePieces
