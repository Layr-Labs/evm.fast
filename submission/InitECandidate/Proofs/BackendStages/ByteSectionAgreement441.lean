import InitECandidate.Proofs.BackendStages.BytesData441
import InitECandidate.Proofs.BackendStages.BytePiecesData441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section441_eq : ByteData.bytes441 = [piece441_0].flatten := by
  rw [piece441_0_eq]
  rfl
#print axioms section441_eq
end InitECandidate.Proofs.BackendStages.BytePieces
