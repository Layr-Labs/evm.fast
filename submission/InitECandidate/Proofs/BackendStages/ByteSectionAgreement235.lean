import InitECandidate.Proofs.BackendStages.BytesData235
import InitECandidate.Proofs.BackendStages.BytePiecesData235
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section235_eq : ByteData.bytes235 = [piece235_0, piece235_1].flatten := by
  rw [piece235_0_eq, piece235_1_eq]
  rfl
#print axioms section235_eq
end InitECandidate.Proofs.BackendStages.BytePieces
