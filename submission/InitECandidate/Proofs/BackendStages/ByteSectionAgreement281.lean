import InitECandidate.Proofs.BackendStages.BytesData281
import InitECandidate.Proofs.BackendStages.BytePiecesData281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section281_eq : ByteData.bytes281 = [piece281_0].flatten := by
  rw [piece281_0_eq]
  rfl
#print axioms section281_eq
end InitECandidate.Proofs.BackendStages.BytePieces
