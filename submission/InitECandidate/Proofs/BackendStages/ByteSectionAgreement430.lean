import InitECandidate.Proofs.BackendStages.BytesData430
import InitECandidate.Proofs.BackendStages.BytePiecesData430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section430_eq : ByteData.bytes430 = [piece430_0, piece430_1].flatten := by
  rw [piece430_0_eq, piece430_1_eq]
  rfl
#print axioms section430_eq
end InitECandidate.Proofs.BackendStages.BytePieces
