import InitECandidate.Proofs.BackendStages.BytesData265
import InitECandidate.Proofs.BackendStages.BytePiecesData265
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section265_eq : ByteData.bytes265 = [piece265_0, piece265_1].flatten := by
  rw [piece265_0_eq, piece265_1_eq]
  rfl
#print axioms section265_eq
end InitECandidate.Proofs.BackendStages.BytePieces
