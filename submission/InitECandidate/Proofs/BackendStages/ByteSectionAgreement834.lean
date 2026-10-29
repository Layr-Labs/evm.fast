import InitECandidate.Proofs.BackendStages.BytesData834
import InitECandidate.Proofs.BackendStages.BytePiecesData834
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section834_eq : ByteData.bytes834 = [piece834_0, piece834_1].flatten := by
  rw [piece834_0_eq, piece834_1_eq]
  rfl
#print axioms section834_eq
end InitECandidate.Proofs.BackendStages.BytePieces
