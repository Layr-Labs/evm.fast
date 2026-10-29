import InitECandidate.Proofs.BackendStages.BytesData130
import InitECandidate.Proofs.BackendStages.BytePiecesData130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section130_eq : ByteData.bytes130 = [piece130_0].flatten := by
  rw [piece130_0_eq]
  rfl
#print axioms section130_eq
end InitECandidate.Proofs.BackendStages.BytePieces
