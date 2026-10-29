import InitECandidate.Proofs.BackendStages.BytesData199
import InitECandidate.Proofs.BackendStages.BytePiecesData199
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section199_eq : ByteData.bytes199 = [piece199_0].flatten := by
  rw [piece199_0_eq]
  rfl
#print axioms section199_eq
end InitECandidate.Proofs.BackendStages.BytePieces
