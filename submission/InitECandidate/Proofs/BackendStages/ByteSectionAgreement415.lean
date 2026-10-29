import InitECandidate.Proofs.BackendStages.BytesData415
import InitECandidate.Proofs.BackendStages.BytePiecesData415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section415_eq : ByteData.bytes415 = [piece415_0].flatten := by
  rw [piece415_0_eq]
  rfl
#print axioms section415_eq
end InitECandidate.Proofs.BackendStages.BytePieces
