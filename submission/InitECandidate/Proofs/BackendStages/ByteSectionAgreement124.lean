import InitECandidate.Proofs.BackendStages.BytesData124
import InitECandidate.Proofs.BackendStages.BytePiecesData124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section124_eq : ByteData.bytes124 = [piece124_0].flatten := by
  rw [piece124_0_eq]
  rfl
#print axioms section124_eq
end InitECandidate.Proofs.BackendStages.BytePieces
