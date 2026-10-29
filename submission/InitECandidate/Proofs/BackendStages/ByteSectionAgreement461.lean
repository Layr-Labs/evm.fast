import InitECandidate.Proofs.BackendStages.BytesData461
import InitECandidate.Proofs.BackendStages.BytePiecesData461
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section461_eq : ByteData.bytes461 = [piece461_0, piece461_1].flatten := by
  rw [piece461_0_eq, piece461_1_eq]
  rfl
#print axioms section461_eq
end InitECandidate.Proofs.BackendStages.BytePieces
