import InitECandidate.Proofs.BackendStages.BytesData561
import InitECandidate.Proofs.BackendStages.BytePiecesData561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section561_eq : ByteData.bytes561 = [piece561_0].flatten := by
  rw [piece561_0_eq]
  rfl
#print axioms section561_eq
end InitECandidate.Proofs.BackendStages.BytePieces
