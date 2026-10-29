import InitECandidate.Proofs.BackendStages.BytesData613
import InitECandidate.Proofs.BackendStages.BytePiecesData613
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section613_eq : ByteData.bytes613 = [piece613_0].flatten := by
  rw [piece613_0_eq]
  rfl
#print axioms section613_eq
end InitECandidate.Proofs.BackendStages.BytePieces
