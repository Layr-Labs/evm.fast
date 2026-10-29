import InitECandidate.Proofs.BackendStages.BytesData640
import InitECandidate.Proofs.BackendStages.BytePiecesData640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section640_eq : ByteData.bytes640 = [piece640_0].flatten := by
  rw [piece640_0_eq]
  rfl
#print axioms section640_eq
end InitECandidate.Proofs.BackendStages.BytePieces
