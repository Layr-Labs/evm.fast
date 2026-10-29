import InitECandidate.Proofs.BackendStages.BytesData454
import InitECandidate.Proofs.BackendStages.BytePiecesData454
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section454_eq : ByteData.bytes454 = [piece454_0, piece454_1].flatten := by
  rw [piece454_0_eq, piece454_1_eq]
  rfl
#print axioms section454_eq
end InitECandidate.Proofs.BackendStages.BytePieces
