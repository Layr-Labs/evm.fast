import InitECandidate.Proofs.BackendStages.BytesData505
import InitECandidate.Proofs.BackendStages.BytePiecesData505
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section505_eq : ByteData.bytes505 = [piece505_0].flatten := by
  rw [piece505_0_eq]
  rfl
#print axioms section505_eq
end InitECandidate.Proofs.BackendStages.BytePieces
