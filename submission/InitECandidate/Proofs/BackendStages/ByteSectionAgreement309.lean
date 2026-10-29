import InitECandidate.Proofs.BackendStages.BytesData309
import InitECandidate.Proofs.BackendStages.BytePiecesData309
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section309_eq : ByteData.bytes309 = [piece309_0].flatten := by
  rw [piece309_0_eq]
  rfl
#print axioms section309_eq
end InitECandidate.Proofs.BackendStages.BytePieces
