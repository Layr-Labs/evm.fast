import InitECandidate.Proofs.BackendStages.BytesData213
import InitECandidate.Proofs.BackendStages.BytePiecesData213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section213_eq : ByteData.bytes213 = [piece213_0].flatten := by
  rw [piece213_0_eq]
  rfl
#print axioms section213_eq
end InitECandidate.Proofs.BackendStages.BytePieces
