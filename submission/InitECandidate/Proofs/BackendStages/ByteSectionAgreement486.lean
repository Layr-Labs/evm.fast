import InitECandidate.Proofs.BackendStages.BytesData486
import InitECandidate.Proofs.BackendStages.BytePiecesData486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section486_eq : ByteData.bytes486 = [piece486_0].flatten := by
  rw [piece486_0_eq]
  rfl
#print axioms section486_eq
end InitECandidate.Proofs.BackendStages.BytePieces
