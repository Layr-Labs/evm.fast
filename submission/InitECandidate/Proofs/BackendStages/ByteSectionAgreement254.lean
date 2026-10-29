import InitECandidate.Proofs.BackendStages.BytesData254
import InitECandidate.Proofs.BackendStages.BytePiecesData254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section254_eq : ByteData.bytes254 = [piece254_0, piece254_1].flatten := by
  rw [piece254_0_eq, piece254_1_eq]
  rfl
#print axioms section254_eq
end InitECandidate.Proofs.BackendStages.BytePieces
