import InitECandidate.Proofs.BackendStages.BytesData824
import InitECandidate.Proofs.BackendStages.BytePiecesData824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section824_eq : ByteData.bytes824 = [piece824_0, piece824_1].flatten := by
  rw [piece824_0_eq, piece824_1_eq]
  rfl
#print axioms section824_eq
end InitECandidate.Proofs.BackendStages.BytePieces
