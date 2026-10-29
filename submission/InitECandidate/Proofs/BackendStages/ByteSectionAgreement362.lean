import InitECandidate.Proofs.BackendStages.BytesData362
import InitECandidate.Proofs.BackendStages.BytePiecesData362
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section362_eq : ByteData.bytes362 = [piece362_0].flatten := by
  rw [piece362_0_eq]
  rfl
#print axioms section362_eq
end InitECandidate.Proofs.BackendStages.BytePieces
