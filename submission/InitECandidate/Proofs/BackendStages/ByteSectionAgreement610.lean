import InitECandidate.Proofs.BackendStages.BytesData610
import InitECandidate.Proofs.BackendStages.BytePiecesData610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section610_eq : ByteData.bytes610 = [piece610_0].flatten := by
  rw [piece610_0_eq]
  rfl
#print axioms section610_eq
end InitECandidate.Proofs.BackendStages.BytePieces
