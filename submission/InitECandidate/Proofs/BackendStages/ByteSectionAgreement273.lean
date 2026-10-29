import InitECandidate.Proofs.BackendStages.BytesData273
import InitECandidate.Proofs.BackendStages.BytePiecesData273
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section273_eq : ByteData.bytes273 = [piece273_0].flatten := by
  rw [piece273_0_eq]
  rfl
#print axioms section273_eq
end InitECandidate.Proofs.BackendStages.BytePieces
