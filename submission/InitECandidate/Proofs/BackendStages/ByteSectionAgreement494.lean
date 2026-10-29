import InitECandidate.Proofs.BackendStages.BytesData494
import InitECandidate.Proofs.BackendStages.BytePiecesData494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section494_eq : ByteData.bytes494 = [piece494_0].flatten := by
  rw [piece494_0_eq]
  rfl
#print axioms section494_eq
end InitECandidate.Proofs.BackendStages.BytePieces
