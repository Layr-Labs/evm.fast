import InitECandidate.Proofs.BackendStages.BytesData655
import InitECandidate.Proofs.BackendStages.BytePiecesData655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section655_eq : ByteData.bytes655 = [piece655_0, piece655_1, piece655_2].flatten := by
  rw [piece655_0_eq, piece655_1_eq, piece655_2_eq]
  rfl
#print axioms section655_eq
end InitECandidate.Proofs.BackendStages.BytePieces
