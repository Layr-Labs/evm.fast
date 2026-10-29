import InitECandidate.Proofs.BackendStages.BytesData646
import InitECandidate.Proofs.BackendStages.BytePiecesData646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section646_eq : ByteData.bytes646 = [piece646_0, piece646_1].flatten := by
  rw [piece646_0_eq, piece646_1_eq]
  rfl
#print axioms section646_eq
end InitECandidate.Proofs.BackendStages.BytePieces
