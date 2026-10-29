import InitECandidate.Proofs.BackendStages.BytesData327
import InitECandidate.Proofs.BackendStages.BytePiecesData327
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section327_eq : ByteData.bytes327 = [piece327_0].flatten := by
  rw [piece327_0_eq]
  rfl
#print axioms section327_eq
end InitECandidate.Proofs.BackendStages.BytePieces
