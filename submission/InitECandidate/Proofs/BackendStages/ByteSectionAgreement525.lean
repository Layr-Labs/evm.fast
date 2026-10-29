import InitECandidate.Proofs.BackendStages.BytesData525
import InitECandidate.Proofs.BackendStages.BytePiecesData525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section525_eq : ByteData.bytes525 = [piece525_0].flatten := by
  rw [piece525_0_eq]
  rfl
#print axioms section525_eq
end InitECandidate.Proofs.BackendStages.BytePieces
