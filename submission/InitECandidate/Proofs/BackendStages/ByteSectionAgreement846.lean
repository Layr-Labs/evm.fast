import InitECandidate.Proofs.BackendStages.BytesData846
import InitECandidate.Proofs.BackendStages.BytePiecesData846
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section846_eq : ByteData.bytes846 = [piece846_0].flatten := by
  rw [piece846_0_eq]
  rfl
#print axioms section846_eq
end InitECandidate.Proofs.BackendStages.BytePieces
