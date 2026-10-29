import InitECandidate.Proofs.BackendStages.BytesData451
import InitECandidate.Proofs.BackendStages.BytePiecesData451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section451_eq : ByteData.bytes451 = [piece451_0].flatten := by
  rw [piece451_0_eq]
  rfl
#print axioms section451_eq
end InitECandidate.Proofs.BackendStages.BytePieces
