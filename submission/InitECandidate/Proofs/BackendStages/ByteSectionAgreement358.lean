import InitECandidate.Proofs.BackendStages.BytesData358
import InitECandidate.Proofs.BackendStages.BytePiecesData358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section358_eq : ByteData.bytes358 = [piece358_0].flatten := by
  rw [piece358_0_eq]
  rfl
#print axioms section358_eq
end InitECandidate.Proofs.BackendStages.BytePieces
