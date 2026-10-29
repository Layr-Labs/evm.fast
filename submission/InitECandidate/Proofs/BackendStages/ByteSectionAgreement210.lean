import InitECandidate.Proofs.BackendStages.BytesData210
import InitECandidate.Proofs.BackendStages.BytePiecesData210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section210_eq : ByteData.bytes210 = [piece210_0, piece210_1].flatten := by
  rw [piece210_0_eq, piece210_1_eq]
  rfl
#print axioms section210_eq
end InitECandidate.Proofs.BackendStages.BytePieces
