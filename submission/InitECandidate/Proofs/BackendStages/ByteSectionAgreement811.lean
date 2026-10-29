import InitECandidate.Proofs.BackendStages.BytesData811
import InitECandidate.Proofs.BackendStages.BytePiecesData811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section811_eq : ByteData.bytes811 = [piece811_0, piece811_1].flatten := by
  rw [piece811_0_eq, piece811_1_eq]
  rfl
#print axioms section811_eq
end InitECandidate.Proofs.BackendStages.BytePieces
