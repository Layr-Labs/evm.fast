import InitECandidate.Proofs.BackendStages.BytesData587
import InitECandidate.Proofs.BackendStages.BytePiecesData587
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section587_eq : ByteData.bytes587 = [piece587_0].flatten := by
  rw [piece587_0_eq]
  rfl
#print axioms section587_eq
end InitECandidate.Proofs.BackendStages.BytePieces
