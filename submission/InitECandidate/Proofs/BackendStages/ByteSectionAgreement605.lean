import InitECandidate.Proofs.BackendStages.BytesData605
import InitECandidate.Proofs.BackendStages.BytePiecesData605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section605_eq : ByteData.bytes605 = [piece605_0].flatten := by
  rw [piece605_0_eq]
  rfl
#print axioms section605_eq
end InitECandidate.Proofs.BackendStages.BytePieces
