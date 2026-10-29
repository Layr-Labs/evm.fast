import InitECandidate.Proofs.BackendStages.BytesData257
import InitECandidate.Proofs.BackendStages.BytePiecesData257
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section257_eq : ByteData.bytes257 = [piece257_0].flatten := by
  rw [piece257_0_eq]
  rfl
#print axioms section257_eq
end InitECandidate.Proofs.BackendStages.BytePieces
