import InitECandidate.Proofs.BackendStages.BytesData571
import InitECandidate.Proofs.BackendStages.BytePiecesData571
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section571_eq : ByteData.bytes571 = [piece571_0].flatten := by
  rw [piece571_0_eq]
  rfl
#print axioms section571_eq
end InitECandidate.Proofs.BackendStages.BytePieces
