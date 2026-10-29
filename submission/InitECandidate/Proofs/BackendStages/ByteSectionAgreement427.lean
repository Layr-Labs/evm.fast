import InitECandidate.Proofs.BackendStages.BytesData427
import InitECandidate.Proofs.BackendStages.BytePiecesData427
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section427_eq : ByteData.bytes427 = [piece427_0].flatten := by
  rw [piece427_0_eq]
  rfl
#print axioms section427_eq
end InitECandidate.Proofs.BackendStages.BytePieces
