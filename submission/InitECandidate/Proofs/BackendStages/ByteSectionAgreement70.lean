import InitECandidate.Proofs.BackendStages.BytesData70
import InitECandidate.Proofs.BackendStages.BytePiecesData70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section70_eq : ByteData.bytes70 = [piece70_0].flatten := by
  rw [piece70_0_eq]
  rfl
#print axioms section70_eq
end InitECandidate.Proofs.BackendStages.BytePieces
