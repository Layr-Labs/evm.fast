import InitECandidate.Proofs.BackendStages.BytesData234
import InitECandidate.Proofs.BackendStages.BytePiecesData234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section234_eq : ByteData.bytes234 = [piece234_0, piece234_1, piece234_2].flatten := by
  rw [piece234_0_eq, piece234_1_eq, piece234_2_eq]
  rfl
#print axioms section234_eq
end InitECandidate.Proofs.BackendStages.BytePieces
