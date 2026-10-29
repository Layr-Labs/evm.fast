import InitECandidate.Proofs.BackendStages.BytesData634
import InitECandidate.Proofs.BackendStages.BytePiecesData634
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section634_eq : ByteData.bytes634 = [piece634_0].flatten := by
  rw [piece634_0_eq]
  rfl
#print axioms section634_eq
end InitECandidate.Proofs.BackendStages.BytePieces
