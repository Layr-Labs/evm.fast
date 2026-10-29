import InitECandidate.Proofs.BackendStages.BytesData576
import InitECandidate.Proofs.BackendStages.BytePiecesData576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section576_eq : ByteData.bytes576 = [piece576_0].flatten := by
  rw [piece576_0_eq]
  rfl
#print axioms section576_eq
end InitECandidate.Proofs.BackendStages.BytePieces
