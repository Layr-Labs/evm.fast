import InitECandidate.Proofs.BackendStages.BytesData750
import InitECandidate.Proofs.BackendStages.BytePiecesData750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section750_eq : ByteData.bytes750 = [piece750_0].flatten := by
  rw [piece750_0_eq]
  rfl
#print axioms section750_eq
end InitECandidate.Proofs.BackendStages.BytePieces
