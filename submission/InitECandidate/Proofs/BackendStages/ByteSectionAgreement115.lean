import InitECandidate.Proofs.BackendStages.BytesData115
import InitECandidate.Proofs.BackendStages.BytePiecesData115
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section115_eq : ByteData.bytes115 = [piece115_0].flatten := by
  rw [piece115_0_eq]
  rfl
#print axioms section115_eq
end InitECandidate.Proofs.BackendStages.BytePieces
