import InitECandidate.Proofs.BackendStages.BytesData760
import InitECandidate.Proofs.BackendStages.BytePiecesData760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section760_eq : ByteData.bytes760 = [piece760_0].flatten := by
  rw [piece760_0_eq]
  rfl
#print axioms section760_eq
end InitECandidate.Proofs.BackendStages.BytePieces
