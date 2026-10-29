import InitECandidate.Proofs.BackendStages.BytesData675
import InitECandidate.Proofs.BackendStages.BytePiecesData675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section675_eq : ByteData.bytes675 = [piece675_0].flatten := by
  rw [piece675_0_eq]
  rfl
#print axioms section675_eq
end InitECandidate.Proofs.BackendStages.BytePieces
