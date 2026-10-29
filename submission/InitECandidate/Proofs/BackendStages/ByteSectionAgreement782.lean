import InitECandidate.Proofs.BackendStages.BytesData782
import InitECandidate.Proofs.BackendStages.BytePiecesData782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section782_eq : ByteData.bytes782 = [piece782_0, piece782_1].flatten := by
  rw [piece782_0_eq, piece782_1_eq]
  rfl
#print axioms section782_eq
end InitECandidate.Proofs.BackendStages.BytePieces
