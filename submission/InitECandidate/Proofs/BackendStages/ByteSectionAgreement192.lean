import InitECandidate.Proofs.BackendStages.BytesData192
import InitECandidate.Proofs.BackendStages.BytePiecesData192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section192_eq : ByteData.bytes192 = [piece192_0, piece192_1].flatten := by
  rw [piece192_0_eq, piece192_1_eq]
  rfl
#print axioms section192_eq
end InitECandidate.Proofs.BackendStages.BytePieces
