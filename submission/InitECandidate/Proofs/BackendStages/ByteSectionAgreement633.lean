import InitECandidate.Proofs.BackendStages.BytesData633
import InitECandidate.Proofs.BackendStages.BytePiecesData633
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section633_eq : ByteData.bytes633 = [piece633_0].flatten := by
  rw [piece633_0_eq]
  rfl
#print axioms section633_eq
end InitECandidate.Proofs.BackendStages.BytePieces
