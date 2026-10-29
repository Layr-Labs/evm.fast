import InitECandidate.Proofs.BackendStages.BytesData801
import InitECandidate.Proofs.BackendStages.BytePiecesData801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section801_eq : ByteData.bytes801 = [piece801_0, piece801_1, piece801_2].flatten := by
  rw [piece801_0_eq, piece801_1_eq, piece801_2_eq]
  rfl
#print axioms section801_eq
end InitECandidate.Proofs.BackendStages.BytePieces
