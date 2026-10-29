import InitECandidate.Proofs.BackendStages.BytesData754
import InitECandidate.Proofs.BackendStages.BytePiecesData754
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section754_eq : ByteData.bytes754 = [piece754_0, piece754_1].flatten := by
  rw [piece754_0_eq, piece754_1_eq]
  rfl
#print axioms section754_eq
end InitECandidate.Proofs.BackendStages.BytePieces
