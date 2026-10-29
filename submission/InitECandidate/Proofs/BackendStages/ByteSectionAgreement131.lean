import InitECandidate.Proofs.BackendStages.BytesData131
import InitECandidate.Proofs.BackendStages.BytePiecesData131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section131_eq : ByteData.bytes131 = [piece131_0].flatten := by
  rw [piece131_0_eq]
  rfl
#print axioms section131_eq
end InitECandidate.Proofs.BackendStages.BytePieces
