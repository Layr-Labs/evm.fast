import InitECandidate.Proofs.BackendStages.BytesData351
import InitECandidate.Proofs.BackendStages.BytePiecesData351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section351_eq : ByteData.bytes351 = [piece351_0].flatten := by
  rw [piece351_0_eq]
  rfl
#print axioms section351_eq
end InitECandidate.Proofs.BackendStages.BytePieces
