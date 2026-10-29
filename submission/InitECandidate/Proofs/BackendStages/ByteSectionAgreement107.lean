import InitECandidate.Proofs.BackendStages.BytesData107
import InitECandidate.Proofs.BackendStages.BytePiecesData107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section107_eq : ByteData.bytes107 = [piece107_0].flatten := by
  rw [piece107_0_eq]
  rfl
#print axioms section107_eq
end InitECandidate.Proofs.BackendStages.BytePieces
