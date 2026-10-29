import InitECandidate.Proofs.BackendStages.BytesData695
import InitECandidate.Proofs.BackendStages.BytePiecesData695
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section695_eq : ByteData.bytes695 = [piece695_0, piece695_1].flatten := by
  rw [piece695_0_eq, piece695_1_eq]
  rfl
#print axioms section695_eq
end InitECandidate.Proofs.BackendStages.BytePieces
