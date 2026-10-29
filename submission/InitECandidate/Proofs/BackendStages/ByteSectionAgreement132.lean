import InitECandidate.Proofs.BackendStages.BytesData132
import InitECandidate.Proofs.BackendStages.BytePiecesData132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section132_eq : ByteData.bytes132 = [piece132_0].flatten := by
  rw [piece132_0_eq]
  rfl
#print axioms section132_eq
end InitECandidate.Proofs.BackendStages.BytePieces
