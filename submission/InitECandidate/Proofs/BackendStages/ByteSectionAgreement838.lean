import InitECandidate.Proofs.BackendStages.BytesData838
import InitECandidate.Proofs.BackendStages.BytePiecesData838
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section838_eq : ByteData.bytes838 = [piece838_0, piece838_1].flatten := by
  rw [piece838_0_eq, piece838_1_eq]
  rfl
#print axioms section838_eq
end InitECandidate.Proofs.BackendStages.BytePieces
