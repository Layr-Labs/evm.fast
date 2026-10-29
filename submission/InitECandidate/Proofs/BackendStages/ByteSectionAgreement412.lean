import InitECandidate.Proofs.BackendStages.BytesData412
import InitECandidate.Proofs.BackendStages.BytePiecesData412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section412_eq : ByteData.bytes412 = [piece412_0].flatten := by
  rw [piece412_0_eq]
  rfl
#print axioms section412_eq
end InitECandidate.Proofs.BackendStages.BytePieces
