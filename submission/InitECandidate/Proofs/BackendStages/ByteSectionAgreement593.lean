import InitECandidate.Proofs.BackendStages.BytesData593
import InitECandidate.Proofs.BackendStages.BytePiecesData593
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section593_eq : ByteData.bytes593 = [piece593_0, piece593_1].flatten := by
  rw [piece593_0_eq, piece593_1_eq]
  rfl
#print axioms section593_eq
end InitECandidate.Proofs.BackendStages.BytePieces
