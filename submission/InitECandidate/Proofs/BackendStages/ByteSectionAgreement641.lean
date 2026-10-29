import InitECandidate.Proofs.BackendStages.BytesData641
import InitECandidate.Proofs.BackendStages.BytePiecesData641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section641_eq : ByteData.bytes641 = [piece641_0, piece641_1].flatten := by
  rw [piece641_0_eq, piece641_1_eq]
  rfl
#print axioms section641_eq
end InitECandidate.Proofs.BackendStages.BytePieces
