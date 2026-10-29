import InitECandidate.Proofs.BackendStages.BytesData475
import InitECandidate.Proofs.BackendStages.BytePiecesData475
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section475_eq : ByteData.bytes475 = [piece475_0].flatten := by
  rw [piece475_0_eq]
  rfl
#print axioms section475_eq
end InitECandidate.Proofs.BackendStages.BytePieces
