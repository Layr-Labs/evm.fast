import InitECandidate.Proofs.BackendStages.BytesData755
import InitECandidate.Proofs.BackendStages.BytePiecesData755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section755_eq : ByteData.bytes755 = [piece755_0].flatten := by
  rw [piece755_0_eq]
  rfl
#print axioms section755_eq
end InitECandidate.Proofs.BackendStages.BytePieces
