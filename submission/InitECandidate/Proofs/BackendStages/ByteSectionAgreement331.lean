import InitECandidate.Proofs.BackendStages.BytesData331
import InitECandidate.Proofs.BackendStages.BytePiecesData331
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section331_eq : ByteData.bytes331 = [piece331_0].flatten := by
  rw [piece331_0_eq]
  rfl
#print axioms section331_eq
end InitECandidate.Proofs.BackendStages.BytePieces
