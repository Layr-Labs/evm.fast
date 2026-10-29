import InitECandidate.Proofs.BackendStages.BytesData620
import InitECandidate.Proofs.BackendStages.BytePiecesData620
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section620_eq : ByteData.bytes620 = [piece620_0].flatten := by
  rw [piece620_0_eq]
  rfl
#print axioms section620_eq
end InitECandidate.Proofs.BackendStages.BytePieces
