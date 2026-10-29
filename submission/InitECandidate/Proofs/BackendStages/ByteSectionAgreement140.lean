import InitECandidate.Proofs.BackendStages.BytesData140
import InitECandidate.Proofs.BackendStages.BytePiecesData140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section140_eq : ByteData.bytes140 = [piece140_0].flatten := by
  rw [piece140_0_eq]
  rfl
#print axioms section140_eq
end InitECandidate.Proofs.BackendStages.BytePieces
