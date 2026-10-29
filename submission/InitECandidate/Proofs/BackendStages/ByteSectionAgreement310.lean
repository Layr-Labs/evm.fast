import InitECandidate.Proofs.BackendStages.BytesData310
import InitECandidate.Proofs.BackendStages.BytePiecesData310
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section310_eq : ByteData.bytes310 = [piece310_0].flatten := by
  rw [piece310_0_eq]
  rfl
#print axioms section310_eq
end InitECandidate.Proofs.BackendStages.BytePieces
