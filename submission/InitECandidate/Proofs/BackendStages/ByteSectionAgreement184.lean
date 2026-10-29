import InitECandidate.Proofs.BackendStages.BytesData184
import InitECandidate.Proofs.BackendStages.BytePiecesData184
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section184_eq : ByteData.bytes184 = [piece184_0].flatten := by
  rw [piece184_0_eq]
  rfl
#print axioms section184_eq
end InitECandidate.Proofs.BackendStages.BytePieces
