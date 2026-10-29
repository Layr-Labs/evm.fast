import InitECandidate.Proofs.BackendStages.BytesData498
import InitECandidate.Proofs.BackendStages.BytePiecesData498
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section498_eq : ByteData.bytes498 = [piece498_0, piece498_1].flatten := by
  rw [piece498_0_eq, piece498_1_eq]
  rfl
#print axioms section498_eq
end InitECandidate.Proofs.BackendStages.BytePieces
