import InitECandidate.Proofs.BackendStages.BytesData261
import InitECandidate.Proofs.BackendStages.BytePiecesData261
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section261_eq : ByteData.bytes261 = [piece261_0, piece261_1].flatten := by
  rw [piece261_0_eq, piece261_1_eq]
  rfl
#print axioms section261_eq
end InitECandidate.Proofs.BackendStages.BytePieces
