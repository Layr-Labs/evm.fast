import InitECandidate.Proofs.BackendStages.BytesData158
import InitECandidate.Proofs.BackendStages.BytePiecesData158
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section158_eq : ByteData.bytes158 = [piece158_0].flatten := by
  rw [piece158_0_eq]
  rfl
#print axioms section158_eq
end InitECandidate.Proofs.BackendStages.BytePieces
