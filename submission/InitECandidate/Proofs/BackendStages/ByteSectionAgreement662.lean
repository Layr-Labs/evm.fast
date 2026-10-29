import InitECandidate.Proofs.BackendStages.BytesData662
import InitECandidate.Proofs.BackendStages.BytePiecesData662
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section662_eq : ByteData.bytes662 = [piece662_0].flatten := by
  rw [piece662_0_eq]
  rfl
#print axioms section662_eq
end InitECandidate.Proofs.BackendStages.BytePieces
