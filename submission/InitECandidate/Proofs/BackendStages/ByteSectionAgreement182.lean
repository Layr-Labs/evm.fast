import InitECandidate.Proofs.BackendStages.BytesData182
import InitECandidate.Proofs.BackendStages.BytePiecesData182
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section182_eq : ByteData.bytes182 = [piece182_0, piece182_1].flatten := by
  rw [piece182_0_eq, piece182_1_eq]
  rfl
#print axioms section182_eq
end InitECandidate.Proofs.BackendStages.BytePieces
