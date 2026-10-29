import InitECandidate.Proofs.BackendStages.BytesData808
import InitECandidate.Proofs.BackendStages.BytePiecesData808
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section808_eq : ByteData.bytes808 = [piece808_0, piece808_1].flatten := by
  rw [piece808_0_eq, piece808_1_eq]
  rfl
#print axioms section808_eq
end InitECandidate.Proofs.BackendStages.BytePieces
