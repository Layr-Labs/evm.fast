import InitECandidate.Proofs.BackendStages.BytesData770
import InitECandidate.Proofs.BackendStages.BytePiecesData770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section770_eq : ByteData.bytes770 = [piece770_0, piece770_1, piece770_2].flatten := by
  rw [piece770_0_eq, piece770_1_eq, piece770_2_eq]
  rfl
#print axioms section770_eq
end InitECandidate.Proofs.BackendStages.BytePieces
