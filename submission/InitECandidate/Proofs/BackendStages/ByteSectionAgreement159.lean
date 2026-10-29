import InitECandidate.Proofs.BackendStages.BytesData159
import InitECandidate.Proofs.BackendStages.BytePiecesData159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section159_eq : ByteData.bytes159 = [piece159_0].flatten := by
  rw [piece159_0_eq]
  rfl
#print axioms section159_eq
end InitECandidate.Proofs.BackendStages.BytePieces
