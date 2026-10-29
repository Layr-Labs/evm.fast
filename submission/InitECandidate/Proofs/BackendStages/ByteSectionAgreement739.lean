import InitECandidate.Proofs.BackendStages.BytesData739
import InitECandidate.Proofs.BackendStages.BytePiecesData739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section739_eq : ByteData.bytes739 = [piece739_0, piece739_1].flatten := by
  rw [piece739_0_eq, piece739_1_eq]
  rfl
#print axioms section739_eq
end InitECandidate.Proofs.BackendStages.BytePieces
