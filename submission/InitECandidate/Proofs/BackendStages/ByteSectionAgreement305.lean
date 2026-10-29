import InitECandidate.Proofs.BackendStages.BytesData305
import InitECandidate.Proofs.BackendStages.BytePiecesData305
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section305_eq : ByteData.bytes305 = [piece305_0].flatten := by
  rw [piece305_0_eq]
  rfl
#print axioms section305_eq
end InitECandidate.Proofs.BackendStages.BytePieces
