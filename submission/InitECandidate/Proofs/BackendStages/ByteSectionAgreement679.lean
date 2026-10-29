import InitECandidate.Proofs.BackendStages.BytesData679
import InitECandidate.Proofs.BackendStages.BytePiecesData679
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section679_eq : ByteData.bytes679 = [piece679_0].flatten := by
  rw [piece679_0_eq]
  rfl
#print axioms section679_eq
end InitECandidate.Proofs.BackendStages.BytePieces
